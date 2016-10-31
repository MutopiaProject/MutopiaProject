\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 1 {
    \tempo "Alla Breve"
    R1 | % 1
    R1 | % 2
    R1 | % 3
    R1 | % 4
    r2 d ~ | % 5
    d4 c8 [ b ] c4 e | % 6
    a,4 d2 c4  ~ | % 7
    c4 b8 [ a ] b2 ~ | % 8
    b4 b8 [ a ] b4 e | % 9
    cis4 a'2 g8 [ fis ] | % 10
    g1 \prallprall ~ | % 11
    g1 ~ | % 12
    g4 fis8 [ e ] fis4 a | % 13
    d,2 g ~ | % 14
    g4 fis e2 | % 15
    d1 | % 16
 }
  
 \repeat volta 1 {
    r2 \TUpc a2 ~ | % 17
    a4 g8 [ fis ] g4 b | % 18
    \TUpo e,1 ~ | % 19
    e4 dis8 [ cis ] dis4 fis | % 20
    b4 b, b'2 ~ | % 21
    b4 a8 [ g ] a4 c | % 22
    fis,4 g \TUpc a2 ~  | % 23
    a4 g8 [ fis ] g4 b | % 24
    e1 | % 25
    d1 | % 26
    c1 | % 27
    r2 d2 ~ | % 28
    d4 c8 [ b ] c4 e | % 29
    a,2 ~ a8 [ e' d e ] | % 30
    a,4 d2 c4 ~ | % 31
    c4 b8 [ a ] b2 | % 32
 }
}

