import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "209314f5bbaf5d341c9240451e6bb144ffceaa00"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "82dbdda3eb079611c0e2ea60022132c2b4fdf049"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "31048a6651d9aea781227c1dc2ff4e9cac9da05d"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "1a0fff2c8f545753b01cff0d941bf48f945cd299"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "cffb477db5d3ec87a4ef5c9466065e2e7ae03633"

require HexPrimality from git
  "https://github.com/leanprover/hex-primality.git" @ "3a0a1c4c5fae6d6aa7a6893dfcf26199bd043ffb"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "fd37a81f38b4286e3d4f6b5cf896ed3da0ca3b79"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "f857b2b4495dc8d9ba6583d559d2b885ccbf40fc"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "b4d0be9f888af0ff79169423144599d649cd969a"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "1f22e9a8ae948501ab56e37a4cdb8153e60be9c9"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
