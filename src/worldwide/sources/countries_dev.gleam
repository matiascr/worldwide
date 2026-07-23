//// Builds requests for, and decodes responses from,
//// [countries.dev](https://countries.dev): the one data source `worldwide`
//// currently supports. If that ever changes, a second source would get its
//// own sibling module here; callers shouldn't need to care which one is in
//// use, which is why `worldwide.request()`/`worldwide.decoder()` just
//// forward to this module today.

import gleam/dynamic/decode.{type Decoder, field, optional_field}
import gleam/http/request.{type Request}
import gleam/int
import gleam/list
import gleam/option.{None}
import gleam/result
import gleam/string
import gleam/time/duration.{type Duration}
import gleam/uri
import worldwide/calling_code
import worldwide/country.{type Country, Country}
import worldwide/currency
import worldwide/language
import worldwide/region.{type Region}
import worldwide/subregion.{type Subregion}

const countries_url = "https://countries.dev"

/// Returns the complete list of countries with all available fields.
@internal
pub fn all() -> Result(Request(String), Nil) {
  ["countries"]
  |> create_request()
}

/// Returns every country whose name contains the given value (case-insensitive).
@internal
pub fn by_name(name: String) -> Result(Request(String), Nil) {
  ["name", name]
  |> create_request()
}

/// Returns a single country matching the given ISO 3166-1 alpha-2 or alpha-3
/// code (case-insensitive).
@internal
pub fn by_iso_code(iso: String) -> Result(Request(String), Nil) {
  ["alpha", iso]
  |> create_request()
}

/// Returns the country matching the given ISO 3166-1 numeric code. Leading
/// zeros are optional.
@internal
pub fn by_numeric_code(code: String) -> Result(Request(String), Nil) {
  ["numericcode", code]
  |> create_request()
}

/// Returns the country matching the given International Olympic Committee (IOC)
/// country code.
@internal
pub fn by_ioc_code(ioc: String) -> Result(Request(String), Nil) {
  ["cioc", ioc]
  |> create_request()
}

/// Returns every country in the given region (exact match, case-insensitive).
@internal
pub fn by_region(region: Region) -> Result(Request(String), Nil) {
  ["region", region.to_string(region)]
  |> create_request()
}

/// Returns every country in the given subregion (exact match, case-insensitive).
@internal
pub fn by_subregion(subregion: Subregion) -> Result(Request(String), Nil) {
  ["subregion", subregion.to_string(subregion)]
  |> create_request()
}

/// Returns every country that uses the given ISO 4217 currency code (case-insensitive).
@internal
pub fn by_currency(currency: String) -> Result(Request(String), Nil) {
  ["currency", currency]
  |> create_request()
}

/// Returns every country that has the given language, matched by ISO 639-1
/// (`he`) or ISO 639-2 (`heb`) code.
@internal
pub fn by_language(language: String) -> Result(Request(String), Nil) {
  ["language", language]
  |> create_request()
}

/// Returns every country that uses the given international calling code.
@internal
pub fn by_calling_code(code: Int) -> Result(Request(String), Nil) {
  ["callingcode", int.to_string(code)]
  |> create_request()
}

/// Returns every country that observes the given UTC timezone (exact match,
/// case-insensitive).
@internal
pub fn by_timezone(timezone: String) -> Result(Request(String), Nil) {
  ["timezone", timezone]
  |> create_request()
}

fn create_request(dest: List(String)) -> Result(Request(String), Nil) {
  dest
  |> list.map(uri.percent_encode)
  |> list.prepend(countries_url)
  |> string.join("/")
  |> request.to()
  |> result.map(set_headers)
  |> result.map(set_parameters)
}

/// The fields to request from [countries.dev](https://countries.dev).
const request_fields = "name,alpha2Code,alpha3Code,"
  <> "numericCode,region,subregion,capital,"
  <> "currencies,languages,callingCodes,timezones"

const query_parameters = [
  #("fields", request_fields),
  #("sort", "name"),
]

fn set_parameters(req: Request(String)) -> Request(String) {
  req |> request.set_query(query_parameters)
}

fn set_headers(req: Request(String)) -> Request(String) {
  req
  |> request.set_header("accept", "application/json")
  |> request.set_header("user-agent", "worldwide/3.0")
}

/// Decodes a countries.dev JSON response body into a list of `Country`.
@internal
pub fn decoder() -> Decoder(List(Country)) {
  decode.list(country_decoder())
}

fn country_decoder() -> Decoder(Country) {
  use name <- field("name", string_or_empty())
  use alpha2 <- field("alpha2Code", string_or_empty())
  use alpha3 <- field("alpha3Code", string_or_empty())
  use numeric <- field("numericCode", string_or_empty())
  use region <- field("region", region.decoder())
  use subregion <- field("subregion", subregion.decoder())
  use capital <- optional_field("capital", None, decode.optional(decode.string))
  use currencies <- optional_list("currencies", currency.decoder())
  use languages <- optional_list("languages", language.decoder())
  use calling_codes <- optional_list("callingCodes", calling_code.decoder())
  use timezones <- optional_list("timezones", duration_decoder())

  Country(
    name:,
    alpha2:,
    alpha3:,
    numeric:,
    region:,
    subregion:,
    capital: capital,
    currencies:,
    languages:,
    calling_codes:,
    timezones:,
  )
  |> decode.success
}

fn optional_list(
  name: String,
  decoder: Decoder(a),
  callback: fn(List(a)) -> Decoder(b),
) -> Decoder(b) {
  optional_field(name, [], list_or_empty(decoder), callback)
}

fn string_or_empty() -> Decoder(String) {
  use value <- decode.map(decode.optional(decode.string))
  option.unwrap(value, "")
}

fn list_or_empty(inner: Decoder(a)) -> Decoder(List(a)) {
  use decoded_list <- decode.map(decode.optional(decode.list(inner)))
  option.unwrap(decoded_list, [])
}

/// Decodes a timezone as returned by countries.dev (a fixed UTC offset in
/// `"UTC+HH:MM"` form), into a `Duration`. Kept here rather than in a type
/// module of its own, since `Duration` comes from `gleam_time` and this
/// string form is specific to countries.dev.
fn duration_decoder() -> Decoder(Duration) {
  use raw <- decode.then(decode.string)
  case duration_from_raw(raw) {
    Ok(duration) -> decode.success(duration)
    Error(Nil) -> decode.failure(duration.seconds(0), "Duration")
  }
}

fn duration_from_raw(raw: String) -> Result(Duration, Nil) {
  case string.split(raw, "UTC") {
    ["", ""] -> Ok(duration.seconds(0))
    ["", offset] -> duration_offset(offset)
    _ -> Error(Nil)
  }
}

fn duration_offset(offset: String) -> Result(Duration, Nil) {
  case string.slice(offset, 0, 1) {
    "+" -> duration_parts(1, string.drop_start(offset, 1))
    "-" -> duration_parts(-1, string.drop_start(offset, 1))
    _ -> Error(Nil)
  }
}

fn duration_parts(sign: Int, time: String) -> Result(Duration, Nil) {
  case string.split(time, ":") {
    [hours, minutes] -> {
      use hours <- result.try(int.parse(hours))
      use minutes <- result.try(int.parse(minutes))
      Ok(duration.minutes(sign * { hours * 60 + minutes }))
    }
    _ -> Error(Nil)
  }
}
