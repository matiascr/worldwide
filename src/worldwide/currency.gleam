import gleam/dynamic/decode.{type Decoder}

// import gleam/option

/// An ISO 4217 currency.
pub type Currency {
  Currency(code: String, name: String, symbol: String)
}

@internal
pub fn decoder() -> Decoder(Currency) {
  use code <- decode.field("code", decode.string)
  use name <- decode.field("name", decode.string)
  use symbol <- decode.field("symbol", decode.string)

  Currency(code:, name:, symbol:)
  |> decode.success()
}
