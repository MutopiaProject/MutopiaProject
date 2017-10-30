\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    b8. [ a16 b8 ] d,8. [ g16 b8 ] | % 1
    a8. ^\prall [ g16 a8 ] d4. | % 2
    g8. \mordent [ fis16 g8 ] a,8. [ e'16 g8 ] | % 3
    fis8. \prall [ e16 fis8 ] \TDnb d4. ~ | % 4
    d4 e32 ([ fis g a ] b8. ) [ g16 d8 ] | % 5
    e4 
    \once \override Slur #'control-points = #'((0.5 . 3.0) (1.5 . 4.5) (6 . 6.0) (8.5 . 5.0))
    fis32 ([ g a b ] c8. ) [ a16 e8 ] | % 6
    fis8. [ d16 g8 ] a,8. [ b16 c8 ] | % 7
    \grace c8 b4. ~ b8. [ a16 g fis ] | % 8
    g4 d'8 g4. ~ \mordent | % 9
    g8 [ a16 g fis e ] \once \override Script #'padding = #1 fis4. ~ \mordent | % 10
    fis8. [ g16 fis8 ] e8. [ cis16 d8 ] | % 11
    cis8. \prall [ d16 e8 ] a,4. ~ | % 12
    a4 
    \once \override Slur #'control-points = #'((0.5 . 1.0) (1.5 . 2.5) (6 . 4.0) (9.5 . 3.0))
    b32 ( [ cis d e ] fis8. ) [ d16 a8 ] | % 13
    b4 cis32 ( [ d e fis ] g8. ) [ e16 b8 ] | % 14
    \grace b cis8. [ a16 a'8 ] d,8. [ e16 cis8 ] | % 15
    \grace cis \TDnb d4. ~ d4. | % 16
 }        

 \repeat volta 2 {
    fis8. [ e16 fis8 ] a,8. [ d16 fis8 ] |
    g8. [ fis16 g8 ] b4. | % 18
    e,4 fis32 ( [ g a b ] c16 ) [ b a g fis e ] | % 19
    dis8. \prall [ cis16 dis8 ] \TDnb b4. ~  | % 20
    b8. [ b'16 fis8 ] g8. [ dis16 e8 ] | % 21
    c8. [ e16 gis8 ] a4  b32 ( a  g fis  ) | % 22
    g8. [ a16 b8 ] e,8. [ fis16 dis8 ] | % 23
    e8. [ b16 g8 ] e4 b'8 | % 24
    b8. [ gis16 a8 ] d8 [ e16 d c b ] | % 25
    c8. [ e16 d8 ] e8. [ g16 fis8 ] | % 26
    g8 [ a16 g fis e ] a8. [ b16 g8 ] | % 27
    fis8. \prall [ e16 fis8 ] \TDnb d4. ~ | % 28
    d4 e32 ( [ fis g a ] b8.) [ g16 d8 ] | % 29
    e4
    \once \override Slur #'control-points = #'((0.5 . 3.0) (1.5 . 4.5) (6 . 6.0) (8.5 . 5.0))
    fis32 ( [ g a b ] c8. ) [ a16 e8 ] | % 30
    fis8. [ d16 d'8 ] g,8. [ a16 fis8 ] | % 31
    g4. ~ g4. | % 32
 }
}
