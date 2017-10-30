\version "2.18.0"

 guitartwo = \relative c'' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
        b16 [ a b g d g ] | % 1
        a16 [ g a fis d fis ] | % 2
        g16 [ fis g b a g ] | % 3
        fis16 [ e fis g a fis ] | % 4
        g8  g4 ~ | % 5
        g8 g4 ~ | % 6
        g8 [ g fis ] | % 7
        g4 r8 | % 8
        r8 r8 d'8 | % 9
        cis4 c8 | % 10
        b8 [ e, gis ] | % 11
        a4 g8 | % 12
        fis4 a8 | % 13
        d,8 [ g b ] | % 14
        cis8 [ a g ~ ] | % 15
        g8 fis4  | % 16 
    }
  
    \repeat volta 2 {
        \TInb d8 d4 ~ | % 17
        d8 b g' ~ | % 18
        g8 [ g c ] | % 19
        fis,8 r8 r8 | % 20
        b16  [ a b g e g ] | % 21
        c16 [ b c a fis a ] | % 22
        b16 [ a b c b a ] | % 23
        g16 [ fis g a b g ] | % 24
        e4 r8 | % 25
        r8 d16 [ g b g ] | % 26
        e4. | % 27
        d8 r8 r8 | % 28
        g,8  g4 ~ | % 29
        g8 [ c, c' ~ ] | % 30
        c8 [ a c ~ ] | % 31
        c8 b4 | % 32
    }
}
