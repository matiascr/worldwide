import gleam/dynamic/decode.{type Decoder}
import gleam/option.{type Option, None}

/// A spoken language.
pub type Language {
  Language(name: String, iso639_1: Option(String), native_name: Option(String))
}

@internal
pub fn decoder() -> Decoder(Language) {
  use name <- decode.field("name", decode.string)
  use iso639_1 <- decode.optional_field(
    "iso639_1",
    None,
    decode.optional(decode.string),
  )
  use native_name <- decode.optional_field(
    "nativeName",
    None,
    decode.optional(decode.string),
  )

  Language(name:, iso639_1:, native_name:)
  |> decode.success()
}
