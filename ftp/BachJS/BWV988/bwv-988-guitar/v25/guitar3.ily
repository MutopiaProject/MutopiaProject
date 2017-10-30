\version "2.18.0"

\version "2.18.0"

 guitarthree = \relative c'  {
 \set Staff.instrumentName = "Gtr3 "
 \repeat volta 2 {
    g4 r8 g8 [ g g ] | % 1
    g8 [ fis ] r f [ f f ] | % 2
    f8 [ e ] r8 es8 [ es es ] | % 3
    d4 r8 es8 [ d  c ] | % 4
    bes4 r8 bes8 [ b b ] | % 5
    b8 [ c ] r8 c8 [ cis cis ] | % 6
    cis8 [ d ] r8 d [ d d ] | % 7
    g,4 r8 g [ bes d ] | % 8
    g,8. [ d'16 ] g8 [ f es d ] | % 9
    cis8 [ a d c bes a ] | % 10
    g8 [ c  f, fis g gis ] | % 11
    a8 [ bes a g f e ] | % 12
    f4 r8 fis [ fis g ] | % 13
    g4 r8 gis [ gis a ] | % 14
    a4 r8 a [ cis a ] | % 15
  }       
\alternative { 
	{ d4. c'8 [ bes a ] | } % 16
	{ d,4. a8 d,4 | } % 16
  }
 \repeat volta 2 {
    d'4 r8 c [ c bes ] | % 17
    bes8 [ g16 a ] bes8 [ b b c ] | % 18
    c4 r8 g8 [ as a ] | % 19
    bes4 r8 ces8 [ bes as] | % 20
    ges4 r8 g8 [ g  as ] | % 21
    as4 r8 a8 [ a bes ] | % 22
    bes4 r8 bes8 [ d bes ] | % 23
    es4 r8 f8 [ es  d ] | % 24
    c4 r8 c8 [ c c ] | % 25
    c8 [ b ] r8 bes8 [ bes bes ] | % 26
    bes8 [ a ] r8 as8 [ as g ] | % 27
    g8 [ fis ] r8 fis8 [ ges c ] | % 28
    bes4 r8 bes8 [ bes b ] | % 29
    b16 [ d c8 ] r8 c8 [ c cis ] | % 30
    cis16 [ e d8 ] r8 d8 [ d d ] | % 31
 \noBreak
 }
\alternative {
	{ \grace s16 g4 ~ g8 [ d ] g,16 [ a bes c ] \noBreak |} % 32
	{ g'4 ~ g16 [ fis g d ] g,4 \bar "|." |} % 32
   }
}
