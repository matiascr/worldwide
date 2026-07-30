import argv
import filepath
import glance.{
  type Expression, Call, LabelledField, List as GList, NamedType, Public,
  String as GString, UnlabelledField, Variable,
}
import glance_printer
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
import gleam/option.{type Option, None, Some}
import gleam/result
import gleam/string
import gleam/time/duration.{type Duration}
import simplifile
import worldwide
import worldwide/calling_code.{type CallingCode}
import worldwide/country.{type Country}
import worldwide/currency.{type Currency}
import worldwide/internal/project
import worldwide/language.{type Language}
import worldwide/region.{type Region}
import worldwide/subregion.{type Subregion}

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
  let content = render_module(countries)

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
pub fn render_module(countries: List(Country)) -> String {
  let all_fn =
    glance.Function(
      "all",
      Public,
      [],
      Some(NamedType("List", None, [NamedType("Country", Some("country"), [])])),
      [glance.Expression(GList(list.map(countries, country_expr), None))],
      glance.Span(0, 0),
    )

  let imports = [
    glance.Import("worldwide/country", None, [], []),
    glance.Import("worldwide/currency", None, [], []),
    glance.Import("worldwide/language", None, [], []),
    glance.Import("worldwide/calling_code", None, [], []),
    glance.Import("worldwide/region", None, [], []),
    glance.Import("worldwide/subregion", None, [], []),
    glance.Import("gleam/option", None, [], [
      glance.UnqualifiedImport("None", None),
      glance.UnqualifiedImport("Some", None),
    ]),
    glance.Import("gleam/time/duration", None, [], []),
  ]
  let module =
    glance.Module(list.map(imports, glance.Definition([], _)), [], [], [], [
      glance.Definition([], all_fn),
    ])

  header_documentation <> glance_printer.print(module)
}

fn country_expr(country: Country) -> Expression {
  Call(module_ref("country", "Country"), [
    LabelledField("name", GString(country.name)),
    LabelledField("alpha2", GString(country.alpha2)),
    LabelledField("alpha3", GString(country.alpha3)),
    LabelledField("numeric", GString(country.numeric)),
    LabelledField("region", region_expr(country.region)),
    LabelledField("subregion", option_expr(country.subregion, subregion_expr)),
    LabelledField("capital", option_expr(country.capital, GString)),
    LabelledField(
      "currencies",
      GList(list.map(country.currencies, currency_expr), None),
    ),
    LabelledField(
      "languages",
      GList(list.map(country.languages, language_expr), None),
    ),
    LabelledField(
      "calling_codes",
      GList(list.map(country.calling_codes, calling_code_expr), None),
    ),
    LabelledField(
      "timezones",
      GList(list.map(country.timezones, duration_expr), None),
    ),
  ])
}

fn currency_expr(currency: Currency) -> Expression {
  Call(module_ref("currency", "Currency"), [
    LabelledField("code", GString(currency.code)),
    LabelledField("name", GString(currency.name)),
    LabelledField("symbol", GString(currency.symbol)),
  ])
}

fn language_expr(language: Language) -> Expression {
  Call(module_ref("language", "Language"), [
    LabelledField("name", GString(language.name)),
    LabelledField("iso639_1", option_expr(language.iso639_1, GString)),
    LabelledField("native_name", option_expr(language.native_name, GString)),
  ])
}

fn calling_code_expr(calling_code: CallingCode) -> Expression {
  Call(module_ref("calling_code", "CallingCode"), [
    LabelledField("country_code", int_expr(calling_code.country_code)),
    LabelledField("area_code", option_expr(calling_code.area_code, int_expr)),
  ])
}

fn int_expr(value: Int) -> Expression {
  glance.Int(int.to_string(value))
}

fn duration_expr(value: Duration) -> Expression {
  let #(seconds, _nanoseconds) = duration.to_seconds_and_nanoseconds(value)
  Call(glance.FieldAccess(Variable("duration"), "minutes"), [
    UnlabelledField(int_expr(seconds / 60)),
  ])
}

fn region_expr(region: Region) -> Expression {
  module_ref("region", region_identifier(region))
}

fn subregion_expr(subregion: Subregion) -> Expression {
  module_ref("subregion", subregion_identifier(subregion))
}

fn region_identifier(region: Region) -> String {
  case region {
    region.Africa -> "Africa"
    region.Americas -> "Americas"
    region.Asia -> "Asia"
    region.Europe -> "Europe"
    region.Oceania -> "Oceania"
    region.Polar -> "Polar"
  }
}

fn subregion_identifier(subregion: Subregion) -> String {
  case subregion {
    subregion.EasternAfrica -> "EasternAfrica"
    subregion.MiddleAfrica -> "MiddleAfrica"
    subregion.NorthernAfrica -> "NorthernAfrica"
    subregion.SouthernAfrica -> "SouthernAfrica"
    subregion.WesternAfrica -> "WesternAfrica"
    subregion.CentralAmerica -> "CentralAmerica"
    subregion.NorthAmerica -> "NorthAmerica"
    subregion.SouthAmerica -> "SouthAmerica"
    subregion.Caribbean -> "Caribbean"
    subregion.CentralAsia -> "CentralAsia"
    subregion.EasternAsia -> "EasternAsia"
    subregion.SouthEasternAsia -> "SouthEasternAsia"
    subregion.SouthernAsia -> "SouthernAsia"
    subregion.WesternAsia -> "WesternAsia"
    subregion.CentralEurope -> "CentralEurope"
    subregion.EasternEurope -> "EasternEurope"
    subregion.NorthernEurope -> "NorthernEurope"
    subregion.SouthernEurope -> "SouthernEurope"
    subregion.WesternEurope -> "WesternEurope"
    subregion.AustraliaAndNewZealand -> "AustraliaAndNewZealand"
    subregion.Melanesia -> "Melanesia"
    subregion.Micronesia -> "Micronesia"
    subregion.Polynesia -> "Polynesia"
    subregion.SouthAntarcticOcean -> "SouthAntarcticOcean"
    subregion.Antarctica -> "Antarctica"
  }
}

fn module_ref(module: String, name: String) -> Expression {
  glance.FieldAccess(Variable(module), name)
}

fn option_expr(value: Option(a), to_expr: fn(a) -> Expression) -> Expression {
  case value {
    None -> Variable("None")
    Some(inner) -> Call(Variable("Some"), [UnlabelledField(to_expr(inner))])
  }
}

const header_documentation = "//// Generated country data.
////
//// Regenerate with `gleam run -m worldwide/pull_countries`.
//// Check whether this file is stale with
//// `gleam run -m worldwide/pull_countries check`.

// GENERATED FILE - do not edit by hand.

"
