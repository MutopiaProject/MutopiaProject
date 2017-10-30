\version "2.18.0"

 guitarfour = \relative c''  {
 \set Staff.instrumentName = "Gtr4 "
 \repeat volta 2 {
    g,2 ^\mordent g4. ^\prall fis16 [ g ] | % 1
    a4 fis4 d fis | % 2
    e4 a a, g' | % 3
    fis4 ^\prall e8 [ fis ] d [ e c d ] | % 4
    b8 [ d e fis ] g4 b, | % 5
    c2 r4 a4 | % 6
    fis2 r4 d4 | % 7
    g4 d' b d | % 8
    g2 r4 e4 | % 9
    fis2 r4 d4 | % 10
    g2 r4 e4 | % 11
    a2 r4 g4 | % 12
    fis2 r4 d4 | % 13
    g,4 b g e | % 14
    a2 r4 a4 | % 15
    d1     | % 16
 }

\pageBreak
  
 \repeat volta 2 {
    d8 [ e fis g ] a4 c, | % 17
    b8 [ d e fis ] g [ a ] \TUpa b4 ~ | % 18
    b4 a8 [ gis8 ] a2 ~ | % 19
    a4 fis b a | % 20
    g8 [ a b a ] g [ fis g e ] | % 21
    a8 [ b c b ] a [ g a fis ] | % 22
    b8 [ a g a ] b [ a b b, ] | % 23
    e8 [ b a b ] g [ fis g e ] | % 24
    cis'2 \mordent cis4. \prall b16 [ cis ] | % 25
    d4 b g b | % 26
    c4 e a, g' | % 27
    fis4 \prall e8 [ fis ] d [ e fis d ] | % 28
    g4 a b g | % 29
    c,2 r4 a'4 | % 30
    d,2 r4 d4 | % 31
    g2 g, | % 32
 }
}

