import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "b0a24af3b8b0a42f6ddd8b96f77eaf9eb8955875"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "1ecf7562291c0f134674af14889994904ee75d57"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "513a63cc0f70c288eb90eab7fe1097689a9d6e14"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
