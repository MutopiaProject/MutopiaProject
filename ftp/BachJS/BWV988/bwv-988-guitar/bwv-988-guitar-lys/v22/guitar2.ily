\version "2.18.0"

 guitartwo = \relative c'' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
    R1 | % 1
    R1 | % 2
    r2 g2 ~ | % 3
    g4 fis8 [ e ] fis4 a | % 4
    d,2. f4 | % 5
    e2. g4 ~ | % 6
    g4 fis8 [ e ] fis4 a ~ | % 7
    a4 g8 [ fis ] g4 b | % 8
    e,2 b' | % 9
    a2 d | % 10
    e1 ~ | % 11
    e1 ~ | % 12
    e4 d8 [ cis ] d4 fis | % 13
    b,2. e8 [ d ] | % 14
    e4 d2 cis4 | % 15
    d4 a8 [ g ] a2 | % 16
 }
  
 \repeat volta 1 {
    R1 | % 17
    r2 \TIn b,2 ~ | % 18
    b4 a8 [ g ] a4 c | % 19
    fis,2 b2| % 20
    r2 g'2 ~ | % 21
    g4 fis8 [ e ] fis4 a | % 22
    dis,4 e2 dis4 | % 23
    e2 \TInb b2 ~ | % 24
    b4 a8 [ g ] a4 c | % 25
    fis4 d g2 ~ | % 26
    g4 fis8 [ e ] fis4 a | % 27
    d,2 r2 | % 28
    r2 g2 ~ | % 29
    g4 g8 [ fis ] g2 ~ | % 30
    g4 fis8 [ e ] fis4 a ~ | % 31
    a4 g8 [ fis ] g2 | % 32
 }
}

