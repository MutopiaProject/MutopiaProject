\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 1 {
    g4. r8 r8 fis8 g4 e8 | % 1
    fis4. r8 r8 a8 d,4 fis8 | % 2
    \tieDown e2. ~ e4 a8 | % 3
    d,4. r4. r8 r8 c'8 | % 4
    b4. r8 r8 d8 g,4 b8 | % 5
    e4 r8 r8 r8 a,8 b [ a b ] | % 6
    c8 [ b a ] b [ d c ] d4 d8 | % 7
    g4 g,8 g4 g'8 g [ fis16 e d c ] | % 8
    b8 [ g a ] b [ c d ] g,4 g'8 | % 9
    g8 [ fis e ] a4 g8 fis [ g a ] | % 10
    \TDnm b4.^~ b4 a8 g4 e8 | % 11
    a,4 r8 r8 r8 g'8 fis4 e8 | % 12
    fis4 a8 b4 cis8 d4 d,8 | % 13
    g4 b,8 cis d e fis e fis | % 14
    g8 fis e fis a g a4 a,8 | % 15
    d4 d,8 d4 d'8 d4. | % 16
 }

 \repeat volta 1 {
    d8 [ fis a ] d [ e16 d c b ] c8 [ d16 c b a ] | % 17
    \TDnm b4.^~ b8 [ c d ] g, [ a b ] | % 18
    c8 r8 r8 a8 r8 r8 fis8 r8 r8 | % 19
    dis4 fis8 b4. ~  b8 [ g a ] | % 20
    g8 r8 r8 e8 r8 r8 c8 r8 r8 | % 21
    a4 ais8 b [ c'16 b a g ] a8 [ b16 a g fis ] | % 22
    g8 [ a16 g fis e ] c'8 [ dis, e ] b [ e dis ] | % 23
    e4. \mordent ~ e8 [ g b ] e4 d8 | % 24
    c4. ~ c8 [ b c ] fis, [ g a ] | % 25
    b8 [ d, fis ] b, [ c d ] g, [ a b ] | % 26
    c4. c4. c4. ~ | % 27
    c8 [ d16 c b a ] b8 [ c d ] g, [ a b ] | % 28
    e,8 r8 r8 e'8 r8 r8 a,8 r8 r8 | % 29
    g8 [ a b ] c [ b a ] b [ g a ] | % 30
    b4. ~ b8 [ a g ] d'4 d,8 | % 31
    g4 g8 g4 g8 g4. | % 32
 }
}


