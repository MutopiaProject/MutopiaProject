\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    \partial 8 r8 |
    r2 r4 r8 d8 | % 1
    g8 [ a b c ] d8 [ c16 b ] a8 r8 | % 2
    d4 d e e | % 3
    d8 [ e d c ] b \prallprall [ a ] g4 | % 4
      <<
    { s1  g'8 [ fis e d ] cis \prallprall [ b16 cis ] a8 r8 } \\
    { g8 [ a b c ] d [ c16 b ] a8 [ \TDnm d ~ ]  d8 [ c ] b4 a4~ a8 s8 }
      >>
    a'4 a b b | % 7
      <<
    { a8 [ b a g ] fis [ e ] d } \\
    { s4 b,8\rest \TInc e'8~ e16 d8 cis16 d8 } 
      >>
 }
  
 \repeat volta 2 {
    a8 |
    fis8 [ a fis a ] d, [ e16 fis ] g8 [e ] | % 9
    a8 [ g fis e ] dis [ cis16 dis ] b8 [b'] | % 10
    e,8 [ b' e, b'] dis,16 [e fis g ] a8 [ g16 fis ] | % 11
    g8 [ fis16 e ] dis16 [ e fis dis ] \TUpo e2 ~ | % 12
    e16 [(d ) fis (e) ] g16 [(fis) a8 ] d,4. c16 [ d] | % 13
    e8 [ fis16 g] a8 [ g ] fis16 \prallprall [ e32 fis d8 ] r4 | % 14
    b'8 [ c d b ] c [ b a g ] | % 15
    fis8 [ g a fis ] g4 g8  % 16
 }
}

