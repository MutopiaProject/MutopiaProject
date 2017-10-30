\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    R1*3/8 | % 1
    r8 d8 [ fis ] | % 2
    b,8 [ g' c ] | % 3
    b16 [ g a8 ] r8 | % 4
    R1*3/8 | % 5
    r8 c,8 [ e ] | % 6
    a,8 d4 ~ | % 7
    d8 [ g8 ] r8 | % 8
    R1*3/8 | % 9
    R1*3/8 | % 10
    r8 cis8 [ e ] | % 11
    a,4 g8 ~ | % 12
    g8 [ fis a ] | % 13
    d,8 [ e g ] | % 14
    cis,8 [ a' g ] ~ | % 15
    }
    \alternative {
	 {g16 [ e fis8 ] r8 | } % 16
	 {g16\repeatTie [ e fis8 ] r8 | } % 16
    }
  
 \repeat volta 2 {
    R1*3/8 | % 17
    r8 d'8 [ b ] | % 18
    g8 [ a c ] | % 19
    fis,4 r8 | % 20
    r8 b8 [ g ] | % 21
    e8 [ fis g ] | % 22
    fis4. | % 23
    e4 r8 | % 24
    r8 a8 [ c ] | % 25
    fis,8 [ g b ] | % 26
    e,8 a4 ~ | % 27
    a8 [ fis a ~ ] | % 28
    a8 [ g b ] | % 29
    e,4. | % 30
    a,8 [ d  c ~ ] | % 31  
    }
    \alternative {
	 {  c16 [ a b8 ] r8 | }% 32 
	 {  c16\repeatTie [ a b8 ] r8 | }% 32 
   } 
}
