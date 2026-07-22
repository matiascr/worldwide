//// The `Country` type, and lookups over it.
////
//// `worldwide` ships no country data itself: run
//// `gleam run -m worldwide/pull_countries` in your own project to generate
//// `data/worldwide_countries.json`. The functions below read that file the
//// first time they are used and panic with instructions if it isn't there
//// yet.

import filepath
import gleam/dynamic/decode.{type Decoder}
import gleam/json
import gleam/list
import gleam/option.{type Option}
import gleam/result
import gleam/string
import gleam/time/duration.{type Duration}
import global_value
import simplifile
import worldwide/currency.{type Currency, Currency}
import worldwide/internal/project
import worldwide/language.{type Language, Language}
import worldwide/region.{type Region, type Subregion}

/// A `Country` record.
pub type Country {
  Country(
    /// Common English name, e.g. "Spain".
    name: String,
    /// ISO 3166-1 alpha-2 code, uppercase, e.g. "ES".
    alpha2: String,
    /// ISO 3166-1 alpha-3 code, uppercase, e.g. "ESP".
    alpha3: String,
    /// ISO 3166-1 numeric code as a zero-padded string, e.g. "724".
    numeric: String,
    /// Continental region.
    region: Region,
    /// Continental subregion.
    subregion: Option(Subregion),
    /// Capital city, if the country has one.
    capital: Option(String),
    /// Currencies in use, primary first. May be empty.
    currencies: List(Currency),
    /// Official / common languages. May be empty.
    languages: List(Language),
    /// International dialing prefixes, e.g. ["34"]. May be empty.
    calling_codes: List(String),
    /// Fixed UTC offsets used by the country. May be empty.
    timezones: List(Duration),
  )
}

const data_path = "data/worldwide_countries.json"

/// Return every known country in [countries.dev](https://countries.dev) name order.
///
/// Panics if `gleam run -m worldwide/pull_countries` has not been run yet in
/// this project.
pub fn all() -> List(Country) {
  global_value.create_with_unique_name("worldwide/country.all", load)
}

pub fn is_iso_code(code: String) -> Bool {
  from_iso_code(code)
  |> result.is_ok()
}

/// Look up a country by normalized alpha-2, alpha-3, or numeric code.
pub fn from_iso_code(code: String) -> Result(Country, Nil) {
  let normalized = normalize(code)
  all()
  |> list.find(fn(country) {
    normalize(country.alpha2) == normalized
    || normalize(country.alpha3) == normalized
    || normalize(country.numeric) == normalized
  })
}

/// Look up a country by normalized alpha-2 code.
pub fn from_alpha2(alpha2: String) -> Result(Country, Nil) {
  let normalized = normalize(alpha2)
  all()
  |> list.find(fn(country) { normalize(country.alpha2) == normalized })
}

/// Look up a country by exact common English name.
pub fn from_name(name: String) -> Result(Country, Nil) {
  let trimmed = string.trim(name)
  all()
  |> list.find(fn(country) { country.name == trimmed })
}

fn normalize(value: String) -> String {
  value
  |> string.trim()
  |> string.uppercase()
}

/// A record access function for the `name` field to use when composing
/// functions and piping.
pub fn name(country: Country) -> String {
  country.name
}

/// A record access function for the `alpha2` field to use when composing
/// functions and piping.
pub fn alpha2(country: Country) -> String {
  country.alpha2
}

/// A record access function for the `alpha3` field to use when composing
/// functions and piping.
pub fn alpha3(country: Country) -> String {
  country.alpha3
}

/// A record access function for the `numeric` field to use when composing
/// functions and piping.
pub fn numeric(country: Country) -> String {
  country.numeric
}

/// A record access function for the `region` field to use when composing
/// functions and piping.
pub fn region(country: Country) -> Region {
  country.region
}

/// A record access function for the `capital` field to use when composing
/// functions and piping.
pub fn capital(country: Country) -> Option(String) {
  country.capital
}

/// A record access function for the `currencies` field to use when composing
/// functions and piping.
pub fn currencies(country: Country) -> List(Currency) {
  country.currencies
}

/// A record access function for the `languages` field to use when composing
/// functions and piping.
pub fn languages(country: Country) -> List(Language) {
  country.languages
}

/// A record access function for the `calling_codes` field to use when composing
/// functions and piping.
pub fn calling_codes(country: Country) -> List(String) {
  country.calling_codes
}

/// A record access function for the `timezones` field to use when composing
/// functions and piping.
pub fn timezones(country: Country) -> List(Duration) {
  country.timezones
}

// -- DATA LOADING -------------------------------------------------------

fn load() -> List(Country) {
  let path = filepath.join(project.root(), data_path)

  case simplifile.read(path) {
    Error(_) -> panic as missing_data_message(path)
    Ok(content) ->
      case json.parse(content, decode.list(country_decoder())) {
        Ok(countries) -> countries
        Error(_) ->
          panic as {
            path <> " could not be parsed - " <> missing_data_message(path)
          }
      }
  }
}

fn missing_data_message(path: String) -> String {
  "worldwide: no country data found at "
  <> path
  <> " - run `gleam run -m worldwide/pull_countries` to generate it"
}

fn country_decoder() -> Decoder(Country) {
  use name <- decode.field("name", decode.string)
  use alpha2 <- decode.field("alpha2", decode.string)
  use alpha3 <- decode.field("alpha3", decode.string)
  use numeric <- decode.field("numeric", decode.string)
  use region_id <- decode.field("region", decode.string)
  use subregion_id <- decode.field("subregion", decode.optional(decode.string))
  use capital <- decode.field("capital", decode.optional(decode.string))
  use currencies <- decode.field("currencies", decode.list(currency_decoder()))
  use languages <- decode.field("languages", decode.list(language_decoder()))
  use calling_codes <- decode.field("calling_codes", decode.list(decode.string))
  use timezone_minutes <- decode.field("timezones", decode.list(decode.int))

  let assert Ok(region_value) = region.from_identifier(region_id)
    as { "worldwide: unknown region " <> region_id <> " in generated data" }

  decode.success(Country(
    name:,
    alpha2:,
    alpha3:,
    numeric:,
    region: region_value,
    subregion: decode_subregion(subregion_id),
    capital:,
    currencies:,
    languages:,
    calling_codes:,
    timezones: list.map(timezone_minutes, duration.minutes),
  ))
}

fn decode_subregion(subregion_id: Option(String)) -> Option(Subregion) {
  use id <- option.map(subregion_id)
  let assert Ok(subregion_value) = region.subregion_from_identifier(id)
    as { "worldwide: unknown subregion " <> id <> " in generated data" }
  subregion_value
}

fn currency_decoder() -> Decoder(Currency) {
  use code <- decode.field("code", decode.string)
  use name <- decode.field("name", decode.string)
  use symbol <- decode.field("symbol", decode.string)
  decode.success(Currency(code:, name:, symbol:))
}

fn language_decoder() -> Decoder(Language) {
  use name <- decode.field("name", decode.string)
  use iso639_1 <- decode.field("iso639_1", decode.string)
  use native_name <- decode.field("native_name", decode.string)
  decode.success(Language(name:, iso639_1:, native_name:))
}
