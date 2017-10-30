\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    R1*3/4 | % 1
    r8 d16 [ e ] d8 [ c16 b ] a [ b c d ] | % 2
    g,16 [ c b a ] g [ fis e d ] cis8 r8 | % 3
    r8 d16 [ e ] fis [ g a b ] c [ d e d ] | % 4
    d8 [ e16 fis ] g8 r8 r4 | % 5
    r16 g,8. ~ g16 [ b c d ] e [ fis g e ] | % 6
    fis16 [ d a g ] fis8 c'4  c8 ~ | % 7
    c16 [ b e d ] c [ d e fis, ] g [ a b c ] | % 8
    d4 r4 r4 | % 9
    r16 e16 [ d cis ] b [ a g e ] fis [ g a b ] | % 10
    cis16 [ d e fis ] g8 r8 r4 | % 11
    r8 \TDnd a,8 ~ a16 [ b cis b ] a [ g fis e ] | % 12
    d8 [ d'16 e ] \TUpc d4 ~ d16 [ b cis d ] | % 13
    e16 [ fis e d ] e [ cis d e ] fis4 ~ | % 14
    fis8 [ g, a b ] cis [ e, ] | % 15
    d'4. e8 fis16 [ cis d8 ] % 16
 }        

 \repeat volta 2 {
    r8 d16 [ e ] d8 [ c16 b ] a [ b c d ] | % 17
    d,4 ~ d16 [ e c d ] e [ d f8 ] | % 18
    \grace f16 e8 ~ [ e32 f e dis ] e8 [ c' ] r8 e,8 | % 19
    dis16 [ e dis cis ] dis [ e fis g ] a [ b cis dis ] | % 20
    \TUpo e2. ~ | % 21
    e8 [ e16 dis ] e8 [ e ] e [ dis16 cis ] | % 22
    dis4 r4 \TUpb fis4 ~ | % 23 
    fis16 [ e dis fis ] e [ d  cis c ] b [ a  g fis ] % 24
    g8 r8 r4 r4 | % 25
    r16 a'16 [ gis fis ] gis [ f e d ] e [ d c b ] | % 26
    c2. ~  | % 27
    c8 [ g' ] fis [ e ] d16 [ b c a ] | % 28
    b8 [ c b a ] g8. ^\prallprall [ fis16 ] | % 29
    g4 ~ g16 [ b a g ] fis [ e d c ] | % 30
    b16 [ d g b ] d8 [ \TDno g, ~ ] g16 [ a fis8 ] | % 31
    g4 r4 r4 | % 32
 } 
}
