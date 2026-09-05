import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "c5126ce15c2d77ce2832eb1013840b2dacd91c12"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "efb2e35660507aec92fd1668e3552d4fffcfd15b"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "5a557ce3b59ef2887e4889f78cc7e2f7256cadc0"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
