\version "2.18.0"

 guitarone = \relative c''' {
 \set Staff.instrumentName = "Gtr1 "

    R1*3/8 | % 1

 \repeat volta 2 {
    a4. ~ | % 2
    a8 [ g16 fis e d ] | % 3
    c4. ~ | % 4
    c8 [ b16 a g fis ] | % 5
    \TUp e4. ~ | % 6
    e8 [ d16 c b a ] | % 7
    b4. ~ | % 8
    b16 [ a c b a g ] |  % 9
    a8 a'4 ~ | % 10
    a8 [ g16 fis e d ] | % 11
    cis16 [ e a b c8 ~ ] | % 12
    c8 [ b16 a g fis ] | % 13
    \TUpo e4. ~ | % 14
    e16 [ d cis e d cis ] | % 15
    }

    \alternative {
	    { d16 [ c b a g fis ] | g8 r8 r8 }
	    { d'4. | R1*3/8 }
    } % 16 -17
  
 \repeat volta 2 {
    b''4. ~ | % 20
    b8 [ a16 g16 fis16 e16 ] |
    dis8 d4 ~ | % 22
    d8 [ c16 b16 a16 g16 ] | 
    fis4. ~ | % 24
    fis16 [ e16 d16 fis16 e16 d16 ] | 
    e16 [ d16 c16 b16 a16 gis16 ] | % 26
    a8 r8 r8 | 
    \TDnb d4. ~ | % 28 
    d16  [ b16 c16 a16 c16 e16 ] | 
    fis4. ~ |  % 30
    fis16 [ dis16 e16 c16 e16 g16 ] |
    a4. ~ | 
    a16 [ g16 fis16 a16 g16 fis16 ] | % 33
    }

    \alternative {
	  { g16 [ fis16 e16 d16 c16 b16 ] |
	  a8 r8 r8 } 
	  { g'4. }
    } % 32 - 33 
}

