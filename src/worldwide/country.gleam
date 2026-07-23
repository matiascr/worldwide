import gleam/option.{type Option}
import gleam/time/duration.{type Duration}
import worldwide/calling_code.{type CallingCode}
import worldwide/currency.{type Currency}
import worldwide/language.{type Language}
import worldwide/region.{type Region}
import worldwide/subregion.{type Subregion}

/// A country.
pub type Country {
  Country(
    /// Common English name, e.g. "Spain".
    name: String,
    /// ISO 3166-1 alpha-2 code, uppercase, e.g. "ES".
    alpha2: String,
    /// ISO 3166-1 alpha-3 code, uppercase, e.g. "ESP".
    alpha3: String,
    /// ISO 3166-1 numeric code as a zero-padded string, e.g. "724".
    numeric: String,
    /// Continental region.
    region: Region,
    /// Continental subregion.
    subregion: Option(Subregion),
    /// Capital city, if the country has one.
    capital: Option(String),
    /// Currencies in use, primary first. May be empty.
    currencies: List(Currency),
    /// Official / common languages. May be empty.
    languages: List(Language),
    /// International dialing codes. May be empty.
    calling_codes: List(CallingCode),
    /// Fixed UTC offsets used by the country. May be empty.
    timezones: List(Duration),
  )
}
