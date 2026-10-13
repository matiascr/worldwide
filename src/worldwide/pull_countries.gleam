import argv
import filepath
@target(javascript)
import gleam/fetch
@target(erlang)
import gleam/httpc
import gleam/int
import gleam/io
@target(javascript)
import gleam/javascript/promise.{type Promise}
import gleam/json
import gleam/list
import gleam/option.{None, Some}
import gleam/result
import gleam/string
import gleam/time/duration
import simplifile
import trick.{type Error, Public}
import worldwide
import worldwide/calling_code.{CallingCode}
import worldwide/country.{type Country}
import worldwide/currency.{Currency}
import worldwide/internal/project
import worldwide/language.{Language}
import worldwide/region
import worldwide/subregion

const default_path = "src"

const module_filename = "countries.gleam"

/// What the generator should do: write the module, or just check whether
/// the current one is stale.
@internal
pub type Mode {
  Generate(path: String)
  Check(path: String)
}

pub fn main() {
  case parse_args(argv.load().arguments) {
    Ok(mode) -> run(mode)
    Error(usage) -> panic as usage
  }
}

@internal
pub fn parse_args(arguments: List(String)) -> Result(Mode, String) {
  case arguments {
    [] -> Ok(Generate(default_path))
    ["check"] -> Ok(Check(default_path))
    ["check", path] -> Ok(Check(path))
    [path] -> Ok(Generate(path))
    _ -> Error("Usage: gleam run -m worldwide/pull_countries [check] [path]")
  }
}

@target(erlang)
fn run(mode: Mode) -> Nil {
  fetch_countries()
  |> generate_from_fetch(mode)
  |> report_result()
}

@target(javascript)
fn run(mode: Mode) {
  use fetched <- promise.map(fetch_countries())
  fetched
  |> generate_from_fetch(mode)
  |> report_result()
}

fn generate_from_fetch(
  fetched: Result(String, String),
  mode: Mode,
) -> Result(String, String) {
  use body <- result.try(fetched)
  generate_from_body(body, mode)
}

fn report_result(result: Result(String, String)) -> Nil {
  case result {
    Ok(message) -> io.println(message)
    Error(msg) -> {
      let message = "worldwide/pull_countries failed: " <> msg
      io.println_error(message)
    }
  }
}

fn generate_from_body(body: String, mode: Mode) -> Result(String, String) {
  use countries <- result.try(decode_countries(body))
  use content <- result.try({
    let render_result = render_module(countries)
    render_result
    |> result.replace_error(
      "Failed to generate module due to: " <> string.inspect(render_result),
    )
  })

  case mode {
    Generate(path) -> write_and_report(path, content, list.length(countries))
    Check(path) -> check_and_report(path, content)
  }
}

fn module_path(path: String) -> String {
  let base = case filepath.is_absolute(path) {
    True -> path
    False -> filepath.join(project.root(), path)
  }
  filepath.join(base, module_filename)
}

fn write_and_report(
  path: String,
  content: String,
  count: Int,
) -> Result(String, String) {
  let file = module_path(path)
  use _ <- result.try(write_file(file, content))
  Ok("Fetched " <> int.to_string(count) <> " countries, wrote " <> file)
}

fn write_file(path: String, content: String) -> Result(Nil, String) {
  use _ <- result.try(case simplifile.create_file(path) {
    Ok(_) -> Ok(Nil)
    Error(_) -> {
      let _ = simplifile.create_directory_all(filepath.directory_name(path))
      let _ = simplifile.create_file(path)
      Ok(Nil)
    }
  })
  simplifile.write(path, content)
  |> result.map_error(fn(e) { "write " <> path <> ": " <> string.inspect(e) })
}

fn check_and_report(path: String, content: String) -> Result(String, String) {
  let file = module_path(path)
  case simplifile.read(file) {
    Ok(existing) if existing == content -> Ok(file <> " is up to date")
    Ok(_) ->
      panic as {
        "worldwide/pull_countries: "
        <> file
        <> " is out of date\nrun `gleam run -m worldwide/pull_countries` to refresh"
      }
    Error(_) ->
      panic as {
        "worldwide/pull_countries: "
        <> file
        <> " is missing\nrun `gleam run -m worldwide/pull_countries` to generate it"
      }
  }
}

@target(erlang)
fn fetch_countries() -> Result(String, String) {
  use request <- result.try(
    worldwide.request()
    |> result.map_error(fn(_) { "Failed to build query" }),
  )
  use response <- result.try(
    httpc.configure()
    |> httpc.follow_redirects(True)
    |> httpc.timeout(60_000)
    |> httpc.dispatch(request)
    |> result.map_error(fn(e) {
      "GET countries.dev failed: " <> string.inspect(e)
    }),
  )

  response_to_result(response.status, response.body)
}

@target(javascript)
fn fetch_countries() -> Promise(Result(String, String)) {
  case worldwide.request() {
    Error(_) -> promise.resolve(Error("Failed to build query"))
    Ok(request) ->
      fetch.send(request)
      |> promise.try_await(fetch.read_text_body)
      |> promise.map(fn(result) {
        case result {
          Error(error) ->
            Error("GET countries.dev failed: " <> string.inspect(error))
          Ok(response) -> response_to_result(response.status, response.body)
        }
      })
  }
}

fn response_to_result(status: Int, body: String) -> Result(String, String) {
  case status >= 200 && status < 300 {
    True -> Ok(body)
    False ->
      Error(
        "GET countries.dev returned HTTP "
        <> int.to_string(status)
        <> ": "
        <> body,
      )
  }
}

@internal
pub fn decode_countries(json_body: String) -> Result(List(Country), String) {
  json.parse(json_body, worldwide.decoder())
  |> result.map_error(fn(e) {
    "decode countries.dev response: " <> string.inspect(e)
  })
}

// -- CODE GENERATION -----------------------------------------------------

@internal
pub fn render_module(countries: List(Country)) -> Result(String, Error) {
  trick.to_string({
    use <- trick.module_comment(header_documentation)

    // import gleam/option
    let assert Ok(option_module) =
      trick.define_module("gleam/option", {
        use _ <- trick.define_custom_type("Option")
        use a <- trick.define_type_parameter("a")
        use <- trick.define_constructors([
          trick.DefinedConstructor("Some", [trick.Field(None, a)]),
          trick.DefinedConstructor("None", []),
        ])
        trick.define_values([])
      })
    use option <- trick.import_(option_module, None)
    let option_type = trick.imported_generic_type(option, "Option")
    let some = trick.imported_constuctor(option, "Some")
    let none = trick.imported_constuctor(option, "None")

    // import worldwide/region
    let assert Ok(region_module) =
      trick.define_module("worldwide/region", {
        use _ <- trick.define_custom_type("Region")
        use <- trick.define_constructors({
          use r <- list.map(region.all())
          trick.DefinedConstructor(string.inspect(r), [])
        })
        trick.define_values([])
      })
    use region <- trick.import_(region_module, None)
    let region_type = trick.imported_type(region, "Region")

    // import worldwide/subregion
    let assert Ok(subregion_module) =
      trick.define_module("worldwide/subregion", {
        use _ <- trick.define_custom_type("Subregion")
        use <- trick.define_constructors({
          use r <- list.map(subregion.all())
          trick.DefinedConstructor(string.inspect(r), [])
        })
        trick.define_values([])
      })
    use subregion <- trick.import_(subregion_module, None)
    let subregion_type = trick.imported_type(subregion, "Subregion")

    // import worldwide/currency
    let assert Ok(currency_module) =
      trick.define_module("worldwide/currency", {
        use _ <- trick.define_custom_type("Currency")
        use <- trick.define_constructors([
          trick.DefinedConstructor("Currency", [
            trick.Field(Some("code"), trick.string_type()),
            trick.Field(Some("name"), trick.string_type()),
            trick.Field(Some("symbol"), trick.string_type()),
          ]),
        ])
        trick.define_values([])
      })
    use currency <- trick.import_(currency_module, None)
    let currency_type = trick.imported_type(currency, "Currency")
    let currency_constructor = trick.imported_constuctor(currency, "Currency")

    // import worldwide/language
    let assert Ok(language_module) =
      trick.define_module("worldwide/language", {
        use _ <- trick.define_custom_type("Language")
        use <- trick.define_constructors([
          trick.DefinedConstructor("Language", [
            trick.Field(Some("name"), trick.string_type()),
            trick.Field(
              Some("iso639_1"),
              option_type |> trick.with_generics([trick.string_type()]),
            ),
            trick.Field(
              Some("native_name"),
              option_type |> trick.with_generics([trick.string_type()]),
            ),
          ]),
        ])
        trick.define_values([])
      })
    use language <- trick.import_(language_module, None)
    let language_type = trick.imported_type(language, "Language")
    let language_constructor = trick.imported_constuctor(language, "Language")

    // import worldwide/calling_code
    let assert Ok(calling_code_module) =
      trick.define_module("worldwide/calling_code", {
        use _ <- trick.define_custom_type("CallingCode")
        use <- trick.define_constructors([
          trick.DefinedConstructor("CallingCode", [
            trick.Field(Some("country_code"), trick.int_type()),
            trick.Field(
              Some("area_code"),
              option_type |> trick.with_generics([trick.int_type()]),
            ),
          ]),
        ])
        trick.define_values([])
      })
    use calling_code <- trick.import_(calling_code_module, None)
    let calling_code_type = trick.imported_type(calling_code, "CallingCode")
    let calling_code_constructor =
      trick.imported_constuctor(calling_code, "CallingCode")

    // import gleam/duration
    let assert Ok(duration_module) =
      trick.define_module("gleam/duration", {
        use duration_type <- trick.define_custom_type("Duration")
        use <- trick.define_constructors([
          trick.DefinedConstructor("Duration", []),
        ])
        trick.define_values([
          trick.FunctionInterface(
            "minutes",
            [trick.Field(Some("amount"), trick.int_type())],
            duration_type,
          ),
        ])
      })
    use duration <- trick.import_(duration_module, None)
    let duration_type = trick.imported_type(duration, "Duration")

    // import worldwide/country
    let assert Ok(country_module) =
      trick.define_module("worldwide/country", {
        use _ <- trick.define_custom_type("Country")
        use <- trick.define_constructors([
          trick.DefinedConstructor("Country", [
            trick.Field(Some("name"), trick.string_type()),
            // : String
            trick.Field(Some("alpha2"), trick.string_type()),
            // : String
            trick.Field(Some("alpha3"), trick.string_type()),
            // : String
            trick.Field(Some("numeric"), trick.string_type()),
            // : String
            trick.Field(Some("region"), region_type),
            // : Region
            trick.Field(Some("subregion"), {
              option_type |> trick.with_generics([subregion_type])
            }),
            // : Option(Subregion)
            trick.Field(Some("capital"), {
              option_type |> trick.with_generics([trick.string_type()])
            }),
            // : Option(String)
            trick.Field(Some("currencies"), trick.list_type(currency_type)),
            // : List(Currency)
            trick.Field(Some("languages"), trick.list_type(language_type)),
            // : List(Language)
            trick.Field(Some("calling_codes"), {
              trick.list_type(calling_code_type)
            }),
            // : List(CallingCode)
            trick.Field(Some("timezones"), trick.list_type(duration_type)),
            // : List(Duration)
          ]),
        ])
        trick.define_values([])
      })
    use country <- trick.import_(country_module, None)
    let country_constructor = trick.imported_constuctor(country, "Country")

    use _all <- trick.function("all", Public, {
      list.map(countries, fn(c) {
        country_constructor
        |> trick.construct()
        |> trick.labelled_call([
          trick.Argument(Some("name"), trick.string(c.name)),
          trick.Argument(Some("alpha2"), trick.string(c.alpha2)),
          trick.Argument(Some("alpha3"), trick.string(c.alpha3)),
          trick.Argument(Some("numeric"), trick.string(c.numeric)),
          trick.Argument(Some("region"), {
            region
            |> trick.imported_constuctor(string.inspect(c.region))
            |> trick.construct()
          }),
          trick.Argument(Some("subregion"), {
            case c.subregion {
              Some(sr) -> {
                let subregion_expression =
                  subregion
                  |> trick.imported_constuctor(string.inspect(sr))
                  |> trick.construct()

                trick.construct(some)
                |> trick.call([subregion_expression])
              }
              None -> trick.construct(none)
            }
          }),
          trick.Argument(Some("capital"), {
            case c.capital {
              Some(cp) -> {
                trick.construct(some)
                |> trick.call([trick.string(cp)])
              }
              None -> trick.construct(none)
            }
          }),
          trick.Argument(Some("currencies"), {
            trick.list({
              use Currency(code:, name:, symbol:) <- list.map(c.currencies)
              currency_constructor
              |> trick.construct()
              |> trick.labelled_call([
                trick.Argument(Some("code"), trick.string(code)),
                trick.Argument(Some("name"), trick.string(name)),
                trick.Argument(Some("symbol"), trick.string(symbol)),
              ])
            })
          }),
          trick.Argument(Some("languages"), {
            trick.list({
              use Language(name:, iso639_1:, native_name:) <- list.map(
                c.languages,
              )
              language_constructor
              |> trick.construct()
              |> trick.labelled_call([
                trick.Argument(Some("name"), trick.string(name)),
                trick.Argument(Some("iso639_1"), {
                  case iso639_1 {
                    Some(iso639_1) -> {
                      trick.construct(some)
                      |> trick.call([trick.string(iso639_1)])
                    }
                    None -> trick.construct(none)
                  }
                }),
                trick.Argument(Some("native_name"), {
                  case native_name {
                    Some(native_name) -> {
                      trick.construct(some)
                      |> trick.call([trick.string(native_name)])
                    }
                    None -> trick.construct(none)
                  }
                }),
              ])
            })
          }),
          trick.Argument(Some("calling_codes"), {
            trick.list({
              use CallingCode(country_code:, area_code:) <- list.map(
                c.calling_codes,
              )
              calling_code_constructor
              |> trick.construct()
              |> trick.labelled_call([
                trick.Argument(Some("country_code"), trick.int(country_code)),
                trick.Argument(Some("area_code"), {
                  case area_code {
                    Some(area_code) -> {
                      trick.construct(some)
                      |> trick.call([trick.int(area_code)])
                    }
                    None -> trick.construct(none)
                  }
                }),
              ])
            })
          }),
          trick.Argument(Some("timezones"), {
            trick.list({
              use timezone <- list.map(c.timezones)
              let #(seconds, _nanoseconds) =
                duration.to_seconds_and_nanoseconds(timezone)

              trick.imported_value(duration, "minutes")
              |> trick.call([trick.int(seconds / 60)])
            })
          }),
        ])
      })
      |> trick.list()
      |> trick.expression()
      |> trick.function_body()
    })

    trick.end_module()
  })
}

const header_documentation =
  "//// Generated country data.
////
//// Regenerate with `gleam run -m worldwide/pull_countries`.
//// Check whether this file is stale with
//// `gleam run -m worldwide/pull_countries check`.

// GENERATED FILE - do not edit by hand.

"
