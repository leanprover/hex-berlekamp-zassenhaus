import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "038357670f6b370babd6d46254f994c4e5493ad8"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "e9cdca38baa5b0c9e6449300715cb4defc342f9c"

require HexLLL from git
  "https://github.com/leanprover/hex-lll.git" @ "0136e0582ac585cb157ba688235ef2b24f11345e"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "da8a864cd17ccca780d8c76af403e88585bc4734"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "ea246536c442464a68210ecce973eb7708968f59"

require HexPrimality from git
  "https://github.com/leanprover/hex-primality.git" @ "799a8590e7666a44e05c8bf7da615df1a07fdbcd"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "bf67a5243d68c909bcd059a89fd9d3f1c54ba7d8"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "25cfbbd8a689eb782fad408c46a9c1796dd943b2"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "67c1559800bc1f62622165d3fe5d6d346661539d"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "037df2d4b50602d07892e7591547c4b641b03c63"

@[default_target]
lean_lib HexBerlekampZassenhaus

@[default_target]
lean_lib HexBerlekampZassenhausModules where
  globs := #[`HexBerlekampZassenhaus.All]

lean_lib HexBerlekampZassenhausTests where
  globs := #[`HexBerlekampZassenhaus.FactorTacticTests]
