\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    r8 g16 [ fis ] g8 [ a16 b ] c16 [ b a g ] |  % 1
    d'16 [ a b cis ] d [ e fis g ] a8 r8 | % 2
    r8 g16 [ fis ] e16 [ d cis b ] a16 [ g fis g ] | % 3
    g8 [ fis16 \prall e ] d8 r8 r4 | % 4
    r16 d'8. ~ d16  [ b a g ] f16 [ e d f ] | % 5
    e16 [ g16 c16 d16 ] e8 a,4 a8 ~ | % 6
    a16 [ b fis g ] a [ g fis e' ] d [ c b a ] | % 7
    g4 r4 r4 | % 8
    r16 fis16 [ g a ] b [ cis d fis ] e [ d cis b ] | % 9
    a16 [ g fis e ] d8 r8 r4 | % 10
    r8 cis'8 ~ cis16 [ b a b ] cis [ d e fis ] | % 11
    g8 [ g,16 fis ] g4 ~ g16 [ b a g ] | % 12
    fis16 [ e fis g ] fis [ a g fis ] \TUpo e4 ~ | % 13
    e8 [ d' cis b ] a [ fis' ] | % 14
    g,4. fis8 e16 [ a g8 ~ ] | % 15
    g8 [ fis16 e ] fis [ d'8 cis16 ] d8 r8 | % 16	
 }        

	
 \repeat volta 2 {
    R1*3/4 | % 17
    r8 g,16 [ fis ] g8 [ a16 b ] c [ b a g ] | % 18
    g'4 ~ g16 [ fis a g ] fis [ g e8 ] | % 19
    \grace e16 fis8 ~ [ fis32 eis32 fis g ] fis8 [ a, ] r8 fis'8 | % 20
    g16 [ fis g a ] g [ fis e d ] c [ b a g ] | % 21
    fis2. ~ | % 22
    fis8 [ fis16 g16 ] fis8 [ fis8 ] fis8 [ g16 a16 ] | % 23
    g4 r4 \TUp e4 ~ | % 24
    e16 [ fis16 g16 e16 ] fis16 [ g16 gis16 a16 ] b16 [ c16 d16 e16] | % 25
    d8 r8 r4 r4 | % 26
    r16 c,16 [ d16 e16 ] d16 [ es16 fis16 g16 ] fis16 [ g16 a16  b16 ] | % 27
    a2. ~ | % 28
    a8 [ d,  e  fis ] g16 [ b a c ] | % 29
    b8 [ a b c ] d8. ^\mordent [ e16 ] | % 30
    d4 ~ d16 [ b c d ] e [ fis g a ] | % 31
    b16 [ g d b ] g8 r8 r4  | % 32
 }
}

