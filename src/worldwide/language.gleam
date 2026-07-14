/// A language with its ISO 639-1 (two-letter) code.
pub type Language {
  Language(name: String, iso639_1: String, native_name: String)
}

/// A record access function for the `name` field to use when composing
/// functions and piping.
pub fn name(language: Language) -> String {
  language.name
}

/// A record access function for the `iso639_1` field to use when composing
/// functions and piping.
pub fn iso639_1(language: Language) -> String {
  language.iso639_1
}

/// A record access function for the `native_name` field to use when composing
/// functions and piping.
pub fn native_name(language: Language) -> String {
  language.native_name
}
