\version "2.18.0"

 guitartwo = \relative c {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
        r8 r16 b16 d2 ~ | % 1
        d8. [ a16 ] d2 ~ | % 2
        d8. [ b16 ] cis2 | % 3
        r8 r16 fis16 a2 | % 4
        r8 r16 d,16 g2 ~ | % 5
        g8. [ fis16 ] g2 | % 6
        g8. [ e16 ] fis2 | % 7
        r8 r16 d16 g4 r4 | % 8
        r8 b,8 e2 ~| % 9
        e8 [ a, ] d2 ~ | % 10
        d8  [ b ] g'2 ~ | % 11
        g16 [ a g fis ] g8 r8 r4 | % 12
        r8 a,8 d4. a8 | % 13
        g8 [ b ] e4. b8 | % 14
        a8 [ cis ] g' [ e ] cis4 | % 15
        d8 [ e, ] fis [ bes ] a4 | % 16
    }
  
    \repeat volta 2 {
        r8 r16 fis'16 a2 | % 17
        r8 r16 d,16 g2 ~ | % 18
        g8. [ gis16 ] a8 [ d, e g ~ ] | % 19
        g8 [ fis16 e ] fis8 r8 r4 | % 20
        r8 b4 a4 gis8 | % 21
        r8 c4 e8 [ c a ] | % 22
        r8 fis g e'4 dis8 | % 23
        e8 [ fis, g <c dis> ] <b e> r8 | % 24
        r8 r16 g16 c [ d e8 ] d8 [ cis ] | % 25
        b8. [ fis16 ] b [ c d8 ] c [ b ] | % 26
        a8 [ e ] a [ c ] a [ fis ] | % 27
        d4 r4 r4 | % 2
        r8 e' [ es d ] g [ b, ] | % 29
        c8 [ g ] a [ d ] e [ a, ~ ] | % 30
        a8 [ a16 g ] a4 g8 [ fis ] | % 31
        g8 [ a] b [ <fis es>8 ] <g d>4 | % 32
  
    }
}
