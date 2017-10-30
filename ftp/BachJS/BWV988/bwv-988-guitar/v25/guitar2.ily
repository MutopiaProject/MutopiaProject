\version "2.18.0"

\version "2.18.0"

 guitartwo = \relative c' {
 \set Staff.instrumentName = "Gtr2 "
 \repeat volta 2 {
    bes4 r8 d8 [ c bes ] | % 1
    a4 r8 c8 [ bes as ] | % 2
    g4 r8 bes8 [ a g ~ ] | % 3
    g8 [ fis16 e ] fis [ a8 c16 ~ ] c [ fis,8 a16 ~ ] | % 4
    a16 [ fis g8 ] r8 g8 d16 [ f g as ] | % 5
    as8 [ g ] r8 a e16 [ g a bes ] | % 6
    bes8 [ a ] r8 a [ g \TDno fis ~ ] | % 7
    fis8 [ g16 fis ] g [ d8 es16 ~ ] es32 [ d \TDn g16 ~ g32 fis c'16 ~ ] | % 8
    c16 [ bes32 a bes8 ] r8 g [ g g ] | %9
    g8 [ fis ] r8 f [ f f ] | % 10
    f8 [ e ] r8 es [ es d ] | % 11
    d8 [ cis ] r4 r4 | % 12
    r8 d8 [ d es ] es4 | % 13
    r8 e8 [ e f ] f4 | % 14
    r8 fis8 [ fis g ] g4 ~ | % 15
 }        
\alternative { 
	{ g8 [ fis16 e ] fis4 r4 }
	{ g8\repeatTie [ fis16 e ] fis4 r4 }
}
 
 \repeat volta 2 {
    r8 f8 [ f fis fis g ] | % 18
    g8 [ d ] r8 f8 [ f es ] |
    es8 [ d es e f ges ~] |
    ges8 [ f16 ges ] as [ d,8 es32 f ] ges [ es f8 ces16 ] |
    ces16 [ bes es8 ] es [ fes ] fes4 |
    r8 f [ f ges ] ges4 | 
    r8 g [ g as ] \TDng as4 ~ | % 24
    as8 [ g16 f ] g8. [ a32 b ] c [ f, as8 g16 ] |
    f8 [ es ] r8 g [ f es ] |
    d4 r8 f8 [ es des ] | % 27
    c4 r8 es16 [ d ] c8 [ bes ] |
    a8. [ a16 ] d8 [ c bes a ] |
    d8 [ fis fis g g as ] |
    r8 g [ g a a bes ] |
    r8 a [ a bes bes c ~ ] |
} 
\alternative {
	{ \grace s16 c8 [ bes16 a ] bes4 r4 |}
	{ c8\repeatTie [ bes16 a ] bes8 r8 r4 |}
    }
}
