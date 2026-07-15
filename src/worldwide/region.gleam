// Continental region a country belongs to.
pub type Region {
  Africa
  Americas
  Asia
  Europe
  Oceania
  Polar
  AntarcticOcean
  Antarctic
}

// Continental subregion a country belongs to.
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

/// Parse a `String` as a `Region` value.
pub fn from_string(raw: String) -> Result(Region, Nil) {
  case raw {
    "Africa" -> Africa |> Ok
    "Americas" -> Americas |> Ok
    "Asia" -> Asia |> Ok
    "Europe" -> Europe |> Ok
    "Oceania" -> Oceania |> Ok
    "Antarctic" -> Antarctic |> Ok
    "Antarctic Ocean" -> AntarcticOcean |> Ok
    "Polar" -> Polar |> Ok
    _ -> Error(Nil)
  }
}

@internal
pub fn all_regions() {
  [Africa, Americas, Asia, Europe, Oceania, Polar, AntarcticOcean, Antarctic]
}

@internal
pub fn all_subregions() {
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
