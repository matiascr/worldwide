import gleam/dynamic/decode.{type Decoder}
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/string

/// Continental subregion a country belongs to.
pub type Subregion {
  EasternAfrica
  MiddleAfrica
  NorthernAfrica
  SouthernAfrica
  WesternAfrica
  CentralAmerica
  NorthAmerica
  SouthAmerica
  Caribbean
  CentralAsia
  EasternAsia
  SouthEasternAsia
  SouthernAsia
  WesternAsia
  CentralEurope
  EasternEurope
  NorthernEurope
  SouthernEurope
  WesternEurope
  AustraliaAndNewZealand
  Melanesia
  Micronesia
  Polynesia
  SouthAntarcticOcean
  Antarctica
}

/// Returns every subregion as a typed value.
pub fn all() -> List(Subregion) {
  [
    EasternAfrica,
    MiddleAfrica,
    NorthernAfrica,
    SouthernAfrica,
    WesternAfrica,
    CentralAmerica,
    NorthAmerica,
    SouthAmerica,
    Caribbean,
    CentralAsia,
    EasternAsia,
    SouthEasternAsia,
    SouthernAsia,
    WesternAsia,
    CentralEurope,
    EasternEurope,
    NorthernEurope,
    SouthernEurope,
    WesternEurope,
    AustraliaAndNewZealand,
    Melanesia,
    Micronesia,
    Polynesia,
    SouthAntarcticOcean,
    Antarctica,
  ]
}

@internal
pub fn decoder() -> Decoder(Option(Subregion)) {
  use raw <- decode.map(decode.optional(decode.string))
  case raw |> option.map(from_string) {
    Some(Ok(value)) -> Some(value)
    Some(Error(_)) -> None
    None -> None
  }
}

/// Formats a subregion the way [countries.dev](https://countries.dev) returns it.
pub fn to_string(subregion: Subregion) -> String {
  case subregion {
    EasternAfrica -> "Eastern Africa"
    MiddleAfrica -> "Middle Africa"
    NorthernAfrica -> "Northern Africa"
    SouthernAfrica -> "Southern Africa"
    WesternAfrica -> "Western Africa"
    CentralAmerica -> "Central America"
    NorthAmerica -> "North America"
    SouthAmerica -> "South America"
    Caribbean -> "Caribbean"
    CentralAsia -> "Central Asia"
    EasternAsia -> "Eastern Asia"
    SouthEasternAsia -> "South Eastern Asia"
    SouthernAsia -> "Southern Asia"
    WesternAsia -> "Western Asia"
    CentralEurope -> "Central Europe"
    EasternEurope -> "Eastern Europe"
    NorthernEurope -> "Northern Europe"
    SouthernEurope -> "Southern Europe"
    WesternEurope -> "Western Europe"
    AustraliaAndNewZealand -> "Australia And New Zealand"
    Melanesia -> "Melanesia"
    Micronesia -> "Micronesia"
    Polynesia -> "Polynesia"
    SouthAntarcticOcean -> "South Antarctic Ocean"
    Antarctica -> "Antarctica"
  }
}

/// Parses a subregion as returned by
/// [countries.dev](https://countries.dev).
@internal
pub fn from_string(raw: String) -> Result(Subregion, Nil) {
  case raw {
    "" -> Error(Nil)
    subregion -> {
      let lowercase_subregion = string.lowercase(subregion)
      case
        string.starts_with(lowercase_subregion, "north")
        && string.ends_with(lowercase_subregion, "america")
      {
        True -> "North America"
        False -> subregion
      }
      |> string.trim()
      |> string.replace("-", " ")
      |> string.split(" ")
      |> list.map(string.capitalise)
      |> list.map(string.trim)
      |> string.concat()
      |> from_identifier()
    }
  }
}

fn from_identifier(identifier: String) -> Result(Subregion, Nil) {
  case identifier {
    "EasternAfrica" -> Ok(EasternAfrica)
    "MiddleAfrica" -> Ok(MiddleAfrica)
    "NorthernAfrica" -> Ok(NorthernAfrica)
    "SouthernAfrica" -> Ok(SouthernAfrica)
    "WesternAfrica" -> Ok(WesternAfrica)
    "CentralAmerica" -> Ok(CentralAmerica)
    "NorthAmerica" -> Ok(NorthAmerica)
    "SouthAmerica" -> Ok(SouthAmerica)
    "Caribbean" -> Ok(Caribbean)
    "CentralAsia" -> Ok(CentralAsia)
    "EasternAsia" -> Ok(EasternAsia)
    "SouthEasternAsia" -> Ok(SouthEasternAsia)
    "SouthernAsia" -> Ok(SouthernAsia)
    "WesternAsia" -> Ok(WesternAsia)
    "CentralEurope" -> Ok(CentralEurope)
    "EasternEurope" -> Ok(EasternEurope)
    "NorthernEurope" -> Ok(NorthernEurope)
    "SouthernEurope" -> Ok(SouthernEurope)
    "WesternEurope" -> Ok(WesternEurope)
    "AustraliaAndNewZealand" -> Ok(AustraliaAndNewZealand)
    "Melanesia" -> Ok(Melanesia)
    "Micronesia" -> Ok(Micronesia)
    "Polynesia" -> Ok(Polynesia)
    "SouthAntarcticOcean" -> Ok(SouthAntarcticOcean)
    "Antarctica" -> Ok(Antarctica)
    _ -> Error(Nil)
  }
}
