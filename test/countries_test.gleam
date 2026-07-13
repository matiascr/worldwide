import gleam/list
import gleam/option.{None}
import gleam/time/duration
import worldwide
import worldwide/country
import worldwide/currency.{Currency}

pub fn all_is_non_empty_test() {
  assert worldwide.all() != []
}

pub fn all_have_unique_alpha2_test() {
  let codes =
    worldwide.all()
    |> list.map(fn(c) { c.alpha2 })
  // Deduping should not change the length.
  assert unique_length(codes) == list.length(codes)
}

pub fn from_code_alpha2_test() {
  let assert Ok(spain) = country.from_iso_code("ES")
  assert spain.name == "Spain"
}

pub fn from_code_alpha3_test() {
  let assert Ok(spain) = country.from_iso_code("ESP")
  assert spain.name == "Spain"
}

pub fn from_code_numeric_test() {
  let assert Ok(spain) = country.from_iso_code("724")
  assert spain.name == "Spain"
}

pub fn from_code_is_case_insensitive_test() {
  let assert Ok(spain) = country.from_iso_code("  es ")
  assert spain.name == "Spain"
}

pub fn from_code_unknown_test() {
  assert country.from_iso_code("XX") == Error(Nil)
}

pub fn country_carries_currency_test() {
  let assert Ok(spain) = country.from_iso_code("ES")
  assert spain.currencies
    == [
      Currency(code: "EUR", name: "Euro", symbol: "€"),
    ]
}

pub fn country_carries_language_test() {
  let assert Ok(japan) = country.from_iso_code("JP")
  assert japan.languages
    == [
      country.Language(
        name: "Japanese",
        iso639_1: "ja",
        native_name: "日本語 (にほんご)",
      ),
    ]
}

pub fn country_carries_timezone_test() {
  let assert Ok(spain) = country.from_iso_code("ES")
  assert spain.timezones == [duration.hours(0), duration.hours(1)]
}

pub fn country_carries_fractional_timezone_test() {
  let assert Ok(afghanistan) = country.from_iso_code("AF")
  assert afghanistan.timezones
    == [
      duration.hours(4)
      |> duration.add(duration.minutes(30)),
    ]
}

pub fn country_code_lookup_test() {
  let assert Ok(spain) = country.from_alpha2(" es ")
  assert spain.alpha2 == "ES"
}

pub fn from_name_test() {
  let assert Ok(spain) = country.from_name(" Spain ")
  assert spain.alpha2 == "ES"
}

pub fn territory_without_capital_test() {
  let assert Ok(antarctica) = country.from_iso_code("AQ")
  assert antarctica.capital == None
}

// --- tiny local list helpers to avoid extra imports in the test module ---

fn unique_length(items: List(String)) -> Int {
  items
  |> dedupe([])
  |> list.unique()
  |> list.length()
}

fn dedupe(items: List(String), seen: List(String)) -> List(String) {
  case items {
    [] -> seen
    [first, ..rest] ->
      case contains(seen, first) {
        True -> dedupe(rest, seen)
        False -> dedupe(rest, [first, ..seen])
      }
  }
}

fn contains(items: List(String), target: String) -> Bool {
  case items {
    [] -> False
    [first, ..rest] ->
      case first == target {
        True -> True
        False -> contains(rest, target)
      }
  }
}
