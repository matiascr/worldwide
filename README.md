# worldwide 🗺️

[![Package Version](https://img.shields.io/hexpm/v/worldwide)](https://hex.pm/packages/worldwide)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/worldwide/)

Typed world country data for Gleam: currencies, languages, calling codes,
timezones.

Sourced from [countries.dev](https://countries.dev/).

- `worldwide.request()` builds the HTTP request for whichever
  [countries.dev](https://countries.dev) endpoint you need.
- `worldwide.decoder()` turns the response into typed data.

## Install

```sh
gleam add worldwide
```

## Usage

```gleam
import gleam/httpc
import gleam/json
import gleam/result
import gleam/string
import gleam/time/duration.{type Duration}
import worldwide
import worldwide/country.{type Country}
import worldwide/region

pub fn get_countries() -> Result(List(Country), _) {
  use request <- result.try(
    worldwide.request()
    |> result.map_error(fn(_) { "failed to build request" }),
  )
  use response <- result.try(
    httpc.send(request)
    |> result.map_error(fn(_) { "request failed" }),
  )
  response.body
  |> json.parse(worldwide.decoder())
  |> result.map_error(fn(_) { "decoding failed" })
}

pub fn main() {
  let assert Ok(countries) = get_countries()

  let ordered_timezones: List(Duration) =
    countries
    |> list.map(fn(country) { country.timezones })
    |> list.flatten()
    |> list.sort(duration.compare)

  // Or let countries.dev do the filtering for you: by region, subregion,
  // currency, language, calling code, or timezone.
  let assert Ok(europe_req) =
    worldwide.filter(worldwide.ByRegion(region.Europe))
}
```

This works the same way with any other HTTP client that can send a
`gleam/http/request.Request(String)` and give you back a body string. For
example, you can use the `gleam/fetch` library if you want to work with the
JavaScript target.

## Or: vendor the data at build time

If you'd rather not fetch or decode anything at runtime, `worldwide` also
ships a generator that writes the data straight into your project as plain
Gleam source.

```sh
gleam add worldwide gleam_time
gleam run -m worldwide/pull_countries
```

This fetches the current countries.dev list and writes `src/countries.gleam`:
 a single `pub fn all() -> List(worldwide/country.Country)` built from
`worldwide`'s own public types. `worldwide` stays a regular dependency. The
generated file hard-codes the country data and uses `worldwide`'s types, but
nothing in your compiled app needs to send requests or parse JSON:

```gleam
import gleam/list
import worldwide/countries

pub fn main() {
  let currencies =
    countries.all()
    |> list.map(fn(country) { country.currencies })
    |> list.flatten()
    |> list.unique()
}
```

Pass a path to generate elsewhere (`gleam run -m worldwide/pull_countries
src/world_data`), and use `gleam run -m worldwide/pull_countries check` in CI to fail
the build when the generated file is stale against the current countries.dev
data, without writing anything.
