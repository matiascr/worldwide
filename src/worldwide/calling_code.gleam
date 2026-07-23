import gleam/dynamic/decode.{type Decoder}
import gleam/int
import gleam/option.{type Option, None, Some}
import gleam/result
import gleam/string

/// An international calling code: a country code, and an optional area
/// code for territories that share a country code (e.g. `+1 340` for the
/// U.S. Virgin Islands, under the shared North American `+1`).
pub type CallingCode {
  CallingCode(country_code: Int, area_code: Option(Int))
}

@internal
pub fn decoder() -> Decoder(CallingCode) {
  use raw <- decode.then(decode.string)
  case from_string(raw) {
    Ok(calling_code) -> decode.success(calling_code)
    Error(Nil) ->
      decode.failure(
        CallingCode(country_code: 0, area_code: None),
        "CallingCode",
      )
  }
}

/// Parses a calling code as returned by
/// [countries.dev](https://countries.dev) (e.g. `"34"` or `"1 340"`).
@internal
pub fn from_string(raw: String) -> Result(CallingCode, Nil) {
  case string.split(raw, " ") {
    [country_code] -> {
      use parsed <- result.try(int.parse(country_code))
      CallingCode(country_code: parsed, area_code: None)
      |> Ok
    }
    [country_code, area_code] -> {
      use country_code <- result.try(int.parse(country_code))
      use area_code <- result.try(int.parse(area_code))
      CallingCode(country_code: country_code, area_code: Some(area_code))
      |> Ok
    }
    _ -> Error(Nil)
  }
}

/// Formats a calling code for display, e.g. `"+1 (340)"` or `"+34"`.
pub fn to_string(calling_code: CallingCode) {
  case calling_code {
    CallingCode(country_code:, area_code: None) -> {
      "+" <> int.to_string(country_code)
    }
    CallingCode(country_code:, area_code: Some(area_code)) -> {
      "+"
      <> int.to_string(country_code)
      <> " ("
      <> int.to_string(area_code)
      <> ")"
    }
  }
}
