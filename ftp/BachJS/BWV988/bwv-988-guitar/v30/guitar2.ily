\version "2.18.0"

 guitartwo = \relative c'' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    \partial 8 r8 |
    R1*4/4 | % 1
    g4 g a a | % 2
    g8 [ a g f ] e [ d c b' ] | % 3
    a8 [ g a fis ] g4 g8 [ d ] | % 4
    g4 g a a | % 5
    g8 [ a g fis ] e [ d ] << { a'8 b16 cis } \\ { cis,8 b8\rest } >> | %6
    d'8 [ e fis d ] b [ d g fis ] | % 7
    e8. d16 ~ d  cis a8~ a [ g ] fis % 8
 }
  
 \repeat volta 2 {
    r8 |
    a,4 a b b | % 9
    a8 [ b a g ] fis [ e ] dis r8 | % 10
    b'4 b c c | % 11
    b8 [ c b a ] g [ fis16 g ] e8 r8 | % 12
    r2 g4 g4 | % 13
    c8. [ d16 ] c8 [b] a [g] c [d ] | % 14
    b8 [ a16 b ]g8 r8 r8 e'16 [d c8 e ] | % 15
    a,16 [ d c b ] c [ a \TUpa d8 ~ ] d8 [ c16 d ] b8  % 16 
 }
}

