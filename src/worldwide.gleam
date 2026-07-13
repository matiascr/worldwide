//// A typed, offline database of world countries.
////
//// Update the list of countries with with `gleam run -m pull_countries`.
////
//// ## Quick start
////
//// ```gleam
//// import worldwide
//// import worldwide/country.{type Country}
////
//// pub fn main() {
////   worldwide.countries()
////   // -> [Country(..), ..]
//// }
//// ```

import worldwide/country.{type Country}

/// Return every known country.
pub fn all() -> List(Country) {
  country.all()
}
