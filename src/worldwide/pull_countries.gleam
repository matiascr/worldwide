//// Fetches the current [countries.dev](https://countries.dev) country list
//// and writes it to `data/worldwide_countries.json` in *your* project -
//// `worldwide` itself does not ship any data, so this is the only way to get
//// it. `worldwide.all()` (and other lookups) read this file at runtime.
////
//// Run with `gleam run -m worldwide/pull_countries` any time you want to
//// refresh the data. The file belongs to your project: commit it, and
//// re-run the command whenever you want fresher data, independent of
//// whatever `worldwide` version you depend on.
////
//// `gleam run -m worldwide/pull_countries check` re-fetches the data and
//// reports whether your generated file is stale, without writing anything -
//// useful as a CI step.

import argv
import filepath
import gleam/dynamic/decode.{type Decoder}
@target(javascript)
import gleam/fetch
import gleam/http/request.{type Request}
@target(erlang)
import gleam/httpc
import gleam/int
import gleam/io
@target(javascript)
import gleam/javascript/promise.{type Promise}
import gleam/json.{type Json}
import gleam/list
import gleam/option.{type Option, None}
import gleam/result
import gleam/string
import simplifile
import worldwide/internal/project

const countries_url = "https://countries.dev/countries?fields=name,alpha2Code,alpha3Code,numericCode,region,subregion,capital,currencies,languages,callingCodes,timezones&sort=name"

const data_path = "data/worldwide_countries.json"

/// Paths written by older `worldwide` versions that are no longer used.
/// Cleaned up after a successful generate so upgrading doesn't leave stale
/// files lying around.
const legacy_paths = ["data/countries.csv"]

const user_agent = "worldwide_generator/1.0"

type Mode {
  Generate
  Check
}

type GeneratedCountry {
  GeneratedCountry(
    name: String,
    alpha2: String,
    alpha3: String,
    numeric: String,
    region: String,
    subregion: String,
    capital: String,
    currencies: List(GeneratedCurrency),
    languages: List(GeneratedLanguage),
    calling_codes: List(String),
    timezones: List(String),
  )
}

type GeneratedCurrency {
  GeneratedCurrency(code: String, name: String, symbol: String)
}

type GeneratedLanguage {
  GeneratedLanguage(name: String, iso639_1: String, native_name: String)
}

type NormalizedCountry {
  NormalizedCountry(
    name: String,
    alpha2: String,
    alpha3: String,
    numeric: String,
    region: String,
    subregion: Option(String),
    capital: String,
    currencies: List(NormalizedCurrency),
    languages: List(NormalizedLanguage),
    calling_codes: List(String),
    timezones: List(Int),
  )
}

type NormalizedCurrency {
  NormalizedCurrency(code: String, name: String, symbol: String)
}

type NormalizedLanguage {
  NormalizedLanguage(name: String, iso639_1: String, native_name: String)
}

pub fn main() {
  case argv.load().arguments {
    [] -> run(Generate)
    ["check"] -> run(Check)
    _ -> panic as "Usage: gleam run -m worldwide/pull_countries [check]"
  }
}

@target(erlang)
fn run(mode: Mode) -> Nil {
  fetch_countries()
  |> generate_from_fetch(mode)
  |> report_result()
}

@target(javascript)
fn run(mode: Mode) {
  use fetched <- promise.map(fetch_countries())
  fetched
  |> generate_from_fetch(mode)
  |> report_result()
}

fn generate_from_fetch(
  fetched: Result(String, String),
  mode: Mode,
) -> Result(String, String) {
  use body <- result.try(fetched)
  generate_from_body(body, mode)
}

fn report_result(result: Result(String, String)) -> Nil {
  case result {
    Ok(message) -> io.println(message)
    Error(msg) -> {
      let message = "worldwide/pull_countries failed: " <> msg
      panic as message
    }
  }
}

fn generate_from_body(body: String, mode: Mode) -> Result(String, String) {
  use countries <- result.try(decode_countries(body))
  let content = encode_countries(countries)
  let root = project.root()
  let path = filepath.join(root, data_path)

  case mode {
    Generate -> write_and_report(root, path, content, list.length(countries))
    Check -> check_and_report(path, content)
  }
}

fn write_and_report(
  root: String,
  path: String,
  content: String,
  count: Int,
) -> Result(String, String) {
  use _ <- result.try(write_file(path, content))
  let removed = cleanup_legacy_files(root)
  Ok(
    "Fetched "
    <> int.to_string(count)
    <> " countries, wrote "
    <> path
    <> describe_removed(removed),
  )
}

/// Deletes any files written by older, now-unused `worldwide` generator
/// versions. Best-effort: a file that's missing or can't be removed is
/// silently skipped, since it's cleanup, not a requirement for success.
fn cleanup_legacy_files(root: String) -> List(String) {
  legacy_paths
  |> list.map(fn(legacy_path) { filepath.join(root, legacy_path) })
  |> list.filter(fn(path) {
    case simplifile.delete(path) {
      Ok(_) -> True
      Error(_) -> False
    }
  })
}

fn describe_removed(removed: List(String)) -> String {
  case removed {
    [] -> ""
    _ -> ", removed unused " <> string.join(removed, ", ")
  }
}

fn write_file(path: String, content: String) -> Result(Nil, String) {
  use _ <- result.try(case simplifile.create_file(path) {
    Ok(_) -> Ok(Nil)
    Error(_) -> {
      let _ = simplifile.create_directory_all(filepath.directory_name(path))
      let _ = simplifile.create_file(path)
      Ok(Nil)
    }
  })
  simplifile.write(path, content)
  |> result.map_error(fn(e) { "write " <> path <> ": " <> string.inspect(e) })
}

fn check_and_report(path: String, content: String) -> Result(String, String) {
  case simplifile.read(path) {
    Ok(existing) if existing == content -> Ok(path <> " is up to date")
    Ok(_) ->
      panic as {
        "worldwide/pull_countries: "
        <> path
        <> " is out of date\nrun `gleam run -m worldwide/pull_countries` to refresh"
      }
    Error(_) ->
      panic as {
        "worldwide/pull_countries: "
        <> path
        <> " is missing\nrun `gleam run -m worldwide/pull_countries` to generate it"
      }
  }
}

@target(erlang)
fn fetch_countries() -> Result(String, String) {
  use req <- result.try(new_request())

  use response <- result.try(
    httpc.configure()
    |> httpc.follow_redirects(True)
    |> httpc.timeout(60_000)
    |> httpc.dispatch(req)
    |> result.map_error(fn(e) {
      "GET " <> countries_url <> " failed: " <> string.inspect(e)
    }),
  )

  response_to_result(response.status, response.body)
}

@target(javascript)
fn fetch_countries() -> Promise(Result(String, String)) {
  case new_request() {
    Error(error) -> promise.resolve(Error(error))
    Ok(req) ->
      fetch.send(req)
      |> promise.try_await(fetch.read_text_body)
      |> promise.map(fn(result) {
        case result {
          Error(error) ->
            Error(
              "GET " <> countries_url <> " failed: " <> string.inspect(error),
            )
          Ok(response) -> response_to_result(response.status, response.body)
        }
      })
  }
}

fn new_request() -> Result(Request(String), String) {
  request.to(countries_url)
  |> result.map_error(fn(_) { "invalid countries.dev URL" })
  |> result.map(fn(req) {
    req
    |> request.set_header("accept", "application/json")
    |> request.set_header("user-agent", user_agent)
  })
}

fn response_to_result(status: Int, body: String) -> Result(String, String) {
  case status >= 200 && status < 300 {
    True -> Ok(body)
    False ->
      Error(
        "GET "
        <> countries_url
        <> " returned HTTP "
        <> int.to_string(status)
        <> ": "
        <> body,
      )
  }
}

fn decode_countries(json_body: String) -> Result(List(NormalizedCountry), String) {
  json.parse(json_body, decode.list(country_decoder()))
  |> result.map(list.map(_, normalize_country))
  |> result.map_error(fn(e) {
    "decode countries.dev response: " <> string.inspect(e)
  })
}

fn country_decoder() -> Decoder(GeneratedCountry) {
  use name <- decode.field("name", string_or_empty())
  use alpha2 <- decode.field("alpha2Code", string_or_empty())
  use alpha3 <- decode.field("alpha3Code", string_or_empty())
  use numeric <- decode.field("numericCode", string_or_empty())
  use region <- decode.field("region", string_or_empty())
  use subregion <- decode.field("subregion", string_or_empty())
  use capital <- decode.optional_field("capital", "", string_or_empty())
  use currencies <- decode.optional_field(
    "currencies",
    [],
    list_or_empty(currency_decoder()),
  )
  use languages <- decode.optional_field(
    "languages",
    [],
    list_or_empty(language_decoder()),
  )
  use calling_codes <- decode.optional_field(
    "callingCodes",
    [],
    list_or_empty(string_or_empty()),
  )
  use timezones <- decode.optional_field(
    "timezones",
    [],
    list_or_empty(string_or_empty()),
  )
  decode.success(GeneratedCountry(
    name:,
    alpha2:,
    alpha3:,
    numeric:,
    region:,
    subregion:,
    capital:,
    currencies:,
    languages:,
    calling_codes:,
    timezones:,
  ))
}

fn currency_decoder() -> Decoder(GeneratedCurrency) {
  use code <- decode.optional_field("code", "", string_or_empty())
  use name <- decode.optional_field("name", "", string_or_empty())
  use symbol <- decode.optional_field("symbol", "", string_or_empty())
  decode.success(GeneratedCurrency(code:, name:, symbol:))
}

fn language_decoder() -> Decoder(GeneratedLanguage) {
  use name <- decode.optional_field("name", "", string_or_empty())
  use iso639_1 <- decode.optional_field("iso639_1", "", string_or_empty())
  use native_name <- decode.optional_field("nativeName", "", string_or_empty())
  decode.success(GeneratedLanguage(name:, iso639_1:, native_name:))
}

fn string_or_empty() -> Decoder(String) {
  use value <- decode.map(decode.optional(decode.string))
  option.unwrap(value, "")
}

fn list_or_empty(inner: Decoder(a)) -> Decoder(List(a)) {
  use decoded_list <- decode.map(decode.optional(decode.list(inner)))
  option.unwrap(decoded_list, [])
}

fn normalize_country(country: GeneratedCountry) -> NormalizedCountry {
  NormalizedCountry(
    name: country.name,
    alpha2: country.alpha2,
    alpha3: country.alpha3,
    numeric: country.numeric,
    region: normalize_region(country.region),
    subregion: normalize_subregion(country.subregion),
    capital: country.capital,
    currencies: list.map(country.currencies, fn(currency) {
      NormalizedCurrency(
        code: currency.code,
        name: currency.name,
        symbol: currency.symbol,
      )
    }),
    languages: list.map(country.languages, fn(language) {
      NormalizedLanguage(
        name: language.name,
        iso639_1: language.iso639_1,
        native_name: language.native_name,
      )
    }),
    calling_codes: country.calling_codes,
    timezones: list.map(country.timezones, timezone_minutes),
  )
}

fn normalize_region(region: String) -> String {
  case region {
    "Africa"
    | "Americas"
    | "Antarctic"
    | "Asia"
    | "Europe"
    | "Oceania"
    | "Polar" -> region

    "Antarctic Ocean" -> "AntarcticOcean"

    _ -> {
      let message = "tried to generate data for region " <> region
      panic as message
    }
  }
}

fn normalize_subregion(subregion: String) -> Option(String) {
  case subregion {
    "" -> {
      let message = "tried to generate data for subregion " <> subregion
      panic as message
    }
    "Antarctic" -> None
    subregion -> {
      let lowercase_subregion = string.lowercase(subregion)
      case
        string.starts_with(lowercase_subregion, "north")
        && string.ends_with(lowercase_subregion, "america")
      {
        True -> "North America"
        False -> subregion
      }
      |> string.trim()
      |> string.replace("-", " ")
      |> string.split(" ")
      |> list.map(string.capitalise)
      |> list.map(string.trim)
      |> string.concat()
      |> string.to_option()
    }
  }
}

fn timezone_minutes(timezone: String) -> Int {
  case string.split(timezone, "UTC") {
    ["", ""] -> 0
    ["", offset] -> timezone_offset_minutes(timezone, offset)
    _ -> {
      let message = "tried to generate data for timezone " <> timezone
      panic as message
    }
  }
}

fn timezone_offset_minutes(timezone: String, offset: String) -> Int {
  case string.slice(offset, 0, 1) {
    "+" -> timezone_parts_minutes(timezone, 1, string.drop_start(offset, 1))
    "-" -> timezone_parts_minutes(timezone, -1, string.drop_start(offset, 1))
    _ -> {
      let message = "tried to generate data for timezone " <> timezone
      panic as message
    }
  }
}

fn timezone_parts_minutes(timezone: String, sign: Int, time: String) -> Int {
  case string.split(time, ":") {
    [hours, minutes] ->
      case int.parse(hours), int.parse(minutes) {
        Ok(hours), Ok(minutes) -> sign * { hours * 60 + minutes }
        _, _ -> {
          let message = "tried to generate data for timezone " <> timezone
          panic as message
        }
      }
    _ -> {
      let message = "tried to generate data for timezone " <> timezone
      panic as message
    }
  }
}

fn encode_countries(countries: List(NormalizedCountry)) -> String {
  countries
  |> json.array(encode_country)
  |> json.to_string()
}

fn encode_country(country: NormalizedCountry) -> Json {
  json.object([
    #("name", json.string(country.name)),
    #("alpha2", json.string(country.alpha2)),
    #("alpha3", json.string(country.alpha3)),
    #("numeric", json.string(country.numeric)),
    #("region", json.string(country.region)),
    #("subregion", json.nullable(country.subregion, json.string)),
    #("capital", encode_capital(country.capital)),
    #("currencies", json.array(country.currencies, encode_currency)),
    #("languages", json.array(country.languages, encode_language)),
    #("calling_codes", json.array(country.calling_codes, json.string)),
    #("timezones", json.array(country.timezones, json.int)),
  ])
}

fn encode_capital(raw: String) -> Json {
  case raw {
    "" -> json.null()
    name -> json.string(name)
  }
}

fn encode_currency(currency: NormalizedCurrency) -> Json {
  json.object([
    #("code", json.string(currency.code)),
    #("name", json.string(currency.name)),
    #("symbol", json.string(currency.symbol)),
  ])
}

fn encode_language(language: NormalizedLanguage) -> Json {
  json.object([
    #("name", json.string(language.name)),
    #("iso639_1", json.string(language.iso639_1)),
    #("native_name", json.string(language.native_name)),
  ])
}
