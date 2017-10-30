\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
    \repeat volta 2 {
    d16 [ g b a ] g [ b d c ] b [ d g ] r | % 1
    d,16 [ fis a g ] fis [ a c b ] a [ d fis ] r | % 2
    b,,16 [ d g fis ] e [ g b a ] g [ cis e ] r | % 3
    a,,16 [ d fis e ] d [ fis a g ] fis [ a d8 ~ ] | % 4
    d16 [ b g a ] b [ g d e ] f [ d b ] r | % 5
    e'16 [ c a b ] c [ a e fis ] g [ e c ] r | % 6
    a''16 [ fis d e ] fis [ d a b ] c [ a fis c' ] | % 7
    b16 [ g d fis ] g [ d b c ] d [ b g a ] | % 8
    b8 [ b'16 a ] g [ fis e d ] cis [ e d e ] | % 9
    a,8 [ a'16 g ] fis [ e d cis ] b [ d cis d ] | % 10
    g,8 [ g'16 fis ] e [ d cis b ] a [ cis b d ] | % 11
    cis16 [ e a, b ] cis [ a e fis ] g [ e cis e ] | % 12
    d8 [ fis a d ] r16 c16 [ a fis ] | % 13
    g8 [ b d g ] r16 g16 [ fis g ] | % 14
    a,8 [ cis e g ] r16 g16 [ a cis, ] | % 15 
    d16 [ fis a cis ] d [ cis32 b32 a32 g32 fis32 e32 ] d4  | % 16
 }
  

 \repeat volta 2 {
    a16 [ d fis e ] d [ fis a g ] fis [ a c ] r | % 17
    d,16 [ g b a ] g [ b d c ] b [ d f ] r | % 18
    e16 [ c a b ] c [ a fis g ] a [ fis dis e ] | % 19
    fis16 [ dis b cis ] dis [ b fis g ] a [ fis dis fis ] | % 20
    g16 [ b e dis ] e [ g b a ] g [ b e ] r16 | % 21
    e,16 [ a c b ] a [ c e d ] c [ e a ] r16 | % 22
    r16 c,16 [ b fis' ] g [ dis e g, ] fis [ e' dis a' ] | % 23
    g16 \prallprall [ fis e8 ] r16 a,16 [ g fis ] \grace fis16 \TUpo e4 ~ | % 24
    e8 [ e16 d ] c [ b a g ] fis [ ais cis e ] | % 25
    d16 [ fis, d' c ] b [ a gis fis ] e [ gis b d ] | % 26
    c16 [ e, c' b ] a [ c e d ] c [ e a g ] | % 27
    fis16 [ a c b ] a [ g fis e ] d [ fis a c ] | % 28
    b16 [ d g, a ] b [ g d e ] f [ d b d ] | % 29
    e16 [ g c, d ] e [ c a b ] c [ a e g ] | % 30
    fis16 [ a d, e ] fis [ d a b ] c [ a fis a ] | % 31
    b16 [ d g, a ] b [ g b d ] g4 | % 32
 }
}
