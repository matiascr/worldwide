//// Typed world country data.
////
//// ```gleam
//// import gleam/httpc
//// import gleam/json
//// import worldwide
//// import worldwide/region
////
//// pub fn main() {
////   let assert Ok(req) = worldwide.request()
////   let assert Ok(response) = httpc.send(req)
////   let assert Ok(countries) = json.parse(response.body, worldwide.decoder())
////
////   // Or let countries.dev do the filtering for you.
////   let assert Ok(europe_req) =
////     worldwide.filter(worldwide.ByRegion(region.Europe))
//// }
//// ```

import gleam/dynamic/decode.{type Decoder}
import gleam/http/request.{type Request}
import worldwide/country.{type Country}
import worldwide/region.{type Region}
import worldwide/sources/countries_dev
import worldwide/subregion.{type Subregion}

/// Selects which [countries.dev](https://countries.dev) endpoint a request
/// is built for.
pub type Filter {
  /// Returns every country whose name contains the given value (case-insensitive).
  ByName(String)
  /// Returns a single country matching the given ISO 3166-1 alpha-2 or
  /// alpha-3 code (case-insensitive).
  ByIso(String)
  /// Returns the country matching the given ISO 3166-1 numeric code. Leading
  /// zeros are optional.
  ByNumericCode(String)
  /// Returns the country matching the given International Olympic Committee
  /// (IOC) country code.
  ByIocCode(String)
  /// Returns every country in the given region (exact match, case-insensitive).
  ByRegion(Region)
  /// Returns every country in the given subregion (exact match, case-insensitive).
  BySubregion(Subregion)
  /// Returns every country that uses the given ISO 4217 currency code (case-insensitive).
  ByCurrency(String)
  /// Returns every country that has the given language, matched by ISO 639-1
  /// (`he`) or ISO 639-2 (`heb`) code.
  ByLanguage(String)
  /// Returns every country that uses the given international calling code.
  /// This only filters by the country code, not the area code.
  ByCallingCode(Int)
  /// Returns every country that observes the given UTC timezone (exact
  /// match, case-insensitive, e.g. "UTC+02:00")
  ByTimeZone(String)
}

/// Builds a request for the complete list of countries.
pub fn request() -> Result(Request(String), Nil) {
  countries_dev.all()
}

/// Builds a request for the given filter, to be sent with an HTTP client
/// (`gleam_httpc`, `gleam_fetch`, etc...), then the response body decoded
/// with `decoder()`.
pub fn filter(filter: Filter) -> Result(Request(String), Nil) {
  case filter {
    ByRegion(region) -> countries_dev.by_region(region)
    BySubregion(subregion) -> countries_dev.by_subregion(subregion)
    ByCurrency(currency) -> countries_dev.by_currency(currency)
    ByLanguage(language) -> countries_dev.by_language(language)
    ByCallingCode(code) -> countries_dev.by_calling_code(code)
    ByTimeZone(timezone) -> countries_dev.by_timezone(timezone)
    ByName(name) -> countries_dev.by_name(name)
    ByIso(iso) -> countries_dev.by_iso_code(iso)
    ByNumericCode(code) -> countries_dev.by_numeric_code(code)
    ByIocCode(ioc) -> countries_dev.by_ioc_code(ioc)
  }
}

/// Decodes a country list response body into a list of `Country`.
pub fn decoder() -> Decoder(List(Country)) {
  countries_dev.decoder()
}
