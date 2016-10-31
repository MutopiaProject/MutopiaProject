\version "2.18.0"

 guitarfour = \relative c'  {
 \set Staff.instrumentName = "Gtr4 "
 \repeat volta 1 {
    g1 | % 1
    fis1 | % 2
    e1 | % 3
    d2. c4  | % 4
    b1 | % 5
    c1 | % 6
    d1 | % 7
    g,1 ~ | % 8
    g4 g'8 [ fis ] g2 ~ | % 9
    g4 fis8 [ e ] fis4 b | % 10
    e,2. d4 ~ | % 11
    d4 cis8 [ b ] cis4 e | % 12
    fis,2 fis' | % 13
    g,2 e' | % 14
    a,1 | % 15
    d1  | % 16
 } 

 \pageBreak
  
 \repeat volta 1 {
    d2. c4 | % 17
    b4 d g g, | % 18
    c4 e c a | % 19
    b4 b' b,  a4 | % 20
    g1 | % 21
    a1 | % 22
    b1 | % 23
    e2. d4 | % 24
    c2 \TUpj c' ~ | % 25
    c4 b8 [ a ] b4 e | % 26
    a,2. g4 | % 27
    fis2 g | % 28
    e2. d4 | % 29
    c2 cis | % 30
    d1 | % 31
    g,1
 }
}

