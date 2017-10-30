\version "2.18.0"

\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
  %1-4
  R1*12/8 |
  \TDni b4. ~  b16 [ c d c d e] a,4. ~ a16 [ b c b c d ] | 
  g,4.  g' ~ g8  [ a16 g fis g ] a8 r8 r8 | 
  r8 d,16 [ c b a ] b8 [ c16 b a b ] g8 [ e' d ] c8 [ fis a ] |
  %5-8
  b,4 g'8 g4 fis8 r8 r8 b8 a4 \TUpa d,8 ~| 
  d16 [ e d c b8 ] e8 [ b d ] cis8 [ d \TUpo e ~ ] e8 [ cis a ]| 
  r8 r8 d8 g,4. ~ g8 [ fis g ] e8 [ a16 g fis e ]| 
  d8 [ e16 fis g a ] b8 [ d cis ] d2. | 
 }        
 \repeat volta 2 {
  %9-12
  R1*12/8 |
  r4. a'4. ~ a16 [ b16 c16 a16 b16 c16 ] b16 [ a16 g16 fis16 e16 dis16 ] | 
   e8 [ fis8 g8 ~ ] g8 [ fis8 e8 ] \TDni dis4. ~ dis4 r8 | 
  r4. a4. ~ a16 [ b c a g fis ] g16 [ a b g a b ]| 
  %13-16
  e,8 [ fis16 g a b ] c8 [ e, dis ] e4. r4. | 
  \TUpo e'4. ~ e16 [ fis g e fis g ] c,16 [ d e c d e ] a,16 [ b c a b c ]|
  b16 [ c d b c d ] g,4. ~ g8 g'4 ~ g8 fis a ~ | 
  a8 [g f] e16 [ d c e d c ] b2. |
 }
 }
