import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "80c55f4aa9311583a259850e0aeea3b2c8cccc68"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "604853baa6453ac620908f743cb2d736073a0868"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "6ea0790cd3310341f88a10bc3e09e772348be32a"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
