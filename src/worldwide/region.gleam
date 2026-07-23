import gleam/dynamic/decode.{type Decoder}

/// Continental region a country belongs to.
pub type Region {
  Africa
  Americas
  Asia
  Europe
  Oceania
  Polar
}

/// Returns every region as a typed value.
pub fn all() -> List(Region) {
  [Africa, Americas, Asia, Europe, Oceania, Polar]
}

@internal
pub fn decoder() -> Decoder(Region) {
  use raw <- decode.then(decode.string)
  case from_string(raw) {
    Ok(region) -> decode.success(region)
    Error(Nil) -> decode.failure(Africa, "Region")
  }
}

/// Formats a region the way [countries.dev](https://countries.dev) returns it.
pub fn to_string(region: Region) -> String {
  case region {
    Africa -> "Africa"
    Americas -> "Americas"
    Asia -> "Asia"
    Europe -> "Europe"
    Oceania -> "Oceania"
    Polar -> "Polar"
  }
}

/// Parses a region as returned by [countries.dev](https://countries.dev).
@internal
pub fn from_string(string: String) -> Result(Region, Nil) {
  case string {
    "Africa" -> Ok(Africa)
    "Americas" -> Ok(Americas)
    "Asia" -> Ok(Asia)
    "Europe" -> Ok(Europe)
    "Oceania" -> Ok(Oceania)
    "Polar" | "Antarctic" | "Antarctic Ocean" -> Ok(Polar)
    _ -> Error(Nil)
  }
}
