//// A typed database of world countries.
////
//// `worldwide` ships no country data itself: run
//// `gleam run -m worldwide/pull_countries` once in your own project to
//// generate `data/worldwide_countries.json`. `worldwide.all()` (and any
//// other lookup) reads it the first time it's called and panics with
//// instructions if it isn't there yet.
////
//// ## Quick start
////
//// ```gleam
//// import worldwide
//// import worldwide/region
////
//// pub fn main() {
////   worldwide.all()
////   |> worldwide.filter_by(worldwide.Region(region.Europe))
////   // -> [Country(region: Europe, ..), ..]
//// }
//// ```
////
//// See the `worldwide/country` module for more details.

import gleam/list
import gleam/option.{Some}
import gleam/string
import gleam/time/duration.{type Duration}
import worldwide/country.{type Country}
import worldwide/currency.{type Currency}
import worldwide/language.{type Language}
import worldwide/region.{type Region, type Subregion}

/// Filters that can be used to quickly get subsets of the worldwide data.
pub type Filter {
  /// Filters by names containing the provided `String`.
  NameContains(String)
  /// Filters by the provided `Region`.
  Region(Region)
  /// Filters by the provided `Subregion`.
  Subregion(Subregion)
  /// Filters by the provided `Currency`.
  Currency(String)
  /// Filters by the provided `Language`.
  Language(String)
  /// Filters by the provided `CallingCode`.
  CallingCode(String)
  /// Filters by the provided `TimeZone`.
  TimeZone(Duration)
}

/// Return every known country.
///
/// Panics if `gleam run -m worldwide/pull_countries` has not been run yet in
/// this project.
pub fn all() -> List(Country) {
  country.all()
}

/// Returns every region as a typed value.
pub fn regions() -> List(Region) {
  region.all_regions()
}

/// Returns every region as a typed value.
pub fn subregions() -> List(Subregion) {
  region.all_subregions()
}

/// Returns every currency as a typed value.
pub fn currencies() -> List(Currency) {
  all()
  |> list.map(country.currencies)
  |> list.flatten()
  |> list.unique()
}

/// Returns every language as a typed value.
pub fn languages() -> List(Language) {
  all()
  |> list.map(country.languages)
  |> list.flatten()
  |> list.unique()
}

/// Returns every timezone as a typed value.
pub fn timezones() -> List(Duration) {
  all()
  |> list.map(country.timezones)
  |> list.flatten()
  |> list.unique()
  |> list.sort(duration.compare)
}

/// Used to filter countries by the supported filters.
/// ```gleam
/// import worldwide
/// import worldwide/region.{Europe}
///
/// pub fn main() {
///   worldwide.all()
///   |> worldwide.filter_by(worldwide.Region(Europe))
///   // -> [Country(region: Europe, ..), ..]
/// }
/// ```
pub fn filter_by(countries: List(Country), filter: Filter) -> List(Country) {
  countries
  |> list.filter(fn(country) {
    case filter {
      NameContains(filtered_name) -> {
        country.name
        |> string.lowercase()
        |> string.contains(string.lowercase(filtered_name))
      }

      Region(filtered_region) -> {
        country.region == filtered_region
      }

      Subregion(filtered_subregion) -> {
        country.subregion == Some(filtered_subregion)
      }

      Currency(filtered_currency) -> {
        country.currencies
        |> list.any(fn(currency) {
          filtered_currency == currency.code
          || filtered_currency == currency.name
          || filtered_currency == currency.symbol
        })
      }

      Language(filtered_language) ->
        country.languages
        |> list.any(fn(language) {
          filtered_language == language.name
          || filtered_language == language.iso639_1
          || filtered_language == language.native_name
        })

      CallingCode(filtered_calling_code) -> {
        country.calling_codes
        |> list.contains(filtered_calling_code)
      }

      TimeZone(filtered_time_zone) -> {
        country.timezones
        |> list.contains(filtered_time_zone)
      }
    }
  })
}
