/// An ISO 4217 currency.
pub type Currency {
  Currency(code: String, name: String, symbol: String)
}

/// A record access function for the `code` field to use when composing
/// functions and piping.
pub fn code(currency: Currency) -> String {
  currency.code
}

/// A record access function for the `name` field to use when composing
/// functions and piping.
pub fn name(currency: Currency) -> String {
  currency.name
}

/// A record access function for the `symbol` field to use when composing
/// functions and piping.
pub fn symbol(currency: Currency) -> String {
  currency.symbol
}
