\version "2.18.0"

 guitartwo = \relative c {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 1 {
    R1*9/8 | % 1
    R1*9/8 | % 2
    g4 fis8 g4 a8 b d cis | % 3
    d4 a8 d4 e8 \grace e16 fis16 [ g fis e d8] | % 4
    g8 [ b a ] b [ g fis ] g4. ~ | % 5
    g8 [ fis e ] fis [ g a ] d,4. ~ | % 6
    d8 [ g fis ] g [ b a ] b [ d16 c b a ] | % 7
    b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] | % 8
    d8 [ b'' a ] g [ a fis ] e16 [ d cis8 d ] |  % 9
    \grace d8 cis4. ~ cis8 [ d e ] a, [ b cis ] | % 10
    d4 fis8 g4 a8 b,4. ~ | % 11
    b8 [ a gis ] a2._~ | % 12
    a8 [ d cis ] d16 [ e fis8 e ] fis [ a16 g fis e ] | % 13
    fis8 [ g16  fis  e  d ] e8 [ fis16  e  d  cis ] d8 [ e16 d cis b ] | % 14
    a8 r8 r8 d8 r8 r8 cis8 r8 r8 | % 15
    d8 r8 r8 g8 r8 r8 fis4. | % 16
 }
  
 \repeat volta 1 {
    \once \override Script #'padding = #1 a2. ~ \downprall a4. ~ | % 17
    a8 [ g fis ] g [ b a ] b4 dis,8 | % 18
    e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] | % 19
    fis4 e'8 dis [ e \turn fis ] \TDnm b,4. ~ | % 20
    b8 [ dis \TUpo e ]  ~ e16 [ d c b \TUpu c8 ~ ] c16 [ b a g \TDnh a8 ~ ] | % 21
    a8 [ fis g ] r4. r4. | % 22 
    R1*9/8 | % 23
    R1*9/8 | % 24
    R1*9/8 | % 25
    r4. \TDnm b4. ~ b8 [ c d ] | % 26
    e8 [ gis, b ] a4. ~ a8 [ b c ] | % 27
    d8 [ fis, a ] d,4 fis8 \TDnm b4. ~ | % 28
    b4 dis,8 e [ fis g ] fis [ g a ] | % 29
    d,4. d4. d4. ~ | % 30
    d8 [ g fis ] g [ a b ] c [ d16 c b a ] | % 31
    b8 [ c16 b a g ] a8 [ b16 a g fis ] g4. | % 32
 }
}
