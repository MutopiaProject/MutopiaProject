\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
    \repeat volta 2 {
    \partial 8 d8 |
        g8 [ a b c ] d [ c16 b ] a8 [ g16 a ] | % 1
        b8 [ a ] g2 fis8 \prallprall [ e16 fis ] | % 2
        g4 r8 d'8 c [ b a g ] | % 3
        \TDno fis4 \prallprall ~ fis16 [e32 fis d8 ~] d4 r4 | % 4
        R1*4/4 | % 5
        R1*4/4 | % 6
        fis8 [ g a fis ] g [ fis e d ] | % 7
        cis8 [ d e cis ] d4 d8  % 8
    }
  
    \repeat volta 2 {
    fis8 |
    d8 [ fis d fis ] g [ d d g ] | % 9
    e8 r8 r4 fis4 fis | % 10
    g4 g fis8 [g fis e ] | % 11
    dis8 [ e16 fis ] b,4 ~ b8 [ a16 b ] g8 [a16 b ] | % 12
    c8 [ d e fis ] g [ fis16 e ] d8 r8 | % 13
    r8 a'8 e [ d16 e ] fis8 g4 fis8 | % 14
    d4 d e e | % 15
    d8 [ e d c ] b [ a ] g  % 16
    }
}

