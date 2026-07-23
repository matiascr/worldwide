//// Tests for the generator's pure pipeline (decode -> render) against a
//// synthetic countries.dev-shaped payload, so no network access is needed.
//// The generated output references each type from its own `worldwide`
//// submodule, since `pull_countries` only ever builds the data, never
//// redefines the types.

import gleam/string
import worldwide/pull_countries

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
    \"name\": \"Afghanistan\",
    \"alpha2Code\": \"AF\",
    \"alpha3Code\": \"AFG\",
    \"numericCode\": \"004\",
    \"region\": \"Asia\",
    \"subregion\": \"Southern Asia\",
    \"capital\": \"Kabul\",
    \"currencies\": [],
    \"languages\": [],
    \"callingCodes\": [\"93\"],
    \"timezones\": [\"UTC+04:30\"]
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

pub fn decode_countries_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  assert countries != []
}

pub fn rendered_module_only_defines_data_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  // No type definitions - those live in worldwide's own modules.
  assert !string.contains(rendered, "pub type ")
  assert string.contains(rendered, "pub fn all() -> List(country.Country)")
}

pub fn rendered_module_imports_each_submodule_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "import worldwide/country")
  assert string.contains(rendered, "import worldwide/currency")
  assert string.contains(rendered, "import worldwide/language")
  assert string.contains(rendered, "import worldwide/calling_code")
  assert string.contains(rendered, "import worldwide/region")
  assert string.contains(rendered, "import worldwide/subregion")
  assert string.contains(rendered, "import gleam/time/duration")
  assert string.contains(rendered, "import gleam/option.{None, Some}")
}

pub fn rendered_module_qualifies_each_constructor_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "country.Country(")
  assert string.contains(rendered, "currency.Currency(")
  assert string.contains(rendered, "language.Language(")
  assert string.contains(rendered, "calling_code.CallingCode(")
  assert string.contains(rendered, "region: region.Europe")
  assert string.contains(rendered, "Some(subregion.SouthernEurope)")
}

pub fn rendered_module_embeds_spains_data_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "name: \"Spain\"")
  assert string.contains(rendered, "alpha2: \"ES\"")
  assert string.contains(rendered, "capital: Some(\"Madrid\")")
  assert string.contains(rendered, "code: \"EUR\"")
  assert string.contains(rendered, "name: \"Euro\"")
  assert string.contains(rendered, "iso639_1: Some(\"es\")")
  assert string.contains(rendered, "native_name: Some(\"Español\")")
}

pub fn rendered_module_builds_durations_via_function_calls_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  // `Duration` is opaque - must be built via `duration.minutes`, never as a
  // literal record (that would be a compile error in the generated file).
  assert !string.contains(rendered, "Duration(seconds:")
  assert string.contains(rendered, "duration.minutes(0)")
  assert string.contains(rendered, "duration.minutes(60)")
}

pub fn rendered_module_handles_fractional_timezones_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  // Afghanistan is UTC+04:30 -> 4*60 + 30 = 270 minutes.
  assert string.contains(rendered, "duration.minutes(270)")
}

pub fn rendered_module_handles_calling_code_with_area_code_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  // "1 340" -> country code 1, area code 340.
  assert string.contains(rendered, "country_code: 1")
  assert string.contains(rendered, "area_code: Some(340)")
}

pub fn rendered_module_handles_calling_code_without_area_code_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "country_code: 34")
  assert string.contains(rendered, "area_code: None")
}

pub fn rendered_module_handles_missing_capital_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "name: \"Antarctica\"")
}

pub fn rendered_module_has_generated_file_marker_test() {
  let assert Ok(countries) = pull_countries.decode_countries(sample_response)
  let rendered = pull_countries.render_module(countries)

  assert string.contains(rendered, "GENERATED FILE - do not edit by hand")
}

pub fn parse_args_defaults_to_generate_at_src_test() {
  let assert Ok(pull_countries.Generate("src")) = pull_countries.parse_args([])
}

pub fn parse_args_check_defaults_to_src_test() {
  let assert Ok(pull_countries.Check("src")) =
    pull_countries.parse_args(["check"])
}

pub fn parse_args_takes_explicit_path_test() {
  let assert Ok(pull_countries.Generate("lib")) =
    pull_countries.parse_args(["lib"])
}

pub fn parse_args_check_takes_explicit_path_test() {
  let assert Ok(pull_countries.Check("lib")) =
    pull_countries.parse_args(["check", "lib"])
}

pub fn parse_args_rejects_unknown_shapes_test() {
  assert pull_countries.parse_args(["check", "lib", "extra"]) |> is_error
}

fn is_error(result: Result(a, b)) -> Bool {
  case result {
    Ok(_) -> False
    Error(_) -> True
  }
}
