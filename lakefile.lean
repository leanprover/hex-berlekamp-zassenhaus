import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "648b5dc96ff9d15f19c691df7200589b2205269b"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "dc3d8ee06bf124993f4816d7952fe502fb23bd8e"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "a73f188bbd7ea48c4a1bb1e6d608b4f131026512"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
