//// Public country API.
////
//// Generated data lives in `countries/internal/gen/country.gleam`.
//// Regenerate it with `gleam run -m pull_countries`.

import gleam/list
import gleam/option.{type Option}
import gleam/result
import gleam/time/duration.{type Duration}
import worldwide/currency.{type Currency}
import worldwide/internal/gen/country as generated
import worldwide/region.{type Region}

/// A language with its ISO 639-1 (two-letter) code.
pub type Language {
  Language(name: String, iso639_1: String, native_name: String)
}

/// A `Country` record. Currencies and languages may be empty for some
/// territories. Codes follow ISO 3166-1.
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

/// Return every known country in countries.dev name order.
pub fn all() -> List(Country) {
  generated.all()
  |> list.map(to_country)
}

pub fn is_iso_code(code: String) -> Bool {
  generated.from_iso_code(code)
  |> result.is_ok()
}

/// Look up a country by normalized alpha-2, alpha-3, or numeric code.
pub fn from_iso_code(code: String) -> Result(Country, Nil) {
  generated.from_iso_code(code)
  |> result.map(to_country)
}

/// Look up a country by exact common English name.
pub fn from_name(name: String) -> Result(Country, Nil) {
  generated.from_name(name)
  |> result.map(to_country)
}

/// Look up a country by normalized alpha-2 code.
pub fn from_alpha2(alpha2: String) -> Result(Country, Nil) {
  generated.from_alpha2(alpha2)
  |> result.map(to_country)
}

fn to_country(country) -> Country {
  let #(
    name,
    alpha2,
    alpha3,
    numeric,
    region,
    capital,
    currencies,
    languages,
    calling_codes,
    timezones,
  ) = country

  Country(
    name:,
    alpha2:,
    alpha3:,
    numeric:,
    region:,
    capital:,
    currencies:,
    languages: list.map(languages, to_language),
    calling_codes:,
    timezones:,
  )
}

fn to_language(language) -> Language {
  let #(name, iso639_1, native_name) = language
  Language(name:, iso639_1:, native_name:)
}
