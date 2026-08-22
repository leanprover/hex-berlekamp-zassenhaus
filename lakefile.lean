import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "433bdbd9e962103d9ae5817ad5a87fac82e1af6f"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "51323f91ec9bae1cfa049a9e956bda69b5310ebb"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "f3988ace13f8fc1a1457e23d7d4cd4565afcc670"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
