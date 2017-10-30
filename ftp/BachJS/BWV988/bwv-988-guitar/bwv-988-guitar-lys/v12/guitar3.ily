\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
    g4 g g | % 1
    fis fis fis | % 2
    e e e | % 3
    d16 [ d, d'8 ] r8 c16 [ b a8 c ] | % 4
    b4 b b | % 5
    c c c | % 6
    d d d | % 7
    g8. [ b,16 ] e [ d c e ] d [ c b a ] | % 8
    b8 [ g ] r8 g'16 [ fis g8 e ] | % 9
    fis8 [ b ] r8 b,16 [ cis d8 b ]  | % 10
    e16 [ fis g fis ] e8 [ fis  e  d ] | % 11
    cis16 [ d e d ] cis8 [ e  cis  a ] | % 12
    d4 r16 d16 [ e fis ] g [ a g fis ] | % 13
    g8 [ g, ] r16 e'16 [ fis g ] a [ fis e d ] | % 14
    b'16 [ b, e d ] cis [ a d g ] a [ e cis a] | % 15
    d16 [ e d cis ] d8 [ a ] d, r8 | % 16
  }       

 \repeat volta 2 {
    d'4 d c | % 17
    b8 [ c b a ] g [ a16 b16 ] | % 18
    c8 [ b ] c [ e ] a, [ c ] | % 19
    b4 r4 r4 | % 20
    r8 e8 [ fis g a b ]  | % 21
    c16 [ d c b ] c [ b a g ] a [ fis g a ] | % 22
    b16 [ c b a ] b [ fis dis fis ] b,16 [ dis cis  b ] | % 23
    e16 [ c b a ] g [ b e dis ] e8 [ d ] %24
    c8 [ c' ] r16 e,16 [ d c ] d [ c b a ] | % 25
    b8 [ b' ] r16 d,16 [ c b ] c [ b a gis ] | % 26
    a8 [ a' ] r16 b16 [ a g ] a [ g fis e ] | % 27
    fis16 [ e d cis ] d [ c b a ] b [ a g fis ] % 28
    g16 [ a' g fis ] g [ fis e dis ] e4 ~ | % 29
    e16 [ d c e ] d4. a8 | % 30
    b8 r8 r8 e8 [ c d ] | % 31
    g,4 ~ g16 [ b d fis ] g4 
 }
}

