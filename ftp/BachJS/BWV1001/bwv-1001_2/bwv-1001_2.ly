\version "2.11.45"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Sonata I BWV 1001"
        subtitle = "\"Sechs Sonaten für Violine\""
        piece = "2. Fuga"
        mutopiatitle = "BWV 1001 Fuga"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1001"
        date = "1720"
        mutopiainstrument = "Violine"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1879 Band 27.1"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/02-1438"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

melodyOne = \relative f' {
	s1 | % 1
	s1 | % 2
	r8 g'8 [ g  g ] g [ f16 es ] f8 [ d ] | % 3
	es4 s4 r8 d8 [ d d ] | % 4
	d8 [ c16 bes ] c8 [ a ] bes4 bes'4 | % 5
	bes8 [ a16 g ] a [ (fis) g8 ] fis16 s8. s4 | % 6 
	d,16 [ a' cis e ] 
	\stemDown f [ a d, c ] b [ d f aes ] g [ f es d ] | % 7
	es16 [ g, c d ] es [ g c, bes ] a [ c es g ] f [ es d c ] | % 8
	\stemUp d16 [ a bes fis ] g [ bes d f, ] e [ g bes d ] c [ a bes g ] | % 9
	fis16 [ a c es ] d [ c bes a ] bes [ g d' f, ] es [ d' g c, ] | % 10
 	fis8 s8 bes8 [ bes ] bes [ a16 g ] a8 [ a ] | % 11
	aes16 [ g ( aes fis )] g8 [ f ] es [ d ] c [ bes ] | % 12
	aes16 [ (fis) fis (g) ] g [ bes, a g ] a [ g' c es] d, [ g a fis ] | % 13
	g8 \stemDown d'' [ d d ] d [ c16 bes ] c8 [ a ] | % 14
	\stemUp bes8 r8 es8 r8 a,8 r8 d4 ~ | % 15
	d8 c[  c  c ] c [ bes16 a ] bes8 [ g ] | % 16
	a8 r8 d8 r8 g,8 r8 c4 ~ | % 17
	c8 bes [ bes bes ] bes [ a16 g ] a8 [ bes16 a ] | % 18
	g8 r8  c8 r8 c8 [ bes16 a ] bes8 [ c16 bes ] | % 19
	a8 r8  d8 r8 d8 r8 c8 r8 | % 20
	f,8 r8 bes8 r8 a8 [ f g a ] | % 21
	bes8 [ a ] g8 r8 g8 [ f16 e ] f8 [ f ] | % 22
	f8 [ e16 d ] e8 [ cis ] d8 r8 r8 d8 | % 23
	d8 r8 cis8. \trill [ d16 ] d8 s4. | % 24
	s1 | % 25
	s2 r8 c8 [ c c ] | % 26
	c8 [ bes16 a ] bes8 [ c16 bes ] a8 r8 d8 r8 | % 27
	d8 [ e16 (f) ] e [ (d) cis (d) ] cis8  a' [ a  a ] | % 28
	a8 [ g16 f ] g8 [ g ] g [ f16 e ] f8 [ f ] | % 29
	bes8 [ (a) ] a [ (gis) ] gis [ (a) ] a [ (fis) ] | % 30
	fis8 [ (g) ] g [ (e )] e [ (f) ] f [ (d) ] | % 31
	d8 [ (es) ] es [ (cis) ] cis [ bes'16 (gis) ] a8 [ cis, ] | % 32
	d8 [ bes'16 (gis) ] a8 [ cis ] d [ (c) ] c [ (bes) ] | % 33
	bes8 [ (a) ] a [ (cis) ] cis [ (d) ] d [ (g,) ] | % 34
	g8. [ a16 ] f8 [ e ] e2 | % 35
	e2 a8 [ g a f ] | % 36
	g2 g8 [ f g e ] | % 37
	f8 [ e f g ] a [ bes a g ] | % 38
	f8 [ e f g ] a [ g a b ] | % 39
	cis8 [ b cis d ] e [ f e d ] | % 40
	cis8 [ b cis d ] e [ d e cis ] | % 41
	\stemNeutral d,,16 [ d' f a ] d [ a f d ] a [ d' c bes ] c [ a fis d ] | % 42
	g,,16 [ g' bes d ] g [ d bes g ] d [ g' f es ] f [ d b g ] | % 43
	c,16 [ c' es g ] c [ g es c ] g [ c' bes a ] bes [ g e c ] | % 44
	f,16 [ c' f g ] aes [ f d bes ] es, [ bes' es f ] g [ es c a ] | % 45
	f'16 [ d b g ] es' [ c aes f ] des' [ bes g es ] c' [aes f d ] | % 46
	g,16 [ d' f b ] d [ b f d ] g, [ d' f b ] d [ b f d ] | % 47
	g,16 [ c es g ] c [ g es c ] g [ c es g ] c [ g es c ] | % 48
	aes16 [ c es g ] c [ g es c ] aes [ c es g ] c [ g es c ] | % 49
	a16 [ d fis a ] c [ a fis d ] a [ d fis a ] c [ a fis d ] | % 50
	g,16 [ c es g ] c [ es (des) b ] (c) [ bes' (aes) fis ] (g) [ f (e f) ] | % 51
	\stemUp f8 r8  c'8 r8 c8 r8 b8 [ d ]  | % 52
	s4 s8 g,8 g [ f16 es ] f8 [ d ] | % 53
	es8 [ d16 c ] des8 [ b ] c8. [ d16 ] b8. [ c16 ] | % 54
	c8 r8 r4 s2| % 55
	s1 | % 56
	r8 f8 [ f f ] f [ es16 d ] es8 [ c16 d32 es ] | % 57
	d8 bes' [ bes bes ] bes [ a16 g ] a8 [b]| % 58
	c8 c [ c c ] c [ bes16 a ] bes8 [ c16 (g)] | % 59
	a8 [ bes16 (f) ] g8 [ a16 (g)] f8 [ g16 d ] es [ c a f ] | % 60
	r8 d'8 [ d d ] d [ es16 d ] c8 [ bes ] | % 61
	a8 f'8 [ f f ] f [ g16 f ] es8 [ d ] | % 62
	g8 [ a16 (bes)] bes [ ( a g f )] bes8 [ f ] es16 [( d c bes )] | % 63
	bes,16 [ d' c d ] bes [ (d) a (d) ] g, [ (d') f, (d') ] es, [ (d') d, (d') ]  | % 64
	es,16 [ (d' g f) ] es [ d c bes ] a [ (c) g (c) ] fis, [ (c') e, (c') ] | % 65
	d,16 [ (c' a') c, ] bes [ a bes g ] a [ d, f' aes, ] g [ f g es ] | % 66
	f16 [ bes, d' f, ] es [ d es c ] d [ g, bes' d, ] es [ c c' e, ] | % 67
	fis16 [ d a' fis ] c' [ a es' c ] fis [ c a' (fis] es [ c a fis) ] | % 68
	d16 [ (c' fis) c ] fis [ c a' c,]  d, [ (c' fis) c ] fis [ c a' c, ] | % 69
	d,16 [ (bes' d) bes ] d [ bes g' bes, ] d, [ (bes' d) bes ] d [ bes g' bes, ]  | % 70
	d,16 [ (a' fis') d ] fis [ d c' d, ] d, [ (d' fis) d ] fis [ d c' d, ] | % 71
	d,16 [ (d' g) d ] g [ d bes' d,] d, [( d' g) d ] g [ d bes' d, ] | % 72
	d,16 [ (cis' e) cis ] e [ cis bes' cis,] d, [ (cis' e) cis ] e [ cis bes' g ]  | % 73
	g16 [ (fis) e (d) ] d'8 [ d ] d [ c16 bes ] c8 [ c ] | % 74
	c8 [ bes16 a ] bes8 [ bes ] bes [ (a) ] a [ (g) ] | % 75
	fis8 [ (g) ] g [ (e) ] e [ (f) ] f [ (d) ] | % 76
	d8 [ es16 (d) ] es [ g bes d, ] cis [ e a cis, ] d [ f a c, ] | % 77
	b16 [ aes' (g f) ] g [ d es b ] c [ aes' (g f) ] g [ d es c ] | % 78
	fis,16 [ a c es ] (d [ c) a' c, ] (d [ es) a, (bes ] c )[ fis, g a ] | % 79
	r8 d8 [ d d ] d [ c16 b16 ] c8 [ a' ] | % 80
	c,8 [ c16 bes ] c8 [ a' ] bes, [ bes16 a ] bes8 [ g' ] | % 81
	bes8. [ a16 ] g [ fis g a ] fis8 g [ g g ] | % 82
	g8 r8  fis8 r8  f8 r8  es8 r8 | % 83
	es8 r8 d8 [ bes' ] g [ aes16 g ] aes [ fis g8 ] | % 84
	fis8 r8 r8 fis8 g [ a ] bes [ fis ] | % 85
	fis8 [ g ] g [ g ] g8. [ a16 ] fis8. [ g16 ]  | % 86
	\stemNeutral g,,16 [ g' bes d ] g [ d bes g ] a [ g' f es ] f [ d b g ] | % 87
	g,16 [ g' c d ] es [ c aes g ] fis [ es' d c ] d [ bes g f ] | % 88
	g,16 [ es' g b ] c [ es aes, g] a, [ c fis a ] c [ es fis a ]  | % 89
	bes,,16 [ d g bes ] d [ fis g bes ] c,, [ es g c ] es [ g a c ]  | % 90
	d,,16 [ c'' bes d, ] cis [ bes' a c, ] b [ aes' g  bes, ] a [ g' f aes, ] | % 91
	g16 [ f' es g, ] fis [ es' d f, ] e [ d' (c b) ]  c [ es, (d c) ] | % 92
	fis'4. ~  fis64 [ g ( a fis g a c, d es c d es a, bes c a bes c fis, g a fis g a )] r8 \stemUp g'8 | % 93
	g16 ~ [ g32 a ( g fis g64 es f32)] f8. \trill [ g16 ] g2 \bar "|." % 94
	
}

 melodyTwo =  \relative d'' {
	 r8^\markup { Allegro } d8 [ d  d ] d [ c16 bes ] c8 [ a ] | % 1
	 \stemUp
	 bes8 r8 es8 r8 a,8 r8 d8 r8 | % 2
	 d8 s8 c8 s8 bes8 s8 a8 s8 | % 3
	 g8 [ g, ] c16 [ bes' (a bes32 c) ] fis,8 s8 g8 s8 | % 4
	 e8 s8 fis8 s8 g8 [ f16 es ] d'8 s8 | % 5
	 c8 s4. c16 [ es d c ] bes [ g' a, g ] | % 6
	 s1 | % 7
	 s1 | % 8
	 s1 | % 9
	 s1 | % 10
	 d'8 [d,] d' [ d ] c8 r8 c8 [ c ] | % 11
	 bes8 r8  bes8 [ b ] g16 [ (f) f (es) ] es [ (d) d (c) ] | % 12
	 c8 s8 s2. | % 13
	 g8 s8 s2. | % 14
	 \stemDown r8 g''8 [ g g ] g [ f16 es ] f8 [ d ] | % 15
	 es8 [ es16 d ] es8 [ f16 es ] d8 r8 g8 r8 | % 16
	 g8 f [ f f ] f [ es16 d ] es8 [ c ] | % 17
	 d8 [ d16 c ] d8 [ es16 d ] c8 r8 f8 r8 | % 18
	 f8 [ es16 d ] es8 [ f16 es ] d8 r8 g8 r8 | % 19
	 g8 [ f16 e ] f8 [ g16 f ] e8 r8  e8 r8 | % 20
	 d8 r8 cis8 r8 d8 [ d d d ] | % 21
	 \stemUp d8 [ d ] d [ cis16 b ] cis8 r8 d8 [ a ] | % 22
	 bes8 s8  s8 a8 a [ g16 f ] g8 [ e ] | % 23
	 f16 [ e d f ] e8. [ d16 ] d8 d [ d d ] | % 24
	 e8 r8 r8  fis8 g  g [ g g ] | % 25
	 g8 [ f16 es ] f8 [ d ] es8 r8 e8 r8 | % 26
	 fis8 r8 g8 r8 g8 [ f16 e ] f8 [ g16 f ] | % 27
	 e8 r8 s4 e8 s8 d'8 s8 | % 28
	 d8 s8 s8 d8 cis8 s8 s8 d8 | % 29 
	 d8 r8 d8 r8 d8 r8 cis8 r8 | % 30
	 c8 r8 b8 r8 bes8 r8 a8 r8 | % 31
	 a8 r8 g8 r8 g8 r8 r8 g8 | % 32
	 f8 s8 s8 g'8 f8 s8 fis8 s8 | % 33
	 \stemDown g8 [ (f) ] f [ (e) ] e [ (f) ] f [ (cis) ] | % 34
	 cis8 [ (a) ] d [ g, ] a [ g a f ] | % 35
	 g8 [ f g e ] f [ e f d ] | % 36
	 d'8 [ cis ] d [ b ] cis2 | % 37
	 d8 [ cis d e ] f [ g f e ] | % 38
	 d8 [ cis d e ] f [ e f d ] | % 39
	 e8 [ d e f ] g [ a g f ] | % 40
	 e8 [ d e f ] g [ f g e ] | % 41
	 s1 | % 42
	 s1 | % 43
	 s1 | % 44
	 s1 | % 45
	 s1 | % 46
	 s1 | % 47
	 s1 | % 48
	 s1 | % 49
	 s1 | % 50
	 s1 | % 51
	 b8 r8  es8 r8 d8 r8 d8 [ f ]  | % 52
	 \stemUp es,16 [ d' (g) b,] c8 [c] c s8 b8 s8 | % 53
	 g8 s8 f8 s8 fis8 s8 d8 r8 | % 54
	 es8 r8 r4  d8 r8 r8 e8 | % 55
	 f8 r8 a8 r8 bes8 r8 c8 r8 | % 56
	 c8 [ bes16 a ]<g bes>8 r8 <g bes>8 r8 r8 f8 | % 57
	 bes8 d [ d d ] d [ c16 bes ] c8 [ d ] | % 58
	 es8 es [ es es ] es [ d16 c ] d8 [ es ] | % 59
	 es [ d ] d [ c ] c [ bes ] s4 | % 60
	 r8 f8 [ f f ] f [ g16 f ] es8 [ d ] | % 61
	 es8 bes' [ bes bes ] bes r8 f8 [ f ] | % 62
	 d'8 r8 c8 s8 s8 bes8 s4 | % 63
 	 s1 | % 64
 	 s1 | % 65
 	 s1 | % 66
 	 s1 | % 67
 	 s1 | % 68
 	 s1 | % 69
 	 s1 | % 70
 	 s1 | % 71
 	 s1 | % 72
 	 s1 | % 73
	 s4 s8 d8 es8 s8 s8 a,8 | % 74
	 d8 s8 s8 d8 d8 s8 cis8 s8 | % 75
	 c8 s8 bes8 s8 bes8 s8 a8 s8 | % 76
	 a8 s8 g16 s16 s8  g16 s16 s8 f16 s16 s8 | % 77
	 f16 r16 r8 s4 es16 r16 r8 s4 | % 78
	 a,16 s16 r8 s2. | % 79 
	 s8 r8 f'8 r8 es8 [ es16 d ] e8 s8 | % 80
	 fis8 [ a16 g ] a8 r8  a8 [ g16 fis ] g8 r8 | % 81
	 cis8. s16 s4 c8 bes [ bes bes ] | % 82
	 a8 r8 a8 r8 d8 r8 g,8 r8 | % 83
	 \stemDown f8 r8 f8 [ d'] d [c16 b ] c8 c | % 84
	 c8 [ es16 (c) ] d8 [ a ] b [ es16 (c)] d8 [ a ] | % 85
	 \stemUp a8 [bes ] bes [ a ] bes8. [ c16 ] a8. s16 | % 86
	 s1 | % 87
	 s1 | % 88
	 s1 | % 89
	 s1 | % 90
	 s1 | % 91
	 s1 | % 92
	 c4. s8 s4 \stemDown d,8 [ cis'] | % 93
	 \stemUp a8 r8 r4 bes2 \bar "|." % 94
}

 melodyThree =  \relative g' {
	 \stemDown 
	 s1 | % 1
	 r8 g8 [ g  g ] g [ f16 es ] f8 [ d ] | % 2
	 es8 r8 es8 r8 d8 r8 d8 r8 | % 3
	 s2 c8 r8 bes8 r8 | % 4
	 a8 r8 d8 r8 g,8 r8  f'8 [ d ] | % 5
	 es8 s8 s4 d16 s16 s8 s4 | % 6
	 s1 | % 7
	 s1 | % 8
	 s1 | % 9
	 s1 | % 10
	 s4 g8 [ g ] es8 r8 f8 [ f ] | % 11
	 d8 r8 es8 [ d ] c8 s8 s4 | % 12
	 s1 | % 13
	 s1 | % 14
	 s1 | % 15
	 s1 | % 16
	 s1 | % 17
	 s1 | % 18
	 s1 | % 19
	 s2 r8 a'8 [ a  a ] | % 20
	 a8 [ g16 f ] g8 [ e ] f [ d e f ] | % 21
	 g8 [ f ] e8 r8 <a, e'>8 r8 d8 [ d ] | % 22
	 <g, d'>8 r8 r8 a8 bes r8 r8 g8 | % 23
	 a8 s8 s2. | % 24
	 d8 [ c16 bes ] c8 [ a ] bes8 r8 g8 r8 | % 25
	 a8 r8 r8  b8 c8 r8 a8 r8 | % 26
	 d8 r8 g8 r8 d8 r8 s4 | % 27
	 gis,8 r8  s4 g8 r8 f'8 r8 | % 28
	 bes8 s4 e,8 a8 r8  r8 d,8 | % 29
	 g8 s8 f8 s8 e8 s8 <a, e'> s8 | % 30
	 d8 r8 d8 r8 <cis g'>8 r8 <d f>8 r8 | % 31
	 bes8 r8 bes8 r8 a8 r8 r8 a8 | % 32
	 a8 r8 r8 a'8 bes r8 a8 r8 | % 33
	 g8 s8 s2. | % 34
	 s4. d'8 d2 | % 35
	 cis2 d2 | % 36
    	 e,2 a2 | % 37
	 d,2 d2 | % 38
	 d2 d2 | % 39
	 d2 d2 | % 40
	 d2 d2 | % 41
	 s1 | % 42
	 s1 | % 43
	 s1 | % 44
	 s1 | % 45
	 s1 | % 46
	 s1 | % 47
	 s1 | % 48
	 s1 | % 49
	 s1 | % 50
	 s1 | % 51
	 <g, d'>8 \stemUp g' [ g g ]<g, g'>8 [f'16 es ]  es8 [ d ] | % 52
	 g,8  s8 s8 es'8 <g, d'>8 s8 g'8 s8 | % 53
	 c,8 r8 aes8 r8 a8 r8 \stemDown g8 r8 | % 54
	 c8 c [ c c ] c [ bes16 a ] bes8 [ g ] | % 55
	 a8 f'8 [ f f ]  f [ es16 d ] es8 [ c ] | % 56
	 d8 r8 g,8 r8 c8 r8 r8 d8 | % 57
	 s8 <bes f'>8 [ <bes f'>8 <bes f'>8 ] f'8 r8 r4 | % 58
	 s8 <c g'>8 [ <c g'>8 <c g'>8 ] g'8 r8 r4 | % 59
	 f8 r8 es8 r8 e8 r8  s4 | % 60
	 bes8 bes [ bes a ] g8 r8 a8 [ bes] | % 61
	 c8 d [ d d ] <g, d'>8 r8 a [ bes ] | % 62
	 es8 r8 s4 r8 d8 f8 r8 | % 63
	 s1 | % 64
	 s1 | % 65
	 s1 | % 66
	 s1 | % 67
	 s1 | % 68
	 s1 | % 69
	 s1 | % 70
	 s1 | % 71
	 s1 | % 72
	 s1 | % 73
	 s4 r8 bes8 g8 r8 r8 a8 | % 74
	 fis8 r8 r8 g8 es8 r8  e8 r8 | % 75
	 d8 r8 r4 <c g'>8 r8 r4 | % 76
	 bes8 r8 r4 a16 r16 r8 r4 | % 77
	 g16 r16 r8 s4 es16 r16 r8 s4 | % 78
	 a16 r16 r8 s2. | % 79 
	 bes8 r8  b8 r8  c8 r8 r4 | % 80
	 d8 r8 s8 r8 d8 r8  g8 r8 | % 81
	 e8. s16 s4 d8 [ d d d ] | % 82
	 d8 [ c16 bes ] <c d>8 [ a ] <b g'>8 [ c16 (b) ] c8 [ g ] | % 83
	 a8 [ bes16 (a) ] bes8 [ d ] es8 r8 r8 es8 | % 84
	 d8 r8 r8 d8 d8 r8 r8 d8 | % 85
	 es8 [ d ] d [ cis ] d8 r8 r4 | % 86
	 s1 | % 87
 	 s1 | % 88
 	 s1 | % 89
 	 s1 | % 90
 	 s1 | % 91
	 s1 | % 92
	 d4. s8 s2 | % 93
	 d8 r8 r4 <g, d'>2 \bar "|." % 94

}

 


melody = << \melodyOne \\ \melodyTwo \\ \melodyThree >>


% The score definition

\score {
	\context Staff << 
        \set Staff.instrumentName = "Violine"
        { \clef treble \key f \major \time 4/4 \melody  }
    >>
	\layout { }
 	 \midi { }
}
