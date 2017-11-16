\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    b16 [ d fis a ] g8. [ c,16 ] b [ a g b ] | % 1
    a16 [ cis e g ] fis8. [ b,16 ] a [ g fis a ] | % 2
    g16 [ b d fis ] e8. [ a,16 ] g [ fis e g ] | % 3
    fis16 [ e fis e ] fis [ a d cis ] d [ fis a c, ] | % 4
    b16 [ g' a, fis' ] g, [ e' f, d' ] e, [ c' d, b' ] | % 5
    c16 [ e, b' d, ] a' [ c, g' b, ] fis' [ a, e' g, ] | % 6
    a16 [ fis' g, e' ] fis, [ d' e, c' ] d, [ b' c, a' ] | % 7
    b,16 [ a b a ] b [ d g fis ] g8 r8 | % 8
    d''16 [ b' c, a' ] b, [ g' a, fis' ] g, [ e' fis, d' ] | % 9
    e,16 [ d' cis b ] cis [ e a8 ] a8 \mordent r8 | % 10
    b,16 [ g' a, fis' ] g, [ e' fis, d' ] e, [ cis' d, b' ] | % 11
    cis,16 [ b' a gis ] a [ cis e8 ]
    \once \override Script #'padding = #1
    e4 \mordent ~  | % 12
    e16 [ d e cis ] d [ b c a ] b [ g a fis ] | % 13
    g16 [ e' fis, d' ] e, [ cis' \grace d32 cis16 ( b )] \grace cis32 b16 [ ( a ) b  g' ] | % 14
    g8. [ fis32 e ] fis16 [ d b g ] a [ fis g e' ] | % 15
    fis,16 [ e fis e ] fis [ a d cis ] d8 r8 | % 16
 }
  
 \repeat volta 2 {
    a'16 [ fis g e ] fis [ d e c ] d [ b c a ] | % 17
    b16 [ g a fis ] g [ e fis dis ] e [ c d b ] | % 18
    c16 [ a b gis ] a [ fis g e ] f [ dis e cis ] | % 19
    dis16 [ cis dis cis ] dis4 ~ dis16 [ fis, b a ] | % 20
    g16 [ b a c ] b [ dis cis e ] dis [ fis e g ] | % 21
    fis16 [ a g b ] a [ c b d ] c [ e dis fis ] | % 22
    e16 [ g fis a ] g [ b a c ] b [ g a fis ] | % 23
    g16 [ e fis dis ] e [ c b a ] g [ fis e8 ~ ] | % 24
    e16 [ e' b d ] c [ b a c ] b [ d c e ] | % 25
    d16 [ b a c ] b [ a gis b ] a [ c b d ] | % 26
    c16 [ a g b ] a [ fis' g e ] fis [ d e c' ] | % 27
    c8 ~ [ c32 b a g ] fis16 [ g a fis ] \grace e8 \Tr d4 ~ | % 28
    d16 [ b c a ] b [ g' a, f' ] g, [ e' f, d' ] | % 29
    e,8 r32 g32 [ a b ] c16 [ a b g ] a [ fis g e  ] | % 30
    fis16 [ e' \TUpt d8 ] ~ d32 [ e fis g fis e d c ] b16 [ g'16 a,16 fis'16 ] | % 31
    g,16 [ fis g fis ] g [ b d fis ] g8 r8 | % 32
 }
}

