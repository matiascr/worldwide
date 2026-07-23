import gleam/dynamic/decode.{type Decoder}
import gleam/option.{type Option}

/// A spoken language.
pub type Language {
  Language(name: String, iso639_1: Option(String), native_name: Option(String))
}

@internal
pub fn decoder() -> Decoder(Language) {
  use name <- decode.field("name", decode.string)
  use iso639_1 <- decode.field("iso639_1", decode.optional(decode.string))
  use native_name <- decode.field("nativeName", decode.optional(decode.string))

  Language(name:, iso639_1: iso639_1, native_name: native_name)
  |> decode.success()
}
