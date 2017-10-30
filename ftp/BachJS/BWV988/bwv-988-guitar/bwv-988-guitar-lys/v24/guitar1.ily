\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 1 {
    g4 fis8 g4 a8 b [ d cis ] | % 1
    d4 a8 d4 e8 \grace e16 fis16 [ g fis e d8 ] | % 2
    g8 [ b a ] b [ g fis ] g4. ~ | % 3
    g8 [ fis e ] fis [ g a ] \TDnm d,4. ~ | % 4
    d8 [ g fis ] g [ b a ] b [ d16 c b a ] | % 5
    b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ a16 g fis e ] | % 6
    d8 r8 r8 g8 r8 r8 fis8 r8 r8 | % 7
    g8 r8 r8 c,8 r8 r8 b8 r8 r8 | % 8
    R1*9/8 | % 9
    R1*9/8 | % 10 
    r8 b''8 [ a ] g [ a fis ] e16 [ d cis8 d ] | % 11
    \grace d8 cis4. ~ cis8 [ d e ] a, [ b cis ] | % 12
    d4 fis8 g4 a8 b,4. ~ | % 13
    b8 [ a g ] a2. ~ | % 14
    a8 [ d cis ] d16 [ e fis8 e ] fis [ a16 g fis e ] | % 15
    fis8 [ g16 fis e d ] e8 [ fis16 e d cis ] d4. | %16
 }
  
 \repeat volta 1 {
    R1*9/8 | % 17
    R1*9/8 | % 18
    a'2.  ~ ^\downprall a4. ~ | % 19
    a8  [ g fis ] g [ b a ] b4 dis,8 | % 20
    e8 [ g16 fis e d ] c8 [ e16 d c b ] a8 [ c16 b a g ] | % 21
    fis4 e'8  dis  [e \turn  fis ] b,4. ~ | % 22
    b8 [ dis e ] ~ e16 [ d c b c8 ] ~  c16 [ b a g a8 ~ ] | % 23
    a8 [ fis g  ] b4. \mordent ~ b8  [ c d ] | % 24
    e8 [ gis, b ] a4. ~  a8  [ b c ] | % 25
    d8 [ fis, a ] d,4 fis8 b4. ~ | % 26
    b4 dis,8 e [ fis g ] fis [ g a ] | % 27
    d,4. d4. \TDnm d4. ~ | % 28
    d8 [ g fis ] g [ a b ] c [ d16 c b a ] | % 29 
    b8 [ c16 b a g ] a8 [ b16 a g fis ] g8 [ b16 a g fis ] | % 30
    g8 r8 r8 d8 r8 r8 fis8 r8 r8 | % 31
    g8 r8 r8 c,8 r8 r8 b4. | % 32
 }
}
