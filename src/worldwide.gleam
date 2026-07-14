//// A typed, offline database of world countries.
////
//// Update the list of countries with with `gleam run -m worldwide/pull_countries`.
////
//// ## Quick start
////
//// ```gleam
//// import worldwide
//// import worldwide/country.{type Country}
////
//// pub fn main() {
////   worldwide.all()
////   // -> [Country(..), ..]
//// }
//// ```
////
//// See the `worldwide/country` module for more details.

import gleam/list
import gleam/time/duration.{type Duration}
import worldwide/country.{type Country}
import worldwide/currency.{type Currency}
import worldwide/language
import worldwide/region.{type Region}

/// Filters that can be used to quickly get subsets of the worldwide data.
pub type Filter {
  Region(Region)
  Currency(String)
  Language(String)
  CallingCode(String)
  TimeZone(Duration)
}

/// Return every known country.
pub fn all() -> List(Country) {
  country.all()
}

/// Returns every region as a typed value.
pub fn regions() -> List(Region) {
  [
    region.Africa,
    region.Americas,
    region.Antarctic,
    region.AntarcticOcean,
    region.Asia,
    region.Europe,
    region.Oceania,
    region.Polar,
  ]
}

/// Returns every timezone as a typed value.
pub fn timezones() -> List(Duration) {
  all()
  |> list.map(country.timezones)
  |> list.flatten()
  |> list.unique()
  |> list.sort(duration.compare)
}

/// Returns every currency as a typed value.
pub fn currencies() -> List(Currency) {
  all()
  |> list.map(country.currencies)
  |> list.flatten()
  |> list.unique()
}

/// Used to filter countries by the supported filters.
/// ```gleam
/// import worldwide
/// import worldwide.region.{Europe}
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
      Region(filtered_region) -> country.region == filtered_region

      Currency(filtered_currency) -> {
        country.currencies
        |> list.any(fn(currency) {
          case currency {
            currency.Currency(code:, name:, symbol:)
              if filtered_currency == code
              || filtered_currency == name
              || filtered_currency == symbol
            -> True
            currency.Currency(..) -> False
          }
        })
      }

      Language(filtered_language) ->
        country.languages
        |> list.any(fn(language) {
          case language {
            language.Language(name:, iso639_1:, native_name:)
              if filtered_language == name
              || filtered_language == iso639_1
              || filtered_language == native_name
            -> True
            language.Language(..) -> False
          }
        })

      CallingCode(filtered_calling_code) ->
        country.calling_codes
        |> list.contains(filtered_calling_code)

      TimeZone(filtered_time_zone) ->
        country.timezones
        |> list.contains(filtered_time_zone)
    }
  })
}
