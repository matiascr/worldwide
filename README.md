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
