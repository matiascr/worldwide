/// Continental region a country belongs to.
pub type Region {
  Africa
  Americas
  Antarctic
  AntarcticOcean
  Asia
  Europe
  Oceania
  Polar
}

/// Render a `Region` as its stored `String` value.
pub fn to_string(raw: Region) -> String {
  case raw {
    Africa -> "Africa"
    Americas -> "Americas"
    Asia -> "Asia"
    Europe -> "Europe"
    Oceania -> "Oceania"
    Antarctic -> "Antarctic"
    AntarcticOcean -> "Antarctic Ocean"
    Polar -> "Polar"
  }
}
