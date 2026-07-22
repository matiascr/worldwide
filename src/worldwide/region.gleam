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

/// Parses the identifier a `Region` is stored under in generated data (its
/// bare constructor name, e.g. `"AntarcticOcean"`), as opposed to `from_string`
/// which parses the human-readable display form (`"Antarctic Ocean"`).
@internal
pub fn from_identifier(raw: String) -> Result(Region, Nil) {
  case raw {
    "Africa" -> Ok(Africa)
    "Americas" -> Ok(Americas)
    "Asia" -> Ok(Asia)
    "Europe" -> Ok(Europe)
    "Oceania" -> Ok(Oceania)
    "Polar" -> Ok(Polar)
    "AntarcticOcean" -> Ok(AntarcticOcean)
    "Antarctic" -> Ok(Antarctic)
    _ -> Error(Nil)
  }
}

/// Parses the identifier a `Subregion` is stored under in generated data (its
/// bare constructor name, e.g. `"NorthAmerica"`).
@internal
pub fn subregion_from_identifier(raw: String) -> Result(Subregion, Nil) {
  case raw {
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
