\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
  \repeat volta 2 {
    R1*3/8 | % 1
    R1*3/8 | % 2
    r8 b8 [ g ] | % 3
    d'4 r8 | % 4
    r8 g,8 [ b ] | % 5
    e,8 [ a g ~ ] | % 6
    g8 [ fis16 e fis8 ] | % 7
    g8 [ d ] r8 | % 8
    R1*3/8 | % 9 
    r8 d'8 [ fis ] | % 10
    b,8 [ e ] r8 | % 11
    r8 cis8 [ e8 ] | % 12
    a,4. ~ | % 13
    a8 [ g b ] | % 4
    e,8 [ fis e ] | % 15
    }
    \alternative {
	 {  d4 r8 |} % 16
	 {  d4 r8 |} % 16
    }
  
  \repeat volta 2 {
    R1*3/8 | % 17
    r8 d'8 [ g8 ] | % 18
    e8 c4 ~ | % 19
    c8  [ b16 a g fis ] | % 20
    g16 [ a ] b4 ~ | % 21
    b8 [ a b ] | % 22
    c8 b4 ~| % 23 
    b8  [ g b ] | % 24
    e,8 [ a16 g fis g ] | % 25
    d'4. | % 26
    c8 [ fis, a ] | % 27
    d,4. ~ | % 28
    d4  g8 ~| % 29
    g8 [ a c ] | % 30
    fis,8 [ g a ] | % 31
    }
    \alternative {
	 { g4 r8 |} % 32
	 { g4 r8 |} % 32
    }
}

