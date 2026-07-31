import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "81474f96f4515d92bec857e89ff471c0a2b919de"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "ceea063c0aff66dccd426a753f9590a89934d779"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "554f5b452a7866e206d2fd31b08a533b4c985b7c"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
