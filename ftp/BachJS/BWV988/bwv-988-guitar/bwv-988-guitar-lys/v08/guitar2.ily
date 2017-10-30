\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    g8 [ d b g ] r16 g'16 [ fis e ] | % 1
    fis8 [ d a fis ] r16 fis'16 [ e d ]  | % 2
    e8 [ b g e ] r16 e'16 [ d cis ] | % 3
    d8 [ a fis d ] r16 c'16 [ b a ] | % 4
    b8 [ d g b ] r16 g16 [ f g ] | % 5
    c,8 [ e a c ] r16 a16 [ g a ] | % 6
    d,8 [ fis a d ] r16 d,16 [ c d ] | % 7
    g,8 [ g' b, d ] g, r8 | % 8
    g16 [ b d c ] b [d g fis ] e [g b ] r16 | % 9
    fis,16 [a cis b ] a [ cis fis e] d [ fis a ]  r16 | % 10
    e,16 [ g b a ] g [ b e d ] cis [ e g fis ]  | % 11
    e16 [ g cis b ] a [ cis e d ] cis [ e a g] | % 12
    fis16 [ a d, e ] fis [d a b ] c [ a fis a ] | % 13
    b16 [ d  g, a ] b [ g e fis ] g [ e b d] | % 14
    cis16 [ e a, b ] cis [a e fis ] g [ e cis' e, ] | % 15
    fis16 [a d, e ] fis [ d fis a ] d4 | % 16
    }

\pageBreak
 
    \repeat volta 2 {
    d8 [ a fis d ] r16 c''16 [ b a ] | % 17
    g8 [ d b g ] r16 f'16 [ e d ] | % 18
    c16 [ e a g ] fis [ a c b ] a [ c dis cis ] | % 19
    b16 [ dis fis e ] dis [ fis a g ] fis [ a c a ] | % 20
    b16 [ g e fis ] g [ e b dis ]e [ b g b ] | % 21
    c16 [ a e gis ] a [ e c d ] e [ c a c ] | % 22
    dis,8 [ dis' e c a b ] | % 23
    e,8 [ g b e ] r16 d16 [ c b ] | % 24
    c16 [ e g f ] e [ g c b ] ais [ cis fis ] r16 | % 25
    b,,16 [ d fis e ] d [ fis b a ] gis [ b e ] r16 | % 26
    a,,16 [ c e d ] c [ a c e ] a [ c fis, g ] | % 27
    a16 [ fis d e ] fis [ d a b ] c [ a fis d ] | % 28
    g8 [ b d f ] r16 f16 [ e d ] | % 29
    c8 [ e g c ] r16 c,16 [ b c ] | % 30
    d,8 [ fis a c ] r16 c16 [ d fis, ] | % 31
    g16 [ b d fis ] g [ fis32 e32 d32 c32 b32 a32 ] g4 | % 32
  }
 }


