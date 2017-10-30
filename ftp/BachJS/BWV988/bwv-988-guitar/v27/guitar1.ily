\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    R1*6/8 | % 1
    a'8 [ b16 cis d e ] fis [ e d e fis8 ] | % 2
    g,8 r8 r8 e'8 r8 r8 | % 3
    fis,8 [ g16 a b c ] d [ e d c d8 ] | % 4
    d8 r8 r8 g,8 r8 r8 | % 5
    c16 [ d c b a g ] fis [ a c e d c ] | % 6
    b16 [ c b a g fis ] e [ g b d c b ] | % 7
    a8 [ b8 ^\turn c8 ] d,8 d'4 ~ | % 8
    d16 [ fis e d cis b ] cis [ d e cis d e ] | % 9
    \once \override Script #'padding = #1 a,2. ~ ^\mordent | % 10
    a16 [ a g fis e d ] cis [ d e d e cis ] | % 11
    fis8 r8 r8 b,8 r8 r8 | % 12
    b'16 [ c b a g fis ] e [ g b d cis b ] | % 13
    a16 [ b a g fis e ] dis [ fis a c b a ] | % 14
    g8 [ a8 ^\turn b8 ~ ] b8 [ a8 g8 ~ ] | % 15
    g16 [ fis e d e cis ] d4. % 16
 }
 \repeat volta 2 {
    a'8 [ g16 fis e d ] c [ d e d c a' ] | % 17
    b,8 r8 r8 g'8 r8 r8 | % 18
    c16 [ d c b a g ] a [ b a g fis e ] | % 19
    dis8 [ e8 ^\turn fis8 ] \TDnm b,4. ~ | % 20
    b16 [ a b d c b ] c [ f c a f a ] | % 21
    dis,16 [ e  fis  a  g fis ] g8 [ g8. \prallprall fis32 g32 ] | % 22
    a16 [ b c b a8 ] a4. ^\turn ~| % 23
    a16 [ fis g a b c ] d [ c b a gis fis ] | % 24
    e16 [ gis a b c d ] e [ d c d e8 ] | % 25
    a,8 r8 r8 fis'8 r8 r8 | % 26
    b,8 [ c16 d e fis ] g [ a g fis g e ] | % 27
    c'16 [ b a g fis e ] d4. | % 28
    d16 [ c d e fis g ] a [ e c a b c ] | % 29
    fis,16 [ g a b c a ] b [ d g8 ] r8 | % 30
    r8 e8 [ d8 ] c8 [ d16 c b a ] | % 31
    b16 [ d b g a fis ] g4. ^\mordent % 32
 }
}
