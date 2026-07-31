import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "4e141146953ffab9a34532426d458230a5f10b7d"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "e62444c4f2104c72515c06ed98bc76be7e62abaa"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "76338eba34901960a7be341ea5d20e4f3d8fd215"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
