import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "v0.5.0"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "v0.5.0"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "v0.5.0"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "v0.5.0"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "v0.5.0"

require HexPrimality from git
  "https://github.com/leanprover/hex-primality.git" @ "v0.5.0"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "v0.5.0"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "v0.5.0"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "v0.5.0"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "v0.5.0"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
