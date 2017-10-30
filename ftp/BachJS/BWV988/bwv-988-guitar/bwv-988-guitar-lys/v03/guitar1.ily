\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
  \repeat volta 2 {
  \TDni b4. ~ b16 [ c d c d e ] a,4.~ a16 [ b c b c d] |
  g,4. g'4. ~ g8 [ a16 g fis g ] a8 r r | 
  r8 d,16 [ c b a ] b8 [ c16 b a b ] g8 e' d c fis a | 
  b,4 g'8 g4 fis8 r r b a4 d,8 ~| 
  d16 [ e d c b8 ] e b d cis d \TUpo e ~ e cis a | 
  r8 r8  d8 g,4. ~ g8 [ fis g ] e a16 g fis e |
  d8 [ e16 fis g a ] b8 [ d cis ] \TDnb d4. ~ d8 cis r |
  \TDnb d4. ~ d16 [ a g fis g e] fis2. |
  }

  \repeat volta 2 {
  r4. a'4. ~ a16 [ b c a b c ] b [ a g fis e dis ] |
  e8 [ fis g ~ ] g [ fis e ] \TDni dis4. ~ dis4 r8 |
  r4. a4. ~ a8 [ b16 a g  fis ] g [ a b g a  b ] |
  e,8 [ fis16 g a b ] c8 [ e, dis ] e4. r4. |
  \TUpo e'4. ~ e16 [ fis g e fis g ] c, [ d e c d e ] a, [ b c a b c ]|
  b16 [ c d b c d ] g,4. ~ g8 g'4 ~ g8 [fis a] ~ |
  a8 g f e16 [ d c e d c ] b4 b'8 a4 c8 |
  b4 d8 g, [a fis] g2. |
 }        
}
