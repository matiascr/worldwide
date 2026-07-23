import gleam/http
import gleam/json
import gleam/list
import gleam/option.{None, Some}
import gleam/result
import gleam/string
import gleam/time/duration
import worldwide
import worldwide/calling_code.{CallingCode}
import worldwide/country.{type Country, Country}
import worldwide/currency.{Currency}
import worldwide/language.{Language}
import worldwide/region.{Americas, Asia, Europe}
import worldwide/subregion.{Caribbean, SouthernAsia, SouthernEurope}

fn spain() -> Country {
  Country(
    name: "Spain",
    alpha2: "ES",
    alpha3: "ESP",
    numeric: "724",
    region: Europe,
    subregion: Some(SouthernEurope),
    capital: Some("Madrid"),
    currencies: [Currency(code: "EUR", name: "Euro", symbol: "€")],
    languages: [
      Language(
        name: "Spanish",
        iso639_1: Some("es"),
        native_name: Some("Español"),
      ),
    ],
    calling_codes: [CallingCode(country_code: 34, area_code: None)],
    timezones: [duration.hours(0), duration.hours(1)],
  )
}

fn japan() -> Country {
  Country(
    name: "Japan",
    alpha2: "JP",
    alpha3: "JPN",
    numeric: "392",
    region: Asia,
    subregion: None,
    capital: Some("Tokyo"),
    currencies: [Currency(code: "JPY", name: "Japanese yen", symbol: "¥")],
    languages: [
      Language(
        name: "Japanese",
        iso639_1: Some("ja"),
        native_name: Some("日本語 (にほんご)"),
      ),
    ],
    calling_codes: [CallingCode(country_code: 81, area_code: None)],
    timezones: [duration.hours(9)],
  )
}

fn afghanistan() -> Country {
  Country(
    name: "Afghanistan",
    alpha2: "AF",
    alpha3: "AFG",
    numeric: "004",
    region: Asia,
    subregion: Some(SouthernAsia),
    capital: Some("Kabul"),
    currencies: [],
    languages: [],
    calling_codes: [CallingCode(country_code: 93, area_code: None)],
    timezones: [duration.hours(4) |> duration.add(duration.minutes(30))],
  )
}

fn antarctica() -> Country {
  Country(
    name: "Antarctica",
    alpha2: "AQ",
    alpha3: "ATA",
    numeric: "010",
    region: region.Polar,
    subregion: None,
    capital: None,
    currencies: [],
    languages: [],
    calling_codes: [],
    timezones: [],
  )
}

fn fixture() -> List(Country) {
  [spain(), japan(), afghanistan(), antarctica()]
}

pub fn currencies_are_deduped_across_countries_test() {
  assert fixture()
    |> list.map(fn(country) { country.currencies })
    |> list.flatten()
    |> list.unique()
    == [
      Currency(code: "EUR", name: "Euro", symbol: "€"),
      Currency(code: "JPY", name: "Japanese yen", symbol: "¥"),
    ]
}

pub fn languages_are_deduped_across_countries_test() {
  assert fixture()
    |> list.map(fn(country) { country.languages })
    |> list.flatten()
    |> list.unique()
    == [
      Language(
        name: "Spanish",
        iso639_1: Some("es"),
        native_name: Some("Español"),
      ),
      Language(
        name: "Japanese",
        iso639_1: Some("ja"),
        native_name: Some("日本語 (にほんご)"),
      ),
    ]
}

pub fn timezones_are_deduped_and_sorted_test() {
  assert fixture()
    |> list.map(fn(country) { country.timezones })
    |> list.flatten()
    |> list.unique()
    |> list.sort(duration.compare)
    == [
      duration.hours(0),
      duration.hours(1),
      duration.hours(4) |> duration.add(duration.minutes(30)),
      duration.hours(9),
    ]
}

pub fn territory_without_capital_test() {
  assert antarctica().capital == None
}

pub fn regions_and_subregions_are_static_test() {
  assert region.all() != []
  assert subregion.all() != []
  assert list.contains(region.all(), Europe)
  assert list.contains(subregion.all(), SouthernEurope)
}

pub fn region_round_trips_through_string_test() {
  assert list.all(region.all(), fn(r) {
    region.from_string(region.to_string(r)) == Ok(r)
  })
}

pub fn region_from_string_rejects_unknown_test() {
  assert region.from_string("Nowhereland") == Error(Nil)
}

pub fn region_from_string_normalises_polar_synonyms_test() {
  assert region.from_string("Polar") == Ok(region.Polar)
  assert region.from_string("Antarctic") == Ok(region.Polar)
  assert region.from_string("Antarctic Ocean") == Ok(region.Polar)
}

pub fn subregion_round_trips_through_string_test() {
  assert list.all(subregion.all(), fn(s) {
    subregion.from_string(subregion.to_string(s)) == Ok(s)
  })
}

pub fn subregion_from_string_is_case_insensitive_test() {
  assert subregion.from_string("southern europe") == Ok(SouthernEurope)
}

pub fn subregion_from_string_treats_hyphens_as_spaces_test() {
  assert subregion.from_string("South-Eastern Asia")
    == Ok(subregion.SouthEasternAsia)
}

pub fn subregion_from_string_normalises_north_america_test() {
  assert subregion.from_string("Northern America") == Ok(subregion.NorthAmerica)
  assert subregion.from_string("north america") == Ok(subregion.NorthAmerica)
}

pub fn subregion_from_string_rejects_empty_test() {
  assert subregion.from_string("") == Error(Nil)
}

pub fn subregion_from_string_rejects_unknown_test() {
  assert subregion.from_string("Nowhereland") == Error(Nil)
}

pub fn calling_code_to_string_without_area_code_test() {
  assert calling_code.to_string(CallingCode(country_code: 34, area_code: None))
    == "+34"
}

pub fn calling_code_to_string_with_area_code_test() {
  assert calling_code.to_string(CallingCode(
      country_code: 1,
      area_code: Some(340),
    ))
    == "+1 (340)"
}

pub fn calling_code_from_string_parses_country_code_only_test() {
  assert calling_code.from_string("34")
    == Ok(CallingCode(country_code: 34, area_code: None))
}

pub fn calling_code_from_string_parses_country_and_area_code_test() {
  assert calling_code.from_string("1 340")
    == Ok(CallingCode(country_code: 1, area_code: Some(340)))
}

pub fn calling_code_from_string_rejects_malformed_input_test() {
  assert calling_code.from_string("") == Error(Nil)
  assert calling_code.from_string("abc") == Error(Nil)
  assert calling_code.from_string("1 2 3") == Error(Nil)
}

// -- REQUEST/DECODER --------------------------------------------------------
//
// `worldwide` never performs network I/O itself: `request()` only builds a
// `Request` value, and `decoder()` only transforms already-fetched bytes.
// Sending the request is left entirely to the caller's own HTTP client.

pub fn request_targets_countries_dev_test() {
  let assert Ok(req) = worldwide.request()

  assert req.method == http.Get
  assert req.host == "countries.dev"
  assert req.path == "/countries"
}

pub fn request_sets_expected_headers_test() {
  let assert Ok(req) = worldwide.request()

  assert list.contains(req.headers, #("accept", "application/json"))
  assert list.contains(req.headers, #("user-agent", "worldwide/3.0"))
}

pub fn request_sets_expected_query_parameters_test() {
  let assert Ok(req) = worldwide.request()
  let assert Some(query) = req.query

  assert string.contains(query, "sort=name")
  assert string.contains(query, "fields=")
  assert string.contains(query, "timezones")
}

pub fn request_builds_the_expected_path_per_filter_test() {
  assert request_path(worldwide.ByName("Spain")) == Ok("/name/Spain")
  assert request_path(worldwide.ByIso("ES")) == Ok("/alpha/ES")
  assert request_path(worldwide.ByNumericCode("724")) == Ok("/numericcode/724")
  assert request_path(worldwide.ByIocCode("ESP")) == Ok("/cioc/ESP")
  assert request_path(worldwide.ByRegion(Europe)) == Ok("/region/Europe")
  assert request_path(worldwide.BySubregion(Caribbean))
    == Ok("/subregion/Caribbean")
  assert request_path(worldwide.ByCurrency("EUR")) == Ok("/currency/EUR")
  assert request_path(worldwide.ByLanguage("es")) == Ok("/language/es")
  assert request_path(worldwide.ByCallingCode(34)) == Ok("/callingcode/34")
  assert request_path(worldwide.ByTimeZone("UTC+01:00"))
    == Ok("/timezone/UTC+01%3A00")
}

pub fn request_percent_encodes_path_segments_consistently_test() {
  assert request_path(worldwide.BySubregion(SouthernEurope))
    == Ok("/subregion/Southern%20Europe")
  assert request_path(worldwide.ByName("Virgin Islands (U.S.)"))
    == Ok("/name/Virgin%20Islands%20(U.S.)")
}

fn request_path(filter: worldwide.Filter) -> Result(String, Nil) {
  use req <- result.try(worldwide.filter(filter))
  Ok(req.path)
}

const sample_response = "[
  {
    \"name\": \"Spain\",
    \"alpha2Code\": \"ES\",
    \"alpha3Code\": \"ESP\",
    \"numericCode\": \"724\",
    \"region\": \"Europe\",
    \"subregion\": \"Southern Europe\",
    \"capital\": \"Madrid\",
    \"currencies\": [{\"code\": \"EUR\", \"name\": \"Euro\", \"symbol\": \"€\"}],
    \"languages\": [{\"name\": \"Spanish\", \"iso639_1\": \"es\", \"nativeName\": \"Español\"}],
    \"callingCodes\": [\"34\"],
    \"timezones\": [\"UTC+00:00\", \"UTC+01:00\"]
  },
  {
    \"name\": \"Virgin Islands (U.S.)\",
    \"alpha2Code\": \"VI\",
    \"alpha3Code\": \"VIR\",
    \"numericCode\": \"850\",
    \"region\": \"Americas\",
    \"subregion\": \"Caribbean\",
    \"callingCodes\": [\"1 340\"],
    \"timezones\": [\"UTC-04:00\"]
  },
  {
    \"name\": \"Antarctica\",
    \"alpha2Code\": \"AQ\",
    \"alpha3Code\": \"ATA\",
    \"numericCode\": \"010\",
    \"region\": \"Polar\",
    \"subregion\": \"Antarctic\"
  }
]"

pub fn decoder_produces_the_expected_countries_test() {
  let assert Ok(countries) = json.parse(sample_response, worldwide.decoder())

  assert countries
    == [
      spain(),
      Country(
        name: "Virgin Islands (U.S.)",
        alpha2: "VI",
        alpha3: "VIR",
        numeric: "850",
        region: Americas,
        subregion: Some(Caribbean),
        capital: None,
        currencies: [],
        languages: [],
        calling_codes: [
          CallingCode(country_code: 1, area_code: Some(340)),
        ],
        timezones: [duration.hours(-4)],
      ),
      antarctica(),
    ]
}

pub fn decoder_rejects_unrecognised_region_test() {
  let response =
    "[{\"name\": \"Nowhere\", \"alpha2Code\": \"XX\", \"alpha3Code\": \"XXX\", \"numericCode\": \"999\", \"region\": \"Nowhereland\", \"subregion\": \"Nowhereland\"}]"

  assert json.parse(response, worldwide.decoder()) |> is_error
}

pub fn decoder_rejects_unrecognised_timezone_test() {
  let response =
    "[{\"name\": \"Nowhere\", \"alpha2Code\": \"XX\", \"alpha3Code\": \"XXX\", \"numericCode\": \"999\", \"region\": \"Europe\", \"subregion\": \"Southern Europe\", \"timezones\": [\"not-a-timezone\"]}]"

  assert json.parse(response, worldwide.decoder()) |> is_error
}

pub fn decoder_rejects_unrecognised_calling_code_test() {
  let response =
    "[{\"name\": \"Nowhere\", \"alpha2Code\": \"XX\", \"alpha3Code\": \"XXX\", \"numericCode\": \"999\", \"region\": \"Europe\", \"subregion\": \"Southern Europe\", \"callingCodes\": [\"not-a-code\"]}]"

  assert json.parse(response, worldwide.decoder()) |> is_error
}

pub fn decoder_is_lenient_on_unrecognised_subregion_test() {
  let response =
    "[{\"name\": \"Nowhere\", \"alpha2Code\": \"XX\", \"alpha3Code\": \"XXX\", \"numericCode\": \"999\", \"region\": \"Europe\", \"subregion\": \"Nowhereland\"}]"

  let assert Ok([country]) = json.parse(response, worldwide.decoder())
  assert country.subregion == None
}

fn is_error(result: Result(a, b)) -> Bool {
  case result {
    Ok(_) -> False
    Error(_) -> True
  }
}
