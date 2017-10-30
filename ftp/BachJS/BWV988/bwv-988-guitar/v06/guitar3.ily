\version "2.18.0"

 guitarthree = \relative c  {
 \set Staff.instrumentName = "Gtr3 "

    g16 [ fis g a b g ] | %1

 \repeat volta 2 {
    d'16 [ c d e fis d ] | % 2
    g16 [ fis e fis g e ] | % 3
    a16 [ g fis g a fis ] | % 4
    b16 [ a g a b g ] | % 5
 \break
    c16 [ b a g fis e ] | % 6
    fis16 [ e fis d e fis ] | % 7
    g16 [ e d c b a ] | % 8
    g16 [ fis' e d c b ] | % 9
 \break
    cis16 [ a d e fis d ] | % 10
    g16 [ fis e fis g e ] | % 11
    a16 [ g fis g a fis ] | % 12
    b16 [ a g a b a ] | % 13
 \break
    gis8 [ gis, ] r8 | % 14
    a'8 [ a, ] r8 | % 15
  }
  
    \alternative {
	    { d,8 [ d'16 c b a ] | % 16
	    g fis g a b g } % 17
	    { d8 g b | % 16
	    d16 cis d e fis d } %17 
    }

\pageBreak
  
 \repeat volta 2 {
    g16 [ fis e fis g e ] | % 18
    a16 [ g fis g a fis ] | % 19
    b16 [ a gis a b gis ] | % 20
    c16 [ b a b c b ] | % 21
 \break
    ais8 [ ais,8 ] r8 | % 22
    b'8 [ b,8 ] r8 | % 23
    e,8 [ e'16 d c b ] |  %24
    a16 [ c e g fis e ] | % 25
 \break
    fis8 [ g,8 ] r8 | % 26
    g'8 [ a,8 ] r8 | % 27
    a'8 [ b,8 ] r8 | % 28
    b'8 [ c,8 ] r8 | % 29
 \break
    cis8 [ cis'8 cis,8 ] | % 30
    d8 [ d'8 d,8 ]
   }

    \alternative {
	    {g,8 [ g'16 fis e g ] | % 32
	    fis16 [ e d e fis d ]} % 33
	    { g,8 d' g \bar "|."}
 }
}

