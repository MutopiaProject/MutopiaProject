\version "2.18.0"

 guitarone = \relative c'' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    r8 b8 [ g ]
    d'8 [ a d ] | % 2
    g4. ~ | % 3
    g8 [ fis ] r8 | % 4
    R1*3/8 | % 5
    R1*3/8 | % 6
    r8 a,8 [ c8 ~ ] | % 7
    c16 [ a b8 ] r8 | % 8
    r8 e8 [ g ] | % 9
    cis,8 a'4 | % 10
    d,8 g4 ~ | % 11
    g8 [ fis e ~ ] | % 12
    e8 [ d c ] ~ | % 13
    c8 b4 | % 14
    a8 [ d cis  ~] | % 15
    } 
    \alternative {
	  { cis8 [d8 ] r8 | } %16
	  { cis8\repeatTie [d8 ] r8 | } %16
    }
  
    \repeat volta 2 {
    r8 fis8 [ d ]
    g8 b4 ~ | % 18
    b8  [ a16 g fis e ] | % 19
    dis16 [ e ] fis4 ~ | % 20
    fis8 [ e8 g8 ] | % 21
    cis,8 [ dis e ] ~ | % 22
    e8 [ dis16 cis b a ] | % 23
    g16 \prall [ fis e8 ] r8 | % 24
    r8 c'8 [ e ] | % 25
    a,8 [ b d ] | % 26
    g,8 c4 ~ | % 27
    c8 [ d c ] | % 28
    b16 [ c ] d4 ~ | % 29
    d16 [ c d c b a ] | % 30
    d8 [ g, fis ~ ] | % 31
    }
    \alternative {
	 {fis8  [ g8 ] r8 |} % 32
	 {fis8\repeatTie  [ g8 ] r8 |} % 32
    } 
}
