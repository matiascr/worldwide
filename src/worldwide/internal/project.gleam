//// Finds the root of whatever Gleam project is currently being built, so
//// that both the generator and the runtime data loader agree on where the
//// generated data file lives - even if the process was started from a
//// subdirectory.

import filepath
import simplifile

/// The path to the root of the current project, found by walking up from the
/// current directory until a `gleam.toml` is found.
@internal
pub fn root() -> String {
  find_root(".")
}

fn find_root(path: String) -> String {
  let toml = filepath.join(path, "gleam.toml")
  case simplifile.is_file(toml) {
    Ok(True) -> path
    _ -> find_root(filepath.join("..", path))
  }
}
