\version "2.18.0"

 guitarone = \relative c' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 2 {
    \tempo \markup \column { Adagio }
    r16 d16 [ \grace es16 d32 cis d16 ]
    \once \override Slur #'control-points = #'((.5 . 3.4) (0.6 . 4.4) (1.8 . 4.9) (2.4 . 4.3))
    \appoggiatura d16 bes'8 ~ [ bes32 a g f ] es16 [ d8 \TUpk cis16 ~ ] | % 1
    cis16 [ c \grace d16 c32 b c16 ] \appoggiatura c16 as'8 ~ [ as32 g f es ] des16 [ c8 b16 ~ ] | % 2
    b16 [ bes  \grace c16 bes32 a bes16 ] fis' [ g8 \TUpk cis,16 ~ ] cis [ d8 g,16 ] | % 3
    g16 [ a32 bes a8 ] r4 r4 | % 4
    r16 d16 [ \grace ees16 d32 cis d16 ] \slurUp \appoggiatura d16 d'8 ~ [ d32 c bes a ] g [ f \TUpb as16 ~ as32 d, f16 ~ ] | % 5
    f16 [ es \grace f16 es32 d es16 ] \slurUp \appoggiatura es16 \TUpb es'8 ~ [ es32 d c bes ] a32 [ g bes16 ~ bes32 e, g16 ~] | % 6
    g16 [ fis \grace g16 fis32 e fis16 ] 
    \times 2/3 { b16 [ c es ] } 
    \scaleDurations #'(2 . 3) {
	cis16  [d fis, ]
	 bes16 [ a d,]
	es16 [ b \TUpk c ~ ]
    } | % 7
    c16 [ bes32 a bes8 ] r4 r4 | % 8
    r32 d,32 [ e fis g bes \TDne a16 ~ ] a16 [ bes8 b16 ] c16 [ cis8 d16 ] | % 9
    dis16 [ \TUpo e ~ e32 bes' a g ] fis [ e d8 d16 ] d' [ cis8 c16 ] | % 10
    b16 [ bes ~ bes32 a gis16 ~ ] gis [ a ~ a32 d, c bes ] c [ a bes g f e f d' ] | % 11
    f,32 \prallprall [ e f16 e8 ] r32 d32 [ cis d e f g a ] bes [ a \TUpa d16 ~ d32 cis e16 ~ ] | % 12
    e16 [ a, \grace bes16 a32 gis a16 ] \slurUp \appoggiatura a16 a'8 ~ [ a32 bes (a gis ) ] a-. [ d, c bes c-. c (bes a ) ] | % 13
    a16 [ bes \grace c16 bes32 a bes16 ] \slurUp \appoggiatura bes16 bes'8 ~ [ bes32 es, d cis ] d [ c' b8 d,16 ] | % 14
    cis16 [ bes8 a16 ] es'16 [ \TUpa d ~ d32 cis e g ] bes16 [ \TUpc a ~ a64 g f e d32 cis ] | % 15 
 }        
	
 \alternative {
    { cis8 ([ d ]) r4 r4 }
    {cis8 ([ d ]) r4 r4 }
 }

 \repeat volta 2 {
    r16 a'16 [
    \grace bes16 a32 gis a16 ] es [ \TUpa d ~ d32 es fis g ] a [ c, es8 \TUpa d16 ~ ] | % 18
    d16 [ f \grace g16 f32 es f16 ] as, [ \TDn g ~ g32 a b c ] d [ f, as8 \TDn g16 ~ ] | % 19
    g16 [ c8 b16 ] c32 [ es des8 \TUpk c16 ~ ] c32 [ f \TUpo es16 ~ es32 f es d ] | % 20
    es32 [ a ( bes16 es, d ) ] r4 r4 | % 21
    r16 bes16 [ \grace ces16 bes32 as bes16 ] bes [ \TUpa bes' ~ bes32 ces bes as ] bes16 [ \TUpa des, ~ des32 ces! \TUpa bes16 ~ ] | % 22
    bes16 [ ces
    \grace des16 ces32 bes ces16 ] ces [ ces' ~ ces32 fes, es d] es [ des' c8 es,16 ] | % 23
    d16 [ ces8 bes16 ] fes' [ \TUpo es ~ es32 d f as ] ces16 [ bes ~ bes64 as64 ges64 f64 es32 d ] | % 24
    d8 [ es8 ] r4 r4 | % 25
    r16 g,16 [ \grace as16 g32 fis g16 ]
    \once \override Slur #'control-points = #'((.5 . 1.6) (0.6 . 2.7) (1.8 . 2.8) (2.4 . 2.3))
    \appoggiatura g16 \TUpo es'8 ~ [ es32 d c bes ] as16 [ g8 \TDno fis16 ] ~ | % 26
    fis16 [ f \grace g16 f32 e f16 ] \TUpa des'8 ~ [ des32 c bes as ] ges16 [ f8 e16 ~ ] | % 27
    e16 [ es \grace f16 es32 d es16 ] \TDne c'8 ~ [ c32 bes as g ] fis16 [ \TUpo es' ~ es32 d cis16 ] | % 28
    cis16 [ ( d ) es, ( d ) ] r32 e32 [ fis g a bes c d ] es [ d g16 ~ g32 fis a16 ~ ] | % 29
    a16 [ d,
    \once \override Slur #'control-points = #'((0.5 . 0.7) (0.8 . 0.3) (1.3 . 0.1) (1.6 . 0.4))
    \grace es16 d32 cis d16 ] d'8 ~ [ d32 c bes a ] g [ d' f,16 ~ f32 es d c ] | % 30
    d32 [ as' g f es d c b ] c [ f es d c bes a g ] a [ d c bes a g fis e ] | % 31
    fis32 [ bes a g fis e d cis ] d [ g fis e d c bes a ] bes [ es d c bes a g fis ] | % 32
}
\alternative {
	{ \grace fis16  g4 r4 r4 |} % 33
	{ g4 r4 r4 |} 
    }
}


