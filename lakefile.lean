import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "1abc06a7bf0a0fb570116f88df049a412df7187a"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "67e940994ef10106a47b03a9d63ff8cd4a7a7daf"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "127d47d7c248c4e26c3b269eb46ceaed29b99ea4"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "a47240943e925951a676d1a1c2f2a615ae68fdef"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "ea246536c442464a68210ecce973eb7708968f59"

require HexPrimality from git
  "https://github.com/leanprover/hex-primality.git" @ "d5b5d9eb91e39ad187b011e280da6bf80b6fe5b6"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "1f7f31c7733ee5f0fa30d4a376adfa5125895c29"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "a99dc4690f411538088463b6db94e38958e65a81"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "67c1559800bc1f62622165d3fe5d6d346661539d"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "385df1df6b2667aeb001b6b781f7109943de243b"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
