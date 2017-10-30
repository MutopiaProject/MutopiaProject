\version "2.18.0"

bassOne  = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
    \repeat volta 1 {
    r8 r16 d c d c d c d c d | % 1 
    r8 r16 a' g a g a g a g a | % 2
    r8 r16  e' d e cis e d e cis e | % 3 
    r16 d,16 [  a16 fis16 ] d16. [ d'32 e,16. c'32 ] d,16. [ b'32 c,16. a'32 ]  %4
    r8 r16 d' c d c d c d b d | %5
    r8 r16 c b c b c b c a c | %6
    r8 r16 a g a g a g a fis a | % 7
    r16 g,16 [ d16 b16 ] g16. [ g'32 fis16. d'32 ] \stemDown g,16. [ e'32 a,16. fis'32 ] | % 8
    \times 2/3 { b,16 [ d16 g16 ] }
    \scaleDurations #'(2 . 3) {
    fis16 [ c a ]
    b16 [ d g ] a [ fis c ]
    d16 [ g b ] cis [ a e ] | % 9
    fis16 [ a d ] cis [ g e ]
    fis16 [ a d ] e [ cis g ]
    a16 [ d fis ] d [ b a ] | % 10
    g16 [ b16 c16 ]  b16 [ g16 fis16 ]
    e16 [ g16 a16 ]  g16 [ e16 d16 ]
    cis16 [ d16 fis16 ] e16 [ cis16 b16 ] | % 11
    a16 [ cis16 fis16 ] e16 [ cis16 b16 ]
    a16 [ c16 d16 ] cis16 [ a16 g16 ]
    fis16 [ a16 b16 ] a16 [ fis16 e16 ] | % 12
    \stemUp
    d16 [ fis16 b16 ] a16 [ fis16 e16 ]
    d16 [ fis16 g16 ] fis16 [ d16 c16 ]
    b16 [ d16 e16 ] d16 [ b16 a16 ] | % 13
    g16 [ b16 e16 ] d16 [ b16 a16 ]
    g16 [ b16 c16 ] b16 [ g16 fis16 ]
    e16 [ g16 a16 ] g16 [ e16 d16 ] | % 14
   }
    e8 [ cis'8 ] d8 [ fis,8 ] g8 [ a8 ] | % 15
    r8 r16 a' g a g a r4 | % 16
 }

 \repeat volta 1 {
    R1*3/4 | %17
    R1*3/4 | %18
    R1*3/4 | %19
    R1*3/4 | %20
    r8 r16  b a b a b g b a b | % 21
    r8 r16 b a b a b b b a b | % 22
    a,8 [ dis8 ] e8 [ a8 ] b8 [ b,8 ] | % 23
    r16 b'' a b fis g fis g dis e dis e | %24
    c,8 [ b'8 ] a8 [ gis8 ] a8 [ c,8 ] | % 25
    b8 [ a'8 ] g8 [ fis8 ] g8 [ b,8 ] | % 26
    \times 2/3 { a16 [ a'16 f'16 ] }
    \scaleDurations #'(2 . 3) {
    e16 [ c16 b16 ]
    a16 [ c16 d16 ] c16 [ a16 g16 ]
    fis16 [ a16 b16 ] a16 [ fis16 e16 ] | % 27
    d16 [ d'16 b'16 ] a16 [ fis16 e16 ]
    d16 [ fis16 g16 ] fis16 [ d16 c16 ]
    b16 [ d16 e16 ] d16 [ b16 a16 ] | % 28
    \stemDown
    g16 [ g'16 e'16 ] d16 [ a16 a16 ]
    g16 [ b16 c16 ] b16 [ g16 f16 ]
    e16 [ g16 a16 ] g16 [ e16 d16 ] | % 29
    c16 [ c'16 a'16 ] g16 [ e16 d16 ]
    c16 [ e16 f16 ] e16 [ c16 b16 ]
    a16 [ c16 d16 ] c16 [ a16 g16 ] | % 30
  }
    fis8 [ a,8 ] b8 [ c8 ] d8 [ d,8 ] | % 31
    r8 r16 d'' c d c d r4  | % 32
 }
}

bassTwo = \relative a {
    \repeat volta 1 {
    g8 g, r4 r4 |
    fis'8 fis,8 r4 r4 |
    e'8 [ e,8 ] r4 r4 | %3
    s1*3/4 | % 4
    b'8 [b'8] r4 r4 | %5
    c,8 [c'8] r4 r4 | %6
    d,8 [ d' ] r4 r4 | %7
    s1*3/4 | % 8
    s1*3/4 | % 9
    s1*3/4 | % 10
    s1*3/4 | % 11
    s1*3/4 | % 12
    s1*3/4 | % 13
    s1*3/4 | % 14
    s1*3/4 | % 15
    d,,8 [ d' ] r4 d,4 | %16
 } 
 
    \repeat volta 1 {
    s1*3/4 | % 17
    s1*3/4 | % 18
    s1*3/4 | % 19
    s1*3/4 | % 20
    e8 [ e' ] r4 r4 | % 21
    c8 [ c' ] r4 r4 | % 22
    s1*3/4 | % 23
    e,8  r8 r4 r4 | % 24
    s1*3/4 | % 25
    s1*3/4 | % 26
    s1*3/4 | % 27
    s1*3/4 | % 28
    s1*3/4 | % 29
    s1*3/4 | % 30
    s1*3/4 | % 31        
    g8 [ g,8 ] r4 g'4 | % 32
 }
}

guitartwo = << \bassOne \\ \bassTwo >>

