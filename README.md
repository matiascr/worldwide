# worldwide 🗺️

[![Package Version](https://img.shields.io/hexpm/v/worldwide)](https://hex.pm/packages/worldwide)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/worldwide/)


A typed, offline database of world countries for Gleam. Get the list of
countries, look them up by ISO code and read core info (currencies, languages,
calling codes, timezones) as typed values. Runtime lookups are local and do not make
network calls or parse JSON. All the data is sourced from [countries.dev](https://countries.dev/).

## Install

```sh
gleam add worldwide
```

## Usage

```gleam
import worldwide
import worldwide/country

pub fn main() {
  // Every country
  let everything = worldwide.all()

  // Look up by alpha-2, alpha-3 or numeric code (case-insensitive)
  let assert Ok(spain) = country.from_iso_code("ES")
  spain.name        // "Spain"
  spain.currencies  // [Currency("EUR", "Euro", "€")]

  // Or look up by alpha-2 specifically
  let assert Ok(japan) = country.from_alpha2("JP")

  // Exact common English-name lookup
  let assert Ok(japan_by_name) = country.from_name("Japan")
}
```

Use `worldwide.all()` for the complete generated snapshot, then use the focused
modules for typed lookups and supporting data. Country lookup helpers live in
`worldwide/country`.

Countries are records, and the public module delegates to generated lookup
functions for the data.

## Updating the data

The pull command fetches the current countries.dev country list, writes a
normalized CSV snapshot, and compiles that snapshot into a generated Gleam
module.

```sh
gleam run -m worldwide/pull_countries
```

## Notes

- The runtime library is still a static snapshot: it does not call countries.dev
  when your application uses `worldwide.all()` or `country.from_iso_code`.
- Runtime modules compile for both Erlang and JavaScript targets.
- Disputed territories, currency redenominations, and new/renamed countries are
  updated by rerunning the generator and committing the resulting snapshot.
