\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 1 {
    b8 [ a8 b8 c8 ] d8 [ a8 d8 c8 ] | % 1
    b8 [ d8 ] g4 ~ g8 [ a16 g16 ] fis4 | % 2
    g8 [ fis8 g8 a8 ] b8 [ fis8 b8 a8 ] | % 3
    g8 [ a16 b16 ] c4 ~ c8 [ b16 a16 ] b8 b, | % 4

    cis'8 [ b8 cis8 dis8 ] e8 [ b8 e8 d8 ] | % 5
    c8 [ d16 e16 ] f4 ~ f8 [ e16 d16 ] e16 [ fis16 g8 ~ ] | % 6
    g8 fis4 e8 fis8 [ g8 a8 g8 ] | % 7
    fis4 e4 d2  % 8
    }
  
 \repeat volta 1 {
    fis8 [ d8 e8 fis8 ] g8 [ d8 g8 a8 ] | % 9
    b8 [ e,8 ] a4 ~ a8 [ g16 fis16 ] g8 r8 | % 10
    r8 e4 d16 [ c16 ] b16 [ a16 g16 fis16 ] g16 [ a16 b16 g16 ] | % 11
    \SUpb \appoggiatura fis16 e8. [ fis16 ] dis4 \prallprall e8 r8 b'4 ~ | % 12

    b8 a4 gis8 a8 [ c16 b16 ] c16 [ e16 d16 c16 ] | % 13
    b4 cis4 d2 ~ | % 14
    d8 [ g8 fis8 e8 ] d8 [ g16 fis16 ] g16 [ a16 b8 ] | % 15
    e,8 [ a8 ] fis8. \prallprall [ g16 ] g2  % 16
    }
}

