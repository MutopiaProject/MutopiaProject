\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 1 {
    r2 \TUpo e2 ~ | % 1
    e4 d8 [ cis8 ] \TUpa d2 ~ | % 2
    d4 cis8 [ b8 ] cis4 e4 | % 3
    a,1 ~ | % 4
    a4 g8 [ fis8 ] \TInb g2 ~ | % 5
    g4 e4 a2 ~ | % 6
    a4 a8 [ g8 ] a4 fis4 | % 7
    d'2 r2 | % 8
    r2 \TUpo e2 ~ | % 9
    e4 d8 [ cis8 ] d2 ~ | % 10
    d4 cis8 [ b8 ] cis4 e4 | % 11
    a,1 | % 12
    r2 a2 ~ | % 13
    a4 g8 [ fis8 ] g4 b4 | % 14
    cis,4 d4 e8 [ fis8 ] \TDnf g4 ~ | % 15
    g4 fis8 [ e8 ] fis2 | % 16
 }
  
 \repeat volta 1 {
    R1*4/4 | % 17
    R1*4/4 | % 18
    R1*4/4 | % 19
    s1*2/4 \TDno fis2 ~ | % 20
    fis4 e8 [ dis8 ] e4 g4 | % 21
    c,4 e4 \TDnp a2 ~ | % 22
    a4 g4 fis2 | % 23
    e2 r2  | % 24
    R1*4/4 | % 25
    R1*4/4 | % 26
    r2 c'2 ~ | % 27
    c4 b8 [ a8 ] b4 d4 | % 28
    g,2. b4 | % 29
    e,2 a2 ~ | % 30
    a4 a8 [ g8 ] a4 fis4 | % 31
    d'1 | % 32
 } 
}

