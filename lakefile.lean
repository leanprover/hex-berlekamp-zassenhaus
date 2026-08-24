import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "588422f093eed407b03b65398b2c1bbc4595e4d6"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "260a4784d4eaf47c53454ec4643aaa679aa4d49d"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "0903bf19d250627cd5526fec0dc990467d3776ba"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
