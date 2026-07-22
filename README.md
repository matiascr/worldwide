# worldwide 🗺️

[![Package Version](https://img.shields.io/hexpm/v/worldwide)](https://hex.pm/packages/worldwide)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/worldwide/)


A typed database of world countries for Gleam - currencies, languages,
calling codes, timezones - sourced from
[countries.dev](https://countries.dev/). `worldwide` itself ships no data:
you generate your own copy into your project, own it in your repo, and
refresh it whenever you like, independent of the `worldwide` version you
depend on.

## Install

```sh
gleam add worldwide
```

`gleam add worldwide` succeeds immediately - it's just a dependency. But
`worldwide.all()` (and any other lookup) will panic the first time you
actually call it until you've generated the data:

```sh
gleam run -m worldwide/pull_countries
```

This writes `data/worldwide_countries.json` to your project root. **Commit
it to your own repo** - it belongs to your project, not to `worldwide`. This
way, you keep your data and don't rely on third-parties beyond when you want
to update the data.

## Usage

```gleam
import worldwide
import worldwide/country
import worldwide/region.{Europe}

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

  // Filter by region, currency, language, calling code, or timezone
  everything
  |> worldwide.filter_by(worldwide.Region(Europe))
}
```

Country lookup helpers live in `worldwide/country`; `worldwide` re-exports
`all()` and adds `filter_by`, `currencies`, `languages`, `timezones`,
`regions`, and `subregions` on top.

## Refreshing the data

Re-run the same command any time you want newer data (new countries,
currency redenominations, disputed-territory changes, etc.) - it always
re-fetches from [countries.dev](https://countries.dev) and overwrites your
generated file:

```sh
gleam run -m worldwide/pull_countries
```

To check whether your generated file is stale without overwriting it -
useful as a CI step - run:

```sh
gleam run -m worldwide/pull_countries check
```

This exits non-zero and reports if a fresh fetch would produce a different
file.

## Notes

- Lookups read `data/worldwide_countries.json` the first time they're
  called and cache the result for the lifetime of the program - no repeated
  file I/O or network calls after that.
- Both the generator and the runtime lookups compile for the Erlang and
  JavaScript (Node) targets.
- The generator (and the runtime loader) find your project root by walking
  up from the current directory to the nearest `gleam.toml`, so they work
  correctly even from a subdirectory.
- If you call `worldwide.all()` (or any lookup) before ever running the
  generator, it panics with the exact command to run.
