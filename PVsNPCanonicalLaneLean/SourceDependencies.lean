import PVsNPCanonicalLaneLean.SourcePackage

/-!
# Source dependency model for `p-vs-np-canonical-lane`

This module records the import and data-route surface used by the source
package/scripts before translation into Lean data.

It makes the source runtime dependency boundary explicit. The dependency boundary is internal to the Lean package as structural data.
-/


namespace HautevilleHouse
namespace PVsNPCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/extract_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/extract_constants.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/hypothesis_status.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/hypothesis_status.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/hypothesis_status.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/hypothesis_status.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/hypothesis_status.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "import", module := "sys", name := "", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "datetime", name := "datetime", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "datetime", name := "timezone", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/pn_closure_guard.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "from_import", module := "datetime", name := "datetime", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "from_import", module := "datetime", name := "timezone", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/pn_extension_certificate.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/release_gate.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/release_gate.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "datetime", name := "", alias := "dt", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/update_manifest.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 }
]

def sourceRuntimeModules : List String := [
  "__future__.annotations",
  "argparse",
  "datetime",
  "datetime.datetime",
  "datetime.timezone",
  "hashlib",
  "json",
  "math",
  "pathlib.Path",
  "sys",
  "typing.Any",
  "typing.Dict",
  "typing.List",
  "typing.Optional",
  "typing.Tuple"
]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", path := "artifacts/constants_extraction_inputs.json", role := "artifact", line := 17 },
  { file := "scripts/extract_constants.py", name := "DEFAULT_OUT", path := "artifacts/constants_extracted.json", role := "artifact", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_EXTRACTED", path := "artifacts/constants_extracted.json", role := "artifact", line := 16 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REGISTRY", path := "artifacts/constants_registry.json", role := "artifact", line := 17 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_STITCH", path := "artifacts/stitch_constants.json", role := "artifact", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REPORT", path := "artifacts/promotion_report.json", role := "artifact", line := 19 },
  { file := "scripts/release_gate.py", name := "DEFAULT_MANIFEST", path := "repro/repro_manifest.json", role := "repro", line := 17 },
  { file := "scripts/release_gate.py", name := "DEFAULT_REGISTRY", path := "artifacts/constants_registry.json", role := "artifact", line := 18 },
  { file := "scripts/release_gate.py", name := "DEFAULT_INPUTS", path := "artifacts/constants_extraction_inputs.json", role := "artifact", line := 19 },
  { file := "scripts/update_manifest.py", name := "DEFAULT_MANIFEST", path := "repro/repro_manifest.json", role := "repro", line := 15 }
]

def sourceImportDependencyCount : Nat := 54
def sourceRuntimeModuleCount : Nat := 15
def sourcePathDependencyCount : Nat := 10

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 54 := by
  rfl

theorem source_runtime_module_count_checked : sourceRuntimeModules.length = 15 := by
  rfl

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 10 := by
  rfl

end PVsNPCanonicalLaneLean
end HautevilleHouse
