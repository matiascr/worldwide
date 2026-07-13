//// Fetches the current countries.dev country list, snapshots it to
//// `data/countries.csv`, and writes the generated
//// `src/worldwide/internal/gen/country.gleam` module.
//// Run with `gleam run -m worldwide/pull_countries`.

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
import gleam/json
import gleam/list
import gleam/option.{None, Some}
import gleam/result
import gleam/string
import simplifile

const countries_url = "https://countries.dev/countries?fields=name,alpha2Code,alpha3Code,numericCode,region,capital,currencies,languages,callingCodes,timezones&sort=name"

const csv_path = "data/countries.csv"

const country_out_path = "src/worldwide/internal/gen/country.gleam"

const user_agent = "countries_gleam_generator/1.0"

type SourceCountry {
  SourceCountry(
    name: String,
    alpha2: String,
    alpha3: String,
    numeric: String,
    region: String,
    capital: String,
    currencies: List(SourceCurrency),
    languages: List(SourceLanguage),
    calling_codes: List(String),
    timezones: List(String),
  )
}

type SourceCurrency {
  SourceCurrency(code: String, name: String, symbol: String)
}

type SourceLanguage {
  SourceLanguage(name: String, iso639_1: String, native_name: String)
}

type CountryRow {
  CountryRow(
    name: String,
    alpha2: String,
    alpha3: String,
    numeric: String,
    region: String,
    capital: String,
    currencies: List(CurrencyRow),
    languages: List(LanguageRow),
    calling_codes: List(String),
    timezones: List(String),
  )
}

type CurrencyRow {
  CurrencyRow(code: String, name: String, symbol: String)
}

type LanguageRow {
  LanguageRow(name: String, iso639_1: String, native_name: String)
}

pub fn main() {
  run()
}

@target(erlang)
fn run() {
  fetch_countries()
  |> generate_from_fetch()
  |> report_result()
}

@target(javascript)
fn run() {
  fetch_countries()
  |> promise.map(fn(fetched) {
    fetched
    |> generate_from_fetch()
    |> report_result()
  })
}

fn generate_from_fetch(fetched: Result(String, String)) -> Result(Int, String) {
  use body <- result.try(fetched)
  generate_from_body(body)
}

fn report_result(result: Result(Int, String)) {
  case result {
    Ok(count) ->
      io.println(
        "Fetched "
        <> int.to_string(count)
        <> " countries, wrote "
        <> csv_path
        <> ", "
        <> "and "
        <> country_out_path,
      )
    Error(msg) -> {
      let message = "worldwide/pull_countries failed: " <> msg
      panic as message
    }
  }
}

fn generate_from_body(body: String) -> Result(Int, String) {
  use rows <- result.try(decode_countries(body))
  let csv = render_csv(rows)
  use _ <- result.try(
    simplifile.write(csv_path, csv)
    |> result.map_error(fn(e) {
      "write " <> csv_path <> ": " <> string.inspect(e)
    }),
  )
  let module = render_country_module(rows)
  use _ <- result.try(
    simplifile.write(country_out_path, module)
    |> result.map_error(fn(e) {
      "write " <> country_out_path <> ": " <> string.inspect(e)
    }),
  )
  Ok(list.length(rows))
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

fn decode_countries(json_body: String) -> Result(List(CountryRow), String) {
  json.parse(json_body, decode.list(country_decoder()))
  |> result.map(list.map(_, normalize_country))
  |> result.map_error(fn(e) {
    "decode countries.dev response: " <> string.inspect(e)
  })
}

fn country_decoder() -> Decoder(SourceCountry) {
  use name <- decode.field("name", string_or_empty())
  use alpha2 <- decode.field("alpha2Code", string_or_empty())
  use alpha3 <- decode.field("alpha3Code", string_or_empty())
  use numeric <- decode.field("numericCode", string_or_empty())
  use region <- decode.field("region", string_or_empty())
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
  decode.success(SourceCountry(
    name:,
    alpha2:,
    alpha3:,
    numeric:,
    region:,
    capital:,
    currencies:,
    languages:,
    calling_codes:,
    timezones:,
  ))
}

fn currency_decoder() -> Decoder(SourceCurrency) {
  use code <- decode.optional_field("code", "", string_or_empty())
  use name <- decode.optional_field("name", "", string_or_empty())
  use symbol <- decode.optional_field("symbol", "", string_or_empty())
  decode.success(SourceCurrency(code:, name:, symbol:))
}

fn language_decoder() -> Decoder(SourceLanguage) {
  use name <- decode.optional_field("name", "", string_or_empty())
  use iso639_1 <- decode.optional_field("iso639_1", "", string_or_empty())
  use native_name <- decode.optional_field("nativeName", "", string_or_empty())
  decode.success(SourceLanguage(name:, iso639_1:, native_name:))
}

fn string_or_empty() -> Decoder(String) {
  decode.one_of(decode.string, [
    decode.optional(decode.string)
    |> decode.map(fn(value) {
      case value {
        Some(text) -> text
        None -> ""
      }
    }),
  ])
}

fn list_or_empty(inner: Decoder(a)) -> Decoder(List(a)) {
  decode.one_of(decode.list(inner), [
    decode.optional(decode.list(inner))
    |> decode.map(fn(value) {
      case value {
        Some(items) -> items
        None -> []
      }
    }),
  ])
}

fn normalize_country(country: SourceCountry) -> CountryRow {
  CountryRow(
    name: country.name,
    alpha2: country.alpha2,
    alpha3: country.alpha3,
    numeric: country.numeric,
    region: normalize_region(country.region),
    capital: country.capital,
    currencies: list.map(country.currencies, fn(currency) {
      CurrencyRow(
        code: currency.code,
        name: currency.name,
        symbol: currency.symbol,
      )
    }),
    languages: list.map(country.languages, fn(language) {
      LanguageRow(
        name: language.name,
        iso639_1: language.iso639_1,
        native_name: language.native_name,
      )
    }),
    calling_codes: country.calling_codes,
    timezones: country.timezones,
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
      let message = "tried to generate code for " <> region
      panic as message
    }
  }
}

fn render_csv(rows: List(CountryRow)) -> String {
  let header =
    "name,alpha2,alpha3,numeric,region,capital,currencies,languages,calling_codes,timezones"

  [header, ..list.map(rows, render_csv_row)]
  |> string.join("\n")
  |> string.append("\n")
}

fn render_csv_row(row: CountryRow) -> String {
  [
    row.name,
    row.alpha2,
    row.alpha3,
    row.numeric,
    row.region,
    row.capital,
    render_currency_cell(row.currencies),
    render_language_cell(row.languages),
    string.join(row.calling_codes, ";"),
    string.join(row.timezones, ";"),
  ]
  |> list.map(csv_escape)
  |> string.join(",")
}

fn render_currency_cell(currencies: List(CurrencyRow)) -> String {
  currencies
  |> list.map(fn(currency) {
    string.join([currency.code, currency.name, currency.symbol], "|")
  })
  |> string.join(";")
}

fn render_language_cell(languages: List(LanguageRow)) -> String {
  languages
  |> list.map(fn(language) {
    string.join([language.name, language.iso639_1, language.native_name], "|")
  })
  |> string.join(";")
}

fn csv_escape(cell: String) -> String {
  let clean =
    cell
    |> string.replace("\r", " ")
    |> string.replace("\n", " ")

  case
    string.contains(clean, ",")
    || string.contains(clean, "\"")
    || string.contains(clean, "\n")
    || string.contains(clean, "\r")
  {
    True -> "\"" <> string.replace(clean, "\"", "\"\"") <> "\""
    False -> clean
  }
}

fn render_country_module(rows: List(CountryRow)) -> String {
  let header =
    "//// Generated country data.\n////\n"
    <> "//// Regenerate from countries.dev with `gleam run -m worldwide/pull_countries`.\n\n"
    <> "// GENERATED FILE - do not edit by hand.\n"
    <> "//\n\n"
    <> "import worldwide/currency.{Currency}\n"
    <> "import worldwide/region.{\n  Africa, Americas, Antarctic, AntarcticOcean, Asia, Europe, Oceania, Polar\n}\n\n"
    <> "import gleam/option.{None, Some}\n"
    <> "import gleam/string\n"
    <> "import gleam/time/duration\n\n"

  header
  <> render_countries_function(rows)
  <> "\n"
  <> render_country_from_iso_code_function(rows)
  <> "\n"
  <> render_country_from_alpha2_function(rows)
  <> "\n"
  <> render_country_from_name_function(rows)
  <> "\n"
  <> render_country_literal_functions(rows)
  <> "\n"
  <> render_normalize_function()
}

fn render_countries_function(rows: List(CountryRow)) -> String {
  "/// Return every known country in countries.dev name order.\n"
  <> "@internal\n"
  <> "pub fn all() {\n"
  <> "  [\n"
  <> {
    rows
    |> list.map(fn(row) { "    " <> country_fn_name(row) <> "(),\n" })
    |> string.join("")
  }
  <> "  ]\n"
  <> "}\n"
}

fn render_country_from_alpha2_function(rows: List(CountryRow)) -> String {
  "/// Look up a country by normalized alpha-2 code.\n"
  <> "@internal\n"
  <> "pub fn from_alpha2(alpha2: String) {\n"
  <> "  case normalize(alpha2) {\n"
  <> {
    rows
    |> list.map(fn(row) {
      "    "
      <> quote(row.alpha2)
      <> " -> Ok("
      <> country_fn_name(row)
      <> "())\n"
    })
    |> string.join("")
  }
  <> "    _ -> Error(Nil)\n"
  <> "  }\n"
  <> "}\n"
}

fn render_country_from_iso_code_function(rows: List(CountryRow)) -> String {
  "/// Look up a country by normalized alpha-2, alpha-3, or numeric code.\n"
  <> "@internal\n"
  <> "pub fn from_iso_code(code: String) {\n"
  <> "  case normalize(code) {\n"
  <> {
    rows
    |> list.map(fn(row) {
      "    "
      <> quote(row.alpha2)
      <> " -> Ok("
      <> country_fn_name(row)
      <> "())\n"
      <> "    "
      <> quote(row.alpha3)
      <> " -> Ok("
      <> country_fn_name(row)
      <> "())\n"
      <> "    "
      <> quote(row.numeric)
      <> " -> Ok("
      <> country_fn_name(row)
      <> "())\n"
    })
    |> string.join("")
  }
  <> "    _ -> Error(Nil)\n"
  <> "  }\n"
  <> "}\n"
}

fn render_country_from_name_function(rows: List(CountryRow)) -> String {
  "/// Look up a country by exact common English name.\n"
  <> "@internal\n"
  <> "pub fn from_name(name: String) {\n"
  <> "  case string.trim(name) {\n"
  <> {
    rows
    |> list.map(fn(row) {
      "    " <> quote(row.name) <> " -> Ok(" <> country_fn_name(row) <> "())\n"
    })
    |> string.join("")
  }
  <> "    _ -> Error(Nil)\n"
  <> "  }\n"
  <> "}\n"
}

fn render_normalize_function() -> String {
  "fn normalize(value: String) -> String {\n"
  <> "  value\n"
  <> "  |> string.trim()\n"
  <> "  |> string.uppercase()\n"
  <> "}\n"
}

fn render_country_literal_functions(rows: List(CountryRow)) -> String {
  rows
  |> list.map(fn(row) {
    "fn "
    <> country_fn_name(row)
    <> "() {\n"
    <> render_country_literal(row, "  ")
    <> "}\n"
  })
  |> string.join("\n")
}

fn country_fn_name(row: CountryRow) -> String {
  "country_" <> string.lowercase(row.alpha2)
}

fn render_country_literal(row: CountryRow, indent: String) -> String {
  "#(\n"
  <> indent
  <> quote(row.name)
  <> ",\n"
  <> indent
  <> quote(row.alpha2)
  <> ",\n"
  <> indent
  <> quote(row.alpha3)
  <> ",\n"
  <> indent
  <> quote(row.numeric)
  <> ",\n"
  <> indent
  <> render_region(row.region)
  <> ",\n"
  <> indent
  <> render_capital(row.capital)
  <> ",\n"
  <> indent
  <> render_currencies(row.currencies)
  <> ",\n"
  <> indent
  <> render_languages(row.languages)
  <> ",\n"
  <> indent
  <> render_str_list(row.calling_codes)
  <> ",\n"
  <> indent
  <> render_timezones(row.timezones)
  <> ",\n"
  <> string.drop_end(indent, 2)
  <> ")\n"
}

fn render_region(raw: String) -> String {
  case string.split(raw, "|") {
    [bare] -> bare
    _ -> "Other(" <> quote(raw) <> ")"
  }
}

fn render_capital(raw: String) -> String {
  case raw {
    "" -> "None"
    name -> "Some(" <> quote(name) <> ")"
  }
}

fn render_currencies(currencies: List(CurrencyRow)) -> String {
  currencies
  |> list.map(fn(currency) {
    "Currency(code: "
    <> quote(currency.code)
    <> ", name: "
    <> quote(currency.name)
    <> ", symbol: "
    <> quote(currency.symbol)
    <> ")"
  })
  |> wrap_list()
}

fn render_languages(languages: List(LanguageRow)) -> String {
  languages
  |> list.map(fn(language) {
    "#("
    <> quote(language.name)
    <> ", "
    <> quote(language.iso639_1)
    <> ", "
    <> quote(language.native_name)
    <> ")"
  })
  |> wrap_list()
}

fn render_timezones(timezones: List(String)) -> String {
  timezones
  |> list.map(render_timezone)
  |> wrap_list()
}

fn render_timezone(timezone: String) -> String {
  case string.split(timezone, "UTC") {
    ["", ""] -> "duration.empty"
    ["", offset] -> render_timezone_offset(timezone, offset)
    _ -> {
      let message = "tried to generate code for timezone " <> timezone
      panic as message
    }
  }
}

fn render_timezone_offset(timezone: String, offset: String) -> String {
  case string.slice(offset, 0, 1) {
    "+" -> render_timezone_parts(timezone, 1, string.drop_start(offset, 1))
    "-" -> render_timezone_parts(timezone, -1, string.drop_start(offset, 1))
    _ -> {
      let message = "tried to generate code for timezone " <> timezone
      panic as message
    }
  }
}

fn render_timezone_parts(timezone: String, sign: Int, time: String) -> String {
  case string.split(time, ":") {
    [hours, minutes] ->
      case int.parse(hours), int.parse(minutes) {
        Ok(hours), Ok(minutes) ->
          render_duration_offset(sign * hours, sign * minutes)
        _, _ -> {
          let message = "tried to generate code for timezone " <> timezone
          panic as message
        }
      }
    _ -> {
      let message = "tried to generate code for timezone " <> timezone
      panic as message
    }
  }
}

fn render_duration_offset(hours: Int, minutes: Int) -> String {
  case hours, minutes {
    0, 0 -> "duration.empty"
    _, 0 -> "duration.hours(" <> int.to_string(hours) <> ")"
    0, _ -> "duration.minutes(" <> int.to_string(minutes) <> ")"
    _, _ ->
      "duration.add(duration.hours("
      <> int.to_string(hours)
      <> "), duration.minutes("
      <> int.to_string(minutes)
      <> "))"
  }
}

fn render_str_list(items: List(String)) -> String {
  items
  |> list.map(quote)
  |> wrap_list()
}

fn wrap_list(items: List(String)) -> String {
  "[" <> string.join(items, ", ") <> "]"
}

fn quote(s: String) -> String {
  let escaped =
    s
    |> string.replace("\\", "\\\\")
    |> string.replace("\"", "\\\"")
  "\"" <> escaped <> "\""
}
