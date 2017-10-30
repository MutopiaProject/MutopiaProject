\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
  %1-4
  g8 [ b d ] g8 [ b e, ] fis,8 [ a d] fis8 [ a d, ] |
  e,8 [ g b ] e8 [ b cis ] d,8 [ fis a ] d8 [ fis a, ] |
  b16 [ a b c d8 ] ~ ] d16 [ g,16 a b c d ] e16 [ d c
  b c e ] fis,16 [ a g fis e d ]|
  g16 [ fis g a b c ] d [e a, b c a ] b [ a g fis g8 ] ~ g16 [ fis e d e  fis ] |
  g16 [ fis g a g fis ] e16 [ fis g e fis g ] a16 [ g a b a g ] fis16 [ fis' g fis e fis ] |
  b,16 [ a b c d b ] cis16 [ d e d cis b ] a16 [ e' d cis d b ] cis16 [ a b cis d e ] |
  fis16 [ b, cis d e fis ] g16 [ fis e d e ais, ]
  b16 [ cis d cis b a ] g16 [ fis g b a g ] |
  fis16 [ a g fis e d ] g8 [ e a ] d,16 [ fis a d a fis ] d4. |
  }       

\pageBreak

 \repeat volta 2 {
  d'8 [ fis a ] d [ c16 b a g ] fis8 [ a d, ] g8 [ a b ] |
  c16 [ d c b a g ] fis16 [ e fis g a fis ] b8 [ fis g ] a16 [ c b a g fis ]|
  g16 [ a g fis e d ] c16 [ b a b c a ] b8 [ fis' \TDn b ~ ] b [ g e ] |
  c'16 [ d c b a g ] fis16 [ e fis b a b ] e,8 [ g b ] e8 [ e, d ] |
  c8 [ c' b8 ] a4. ~ a8 [ c a ] fis8 [ d d' ] |
  g,16 [ a g f e d ] c8 [ e c ] a16 [ b c a b c ] d8 [ d, fis' ] |
  g16 [ a b g a b ] c8 [ e a, ] d16 [ c b d c b ] c16 [ b a g fis a ]|
  g16 [ fis e d c b ] c8 [ a d ] g,16 [ b d g d b ] g4.
 }
}
