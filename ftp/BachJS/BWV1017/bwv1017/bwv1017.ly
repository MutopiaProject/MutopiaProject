\version "2.12.2"

\header {
	title = "SONATA IV."
	composer = "J.S. Bach"
	opus = "BWV 1017"
	
	mutopiatitle = "Sonata for Violin and Clavier No.4"
	mutopiacomposer = "BachJS"
	mutopiaopus = "BWV 1017"
	mutopiainstrument = "Violin & Clavier"
	source = "Leipzig: Breitkopf & Härtel, (1860). Plate B.W.IX"
	style = "Baroque"
	copyright = "Public Domain"
	maintainer = "Ryan Prince"
	maintainerEmail = "rprincerp@gmail.com"
	moreInfo = "This file was created from a public domain scan of the work. The source is located in the Petrucci Music Library, http://imslp.org/."

 footer = "Mutopia-2010/01/09-1733"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

nb = \noBreak
pb = \pageBreak
br = {\break \noPageBreak}

%\paper { #(set-paper-size "a4") }

#(set-global-staff-size 17)

violinoMusicOne = \relative c''
{ \key c \minor \time 6/8
	\repeat volta 2
	{	\once \override TextScript #'extra-offset = #'(-2.0 . 0.0) g8.
			(^\markup { \large "Largo." } \once \override
			TextScript #'extra-offset = #'(-8.5 . 1.0) es'16)
			^\markup { \huge "Siciliano." } d8 c8.(\trill
			b16) c8												\nb			| % 1
		c4.( c4) r8												\nb			| % 2
		c8.( aes'!16) g8 f8.(\trill e16) f8						\nb			| % 3
		f2.~													\br			| % 4
		f8. d16 b8 aes!8.( g16) f'8								\nb			| % 5
		es8. f16 d8 c4.~										\nb			| % 6
		c8.[ d32\( es f8]~ f8. d16\) es8						\nb			| % 7
		aes,2.~													\br			| % 8
		aes8.[ aes'32\( bes c8]~ c8. a16\) bes8					\nb			| % 9
		d,8.(\trill c16) bes8 ges'4.~							\nb			| % 10
		ges8.[ f32\( ges aes8]~ aes\) ges16\( f es d\)			\nb			| % 11
		es2.~													\br			| % 12
		es8.( fis16) g8~ g8.( es16) d8							\nb			| % 13
		c8.( fis16) g8~ g8.( c,16) bes8							\nb			| % 14
		a8.( c16 es8~ es8.( fis16) a8							\nb			| % 15
	}
	\alternative
	{
		{
			b,2.												\nb			| % 16
		}
		{
			b2. 												\pb			| % 17
		}
	}
	\bar "|:" d8.\( b16\) g8 f'16.[\( g32 aes16 g\) f8]			\nb			| % 18
	es4.~ es8.( g16) c,8										\nb			| % 19
	des8.( bes16) e,8 g'16.[\( aes32 bes16 aes\) g8]			\nb			| % 20
	aes2.~														\br			| % 21
	aes8.( f16) ges8~ ges8.( e16 f8)							\nb			| % 22
	bes16.[\( c32 des16 c\) bes8] bes8.( ges16) f8				\nb			| % 23
	e16\( g! f8.\) bes16 aes\( des c aes\) bes( g)				\nb			| % 24
	f2.															\br			| % 25
	d8.( es16) f8~ f8.( g16) aes8~								\nb			| % 26
	aes8.( bes16) c8~ c8.( bes16) aes8							\nb			| % 27
	g8.( f16) es8 d16( es f b,) c8								\nb			| % 28
	b8.( a16) g8 g4.~											\br			| % 29
	g8.( b16) c8~ c8.( aes!16) g8								\nb			| % 30
	f8.( b16) c8~ c8.( f,16) es8								\nb			| % 31
	d8.( f16) aes8~ aes8.( g16) es'8							\nb			| % 32
	\grace d8( c2.~)											\br			| % 33
	c8.[ d32\( es f8]~ f8. d16\) es8							\nb			| % 34
	aes,8.[\( bes32 c des8~\)] des8.( b16) c8					\nb			| % 35
	fis8.[\(\trill e32 fis\) g8~\(] g16 aes g( es) f( d)\)		\nb			| % 36
	c2.\trill													\pb	  \bar":|"% 37
}
cembaloRHMusicOne = \relative c'
{ \clef treble \key c \minor \time 6/8
	c16\( es g c g es\) c\( es g c g es\)									| % 1
	c\( f aes c aes f\) c\( e g bes aes g\)									| % 2
	aes\( bes c f c aes\) f\( aes c f c aes\)								| % 3
	f b d f d b f aes c f c aes												| % 4
	g b d f d c b! d f aes c, b												| % 5
	c es g c g es c es g c g es												| % 6
	c f aes c aes f d f g bes g es											| % 7
	c es f aes g f c es f aes g f											| % 8
	bes,\( c d\) f es d aes'\( g f es d c\)									| % 9
	bes d f bes f d es ges a c bes a										| % 10
	es\( f ges\) bes d, c d f d bes f aes									| % 11
	g bes es g es bes g b d f d b											| % 12
	g b c es d c d\( fis g\) a bes! g										| % 13
	fis g a es d c bes c d a'! fis! g										| % 14
	c, es! fis a fis es c es c a c fis!										| % 15
	g d b g b d g4 s8														| % 16
	g16 d b g b d g4.														| % 17
	g,16 b d g d b g\( b d f d b\)											| % 18
	g b c es c b c es g c g f												| % 19
	g bes! g e des c bes c e g f e											| % 20
	c e f aes f c f, g aes c aes f											| % 21
	des\( f bes des c bes\) a c es ges f es									| % 22
	f a bes aes ges f es ges f es des c										| % 23
	des\( c bes a bes\) e f g aes! f c e!									| % 24
	f aes c aes f e f aes f c aes g											| % 25
	f g aes d aes g aes bes c es d c										| % 26
	bes c d f d c d es f aes g f											| % 27
	g\( f es d c\) es aes g f es d c										| % 28
	g b d f d b g b d g d b													| % 29
	g b c es d c g'\( f es d c b!\)											| % 30
	c e f aes! g f c' g es g c, es											| % 31
	aes c, f aes f d b d f d b g											| % 32
	es' c bes! aes g f es aes g f es d										| % 33
	c f aes c aes f d f g bes g es											| % 34
	f aes des f des! b g aes' g f es d										| % 35
	c b a g f d' es, d es c' d, b'!											| % 36
	c2.																		| % 37
}
cembaloLHMusicOne = \relative c
{ \key c \minor \time 6/8 \clef bass
	c8\( es g\) bes,\( es g\)												| % 1
	aes,\( c f\) g,\( bes e\)												| % 2
	f,\( aes c\) es,!\( aes c\)												| % 3
	d, f aes c, f aes														| % 4
	b f' aes g, d' g														| % 5
	c, es g bes, es g														| % 6
	aes, c f g, bes es														| % 7
	f aes c es, aes c														| % 8
	d, f aes es f g															| % 9
	aes, d f a, c es														| % 10
	bes es f bes, d aes'													| % 11
	es g bes d, g b															| % 12
	c, es g bes,! d g														| % 13
	a, c es g, bes es														| % 14
	fis, a c d, a' d														| % 15
	g,4.~ g16 b d f d b														| % 16
	g2.																		| % 17
	g8 b d g b d															| % 18
	c es g g, c es															| % 19
	e, g bes c, g' c														| % 20
	f,, aes c aes c f														| % 21
	bes, f' bes c, es a														| % 22
	des, f bes c, es aes!													| % 23
	bes, des g c, f c'														| % 24
	f,, aes c aes c f														| % 25
	bes, d bes' c, es aes													| % 26
	d, f aes bes, d bes'													| % 27
	es, g c f, aes d														| % 28
	g, b d f, b d															| % 29
	es, g c c, es g															| % 30
	aes, c f g, c es														| % 31
	f, c' d g, b g'															| % 32
	c, es g bes, es g														| % 33
	aes, c d g, bes es														| % 34
	f, aes f' es, g c														| % 35
	d, c' b c es, g															| % 36
	c16 es c g es g c,4.													| % 37
}
violinoMusicTwo = \relative c''
{ \key c \minor \time 4/4 \clef treble \set Score.currentBarNumber = #38
	\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
		r1 ^\markup { \huge "Allegro." }						\nb			| % 38
	r															\nb			| % 39
	r															\br			| % 40
	r															\nb			| % 41
	r															\nb			| % 42
	g'16[ a bes g] a8[ d,] \stemDown g[ \stemUp g,]
		\stemNeutral bes'4~										\br			| % 43
	bes16 a( bes d) c( bes a) c bes4 r8 d						\nb			| % 44
	es,16( d es) g c8 c c d, bes'4~								\nb			| % 45
	bes8 es16( d) c( bes) a( g) fis d( es d) c a'! d,( c)		\br			| % 46
	bes8 g' a, fis' g16 bes g f e des( c bes)					\nb			| % 47
	aes!( g aes) c f4~ f16 aes f d b aes!( g f)					\nb			| % 48
	es( f g) es' b8. c16 c4 r16 c d es							\br			| % 49
	aes,8 c d f bes,16 d es f g4~								\nb			| % 50
	g8 f16 es d es f d b8 es16 d c d es c						\nb			| % 51
	aes8 c f4~ f8 b, aes'4~										\pb			| % 52
	aes16 g( f es) g( f) es( d) es( d es) g c8 c				\nb			| % 53
	c d, bes'4 c,16( bes c) es aes8 aes							\nb			| % 54
	aes bes, g'4 aes,16( g aes) c f8 f							\br			| % 55
	f g, es'4~ es8 c'16 bes aes( g) f( es)						\nb			| % 56
	d16\( c bes c d es f\) aes, g( f g) bes es8 g,				\nb			| % 57
	f es' d bes aes16( g aes) c f8 aes,							\br			| % 58
	g f' es c bes16( a bes) d g8 bes,							\nb			| % 59
	a g' fis16 d e fis g4~ g16 bes a g							\nb			| % 60
	fis( g a) d, g2 fis!4										\br			| % 61
	g bes,16( aes bes) es aes2\trill							\nb			| % 62
	g4 g,16( f g) c f2\trill									\nb			| % 63
	es4 r8 g~ g16 f es d c bes aes g							\br			| % 64
	aes f bes g c8 bes16( aes) aes8\trill g r16 g a b			\nb			| % 65
	c( b c es) d( c b c) d( c) b! a g8 c						\nb			| % 66
	aes\trill f r aes~ aes16 f d b g8 b'!						\pb			| % 67
	c8. d16 d8. c16 c2~											\nb			| % 68
	c2~ c16( bes c) f aes4~										\nb			| % 69
	aes16( g aes!) b d8 f, es8. d16 d8. d16						\br			| % 70
	c4 r r8 aes'16( f) d( es32 f) es16 d						\nb			| % 71
	d2~ d8 c4 b8												\nb			| % 72
	c16 d es c d8 g, \stemDown c8[ \stemUp c,]
		\stemNeutral es'4~										\br			| % 73
	es16 d( es g) f( es d) f es d c d es fis g a				\nb			| % 74
	bes,8 d16( bes) g( a32 bes) a16( g) g2~						\nb			| % 75
	g16 fis( a c) es( d32 c d16) a! bes8. c16 bes( a) d8		\br			| % 76
	bes\trill g r d'~( d16 c) d es f( es) d f					\nb			| % 77
	es8 e f fis g2~												\nb			| % 78
	g8 f!16 e f4~ f8 es16 d es8 r								\br			| % 79
	f,16( es f) aes d8 bes bes\trill aes r4						\nb			| % 80
	des16( c des) f bes8 g g\trill f r4							\nb			| % 81
	bes,16( aes bes) des g( f g) bes g c aes f g8 c,			\pb			| % 82
	\stemDown f[ \stemUp f,] \stemNeutral aes'4~ aes16			\nb			| % 83
		g( aes c) bes( aes g) bes
	aes4 r8 c des,16( c des) f bes8 bes							\nb			| % 84
	bes c, aes'4~ aes8 des16( c) bes( aes) g( f)				\br			| % 85
	e c( des c) bes g' c,( bes) aes8 f' g, e'!					\nb			| % 86
	f,16( e f) bes des bes( a bes) es,( des es) a! c a( g a)	\nb			| % 87
	des,( c des) f bes ges( f ges) e4 r8 f'16( e!)				\br			| % 88
	f8. g16 e8. f16 f8 g aes4~									\nb			| % 89
	aes8. bes16 aes16\( g f g f\) a, bes c d es f d				\nb			| % 90
	b c d b g8 c~ c b!16 c d8 d									\br			| % 91
	d\trill c f f f\trill es16 f g8 g							\nb			| % 92
	g\trill f16 g aes8 aes aes\trill g16 aes bes8 bes,			\nb			| % 93
	c es aes d, g4. c,8											\br			| % 94
	f16 g f es d c b d g,4 r8 b									\nb			| % 95
	c8. d16 b8. c16 c4 r16 g' f es								\nb			| % 96
	d( c bes!) c des( c des) g g8 aes, r16 es' d c				\pb			| % 97
	bes( aes g) aes bes( aes bes) es es8 f, r16 c' bes aes		\nb			| % 98
	g( f es) f g aes bes g c8 d, es c'							\nb			| % 99
	f, g16 aes bes c d bes es f g es f8 bes,					\br			| % 100
	\stemDown es[ \stemUp es,] \stemNeutral g'4~ g16
		fis( g bes) a( g fis) a									\nb			| % 101
	g4 r8 bes c,16( bes c) es aes8 aes							\nb			| % 102
	aes bes, g'4~ g8 c16( bes) aes( g) f( es)					\br			| % 103
	d bes( c bes) aes f' bes,( aes) g8 es' f, d'~				\nb			| % 104
	d16 g, a bes c d es f g8 f4 a8								\nb			| % 105
	bes a16 g f4~ f16 es d c bes a g f							\br			| % 106
	g e a f bes8 a16( g) g8\trill f r16 f g a!					\nb			| % 107
	bes( a bes d) c( bes a bes) c( bes) a g f8 bes				\nb			| % 108
	g\trill es r g'~ g16 es c a f8 a							\br			| % 109
	bes8. c16 c8. bes16 bes( a bes) d f d( c bes)				\nb			| % 110
	a( bes c) e f a,! c b c( b c) es g es( d c)					\nb			| % 111
	bes!( c d) fis g bes, d cis d( cis d) f a( f e d)			\pb			| % 112
	cis( d e) cis) a4~ a16 d, e! f g4~							\nb			| % 113
	g16 bes a g f a d c bes a g f g( f e f)						\nb			| % 114
	d4 r g16( f g) bes es8 a,									\br			| % 115
	a\trill g r4 c16( bes c) fis a( g a) c						\nb			| % 116
	a8\trill( g) bes,16( aes! bes) es aes!2\trill				\nb			| % 117
	g4 g,16( f g) c f2\trill									\br			| % 118
	es16 g, a b c d es c a! bes c a f8 bes~						\nb			| % 119
	bes a16 bes c4~ c8. d16 c( bes) a!( bes)					\nb			| % 120
	a es' c a fis es! d c bes( c d) bes' fis!8. g16				\br			| % 121
	g4 r16 g a bes es,8 g a c									\nb			| % 122
	f,16 a bes c d4~ d8 c16 bes a! bes c a						\nb			| % 123
	fis8 bes16 a g a bes g es8 g c4~							\br			| % 124
	c8 fis, es'4~ es16 d( c bes) d( c) bes( a)					\nb			| % 125
	bes8 d16( bes) g( a32 bes) a16( g) g2~						\nb			| % 126
	g16 fis( a c) es( d32 c d16) a bes8. c16 bes( a) d8			\pb			| % 127
	bes\trill g r d'~( d16 c) d es f( es) d f					\nb			| % 128
	es8 e f fis g4 r											\nb			| % 129
	r16 d es! f g aes bes g aes8 aes16( f) d( es32 f) es16( d)	\br			| % 130
	d2~ d8 c4 b8												\nb			| % 131
	c16 d es c d8 g, \stemDown c[ \stemUp c,]
		\stemNeutral es'4~										\nb			| % 132
	es16 d( es g) f( es d) f es g es c a g' f es				\br			| % 133
	d f d bes g f' es des c4~ c16 des! c bes					\nb			| % 134
	aes g aes8~ aes16 aes' g f es d es8~ es16 es d c			\nb			| % 135
	b( a b) d g8 g g aes, f'4									\br			| % 136
	g,16( f g) b es8 es es f, d'4								\nb			| % 137
	es,16( d es) g c8 c c d, b'4								\nb			| % 138
	c16 d es c d8 g, \stemDown c[ \stemUp c,]
		\stemNeutral es'4~										\br			| % 139
	es16 d( es g) f( es d) g es4 r8 g							\nb			| % 140
	aes,16( g aes) c f8 f f g, es'4~							\nb			| % 141
	es8 aes16( g) f( es) d( c) b g( aes g) f d' g,( f)			\pb			| % 142
	es8 c' d, b' c16( bes c) f aes f( e f)						\nb			| % 143
	bes,!( aes bes) e g e( d e) aes,( g aes) c f des( c des)	\nb			| % 144
	b4 r8 c16( b) c8. d16 b!8. c16								\nb			| % 145
	c1\fermata													\br	  \bar "|."%146
}
cembaloRHMusicTwo = \relative c''
{ \key c \minor \time 4/4 \clef treble 
	c16 d es c d8 g, \stemDown c[ \stemUp c,] \stemNeutral es'4~			| % 38
	es16 d es g f es d f es4 r8 g											| % 39
	aes,16( g aes) c f8 f f g, es'4~										| % 40
	es8 aes16 g f es d c b g aes g f d' g, f								| % 41
	es8 c' d, b' c16 es c a fis es! d c										| % 42
	bes!4 r8 d'~ d16 c bes a g f es d										| % 43
	es c f d g8 f16 es es8\trill d r16 d' e fis								| % 44
	g fis g bes a g fis g a g fis! e d8 g									| % 45
	es\trill c r es~ es16 c a fis \stemUp d8 \stemDown fis' \stemNeutral	| % 46
	g8. a16 a8. g16 g4 r8 g,~												| % 47
	g16 e f g aes! b c d g,4 r8 d'											| % 48
	d\trill c f f f\trill es16 f g8 g										| % 49
	g\trill f16 g aes8 aes aes\trill g16 aes bes8 bes,						| % 50
	c es aes d, g4. c,8														| % 51
	f16 g f es d c b d g,4 r8 b!											| % 52
	c8. d16 b8. c16 c4 r16 g' f es											| % 53
	d\( c bes c des c des\) g g8 aes, r16 es' d c							| % 54
	bes\( aes g aes bes aes bes\) es es8 f, r16 c' bes aes					| % 55
	g16 f es f g aes bes g c8 d, es c'										| % 56
	f, g16 aes bes c d bes es( d es) g bes g( f es)							| % 57
	d( es f) a bes d,( f e) f( e f) aes c aes( g f)							| % 58
	es( f g) b c es,( g fis) g( fis g) bes d bes( a g)						| % 59
	fis g a fis d4~ d16 g, a! bes c4~										| % 60
	c16 es d c bes d g f es d c bes c bes a bes								| % 61
	g4 r c16( bes c) es aes8 d,												| % 62
	d\trill c r4 f,16( es f) aes d( c d) f									| % 63
	d g es c d8 g, \stemDown c[ \stemUp c,] \stemNeutral es'4~				| % 64
	es16 d es g f es d f es4 r8 g											| % 65
	aes,16( g aes) c f8 f f g, es'4~										| % 66
	es8 aes16 g f es d c b g aes g f d' g, f								| % 67
	es8 c' d, b' c16( bes c) f aes f( e f)									| % 68
	bes,( aes bes) e g e( d e) aes,( g aes) c f des( c des)					| % 69
	b4 r8 c16 b c8. d16 b8. c16												| % 70
	c8 g'16( es) c( d32 es) d16 c c2~										| % 71
	c16 b d f aes g32 f g16 d es8. f16 es d g8								| % 72
	es8\trill c r g'~ g16( f) g aes bes aes g bes							| % 73
	aes8 a bes b c4 r														| % 74
	r2 r8 es,16( c) a( bes32 c) bes16 a										| % 75
	a2~ a8 g4 fis8															| % 76
	g16 a bes g a8 d, g g, bes'4~											| % 77
	bes16 a bes d c bes a c bes d bes g e des' c bes						| % 78
	aes c aes f d c' bes aes g8 r g16( f g) c								| % 79
	f2\trill es4 es,16( d es) aes											| % 80
	des2\trill c4 c,16( bes c) f											| % 81
	bes2\trill aes!4 r8 c~													| % 82
	c16 bes aes g f es des c des bes es c f8 es16 des!						| % 83
	des8\trill c r16 c' d! e f e f aes g f e f								| % 84
	g f e d c8 f des\trill bes r des~										| % 85
	des16 bes g e \stemUp c8[ \stemDown e'] \stemNeutral f8. g16 g8. f16	| % 86
	f1~																		| % 87
	f16 e f bes des,4~ des16 c des! e! g8 bes,								| % 88
	aes8. g16 g8. f16 f c' d e f g aes f									| % 89
	d es! f d bes8 es~es d16 es f4~											| % 90
	f8. g16 f\( es d es d\) aes' f d b aes! g f								| % 91
	es f g es' \stemUp b8. c16 c4 d16\rest c d es							| % 92
	aes,8 c d f bes,16 d es f g4^~											| % 93
	g8 f16 es d es f d b8 es16 d c d es c									| % 94
	aes8 c f4^~ f8 b, \stemNeutral aes'4~									| % 95
	aes16( g f) es g( f es d) es( d es) g c8 c								| % 96
	c d, bes'4 c,16( bes c) es aes8 aes										| % 97
	aes bes, g'4 aes,16( g aes) c f8 f										| % 98
	f g, es'4~ es8 c'16 bes aes g f es										| % 99
	d c bes c d es f aes, g4 r8 bes'~										| % 100
	bes16 aes g f es d c bes c a d bes es8 d16 c							| % 101
	c8\trill bes r16 bes c d es( d es) g f es d es							| % 102
	f es d c bes8 es c\trill aes r c'~										| % 103
	c16 aes f d bes8 d es8. f16 f8.\trill es32 f							| % 104
	g4~ g16 f es d c bes a bes c es d c										| % 105
	bes c d bes c8 f, bes bes, d'4~											| % 106
	d16 cis d f e d cis e d4 r8 f											| % 107
	g,16( f g) bes es8 es es f, d'4~										| % 108
	d8 g16 f es d c bes a f g f es c' f, es									| % 109
	d8 bes' c, a' d,16( c d) f bes8 d,										| % 110
	c bes' a f es16( d es) g c8 es,											| % 111
	d c' bes g f16 e f a d8 f,												| % 112
	e8 d' cis16 aes b cis d4~ d16 f e! d									| % 113
	cis d e aes, d2 cis!4													| % 114
	d f,16( es! f) bes es2\trill											| % 115
	d4 d,16( c d) g c2\trill												| % 116
	bes4 r c16( bes c)es aes8 d,											| % 117
	d\trill c r4 f,16( es f) b d( c d) f									| % 118
	d8\trill c16 d es4~ es8. f16 es16( d) c( d)								| % 119
	c e, f g a bes c a fis g a fis d8 g~									| % 120
	g fis16 g a8 a a\trill g c c											| % 121
	c\trill bes16 c d8 d d\trill c16 d es8 es								| % 122
	es\trill d16 es \stemDown f8[ \stemUp f,] \stemNeutral g8 bes es a,		| % 123
	d4. g,8 c16 d c bes a g fis a											| % 124
	d,4 r8 fis' g8. a16 fis!8. g16											| % 125
	g4 r r8 es16( c) a( bes32 c) bes16 a									| % 126
	a2~ a8 g4 fis8															| % 127
	g16 a bes g aes8 d, g g, bes'4~											| % 128
	bes16 a bes d c bes a c bes a bes c d es f d							| % 129
	es8 g16( es) c( d32 es) d16 c c2~										| % 130
	c16 b d f aes! g32 f g16 d es8. f16 es d g8								| % 131
	es c r g'~ g16 f g aes bes aes g bes									| % 132
	aes8 a bes b c2~														| % 133
	c8 bes!16 a bes4~ bes16 c e, f g4~										| % 134
	g16 c aes f d4~ d16 g es c a4~											| % 135
	a16 fis g b es c b c aes( g aes) c f! d c d								| % 136
	b( a b) d g es d es c( b c) es aes! f es f								| % 137
	g c g f es c' aes g f c' f, es d aes' g f								| % 138
	es g f8~ f16 aes g f es f es d c bes aes g								| % 139
	aes f bes g c8 bes16 aes aes8\trill g r16 g a b							| % 140
	c( b c) es d c b c d c b! a g8 c										| % 141
	aes\trill f r aes~ aes16 f d b g8 b'									| % 142
	c8. d16 d8. c16 c2~														| % 143
	c~ c16 bes c f aes4~													| % 144
	aes16 g aes! b d8 f, es8. d16 d8. c16									| % 145
	c1\fermata																| % 146
}
cembaloLHMusicTwo = \relative c'
{ \key c \minor \time 4/4 \clef bass
	c4 bes aes r16 g f es													| % 38
	f8 g aes bes es,16 bes' c d es4~										| % 39
	es8 d16 c d es d c b8 g r16 c, d es										| % 40
	f es f g aes8 f g4 r16 f es d											| % 41
	c bes aes g f8 g c, c' d fis											| % 42
	g4 f! es r16 d c bes													| % 43
	c8 d es f bes,16 f' g a bes4~											| % 44
	bes8 a16 g a bes a g fis8 d r16 g a bes									| % 45
	c bes c d es8 c d4 r16 c bes a											| % 46
	g16 f es d c8 d g, bes c e												| % 47
	f es! d c b d g, b														| % 48
	c16 d es c d8 g, c c, es'4~												| % 49
	es16 d es g f es d f es4 r8 g											| % 50
	aes,16( g aes) c f8 f f g, es'4~										| % 51
	es8 aes16 g f es d c b g\( aes g f d' g, f								| % 52
	es8\) aes d, g c, d es f												| % 53
	g f es g aes bes c d													| % 54
	es d c es f g aes bes													| % 55
	c d c bes aes bes c aes													| % 56
	bes aes g f es f g aes													| % 57
	\stemDown bes[ \stemUp d,] \stemNeutral r16 bes' aes! g f8 g aes bes	| % 58
	\stemDown c[ \stemUp c,] \stemNeutral r16 c' bes! a g8 a bes c			| % 59
	d c d bes es d es c														| % 60
	d d, es bes c a d d,													| % 61
	g'16( f g) bes es8 g, f es' d f,										| % 62
	es16( d es) g c8 es, d c' b g											| % 63
	c,4 bes! aes r16 g f es													| % 64
	f8 g aes bes c,16 bes' c d es4~											| % 65
	es8 d16 c d es d c b8 g r16 c d es										| % 66
	f es f g aes8 f g4 r16 f es d											| % 67
	c bes aes g f8 g \stemUp aes[ \stemDown aes'] \stemNeutral r aes,		| % 68
	\stemUp g[ \stemDown g'] \stemNeutral r g,
		\stemUp f[ \stemDown f'] \stemNeutral r16 f( es f)					| % 69
	d( es f) d c b a g c8 f, g g											| % 70
	c, c'16 d es8 e f d16 es f8 fis											| % 71
	g g16 a bes!8 b c f, g g,												| % 72
	c c' b bes a aes g c													| % 73
	f, es16 d \stemDown g8[ \stemUp g,] \stemNeutral c a' fis d				| % 74
	g g,16 a bes8 b c a!16 bes c8 cis										| % 75
	d d16 e f8 fis g c, d d,												| % 76
	g g' fis f e es d g														| % 77
	c, bes16 a d8 d, g g' c, e												| % 78
	f, f' bes, d es16( d es) g c8 es,										| % 79
	d c' bes d, c16( bes c) es aes8 c,										| % 80
	bes aes' g es aes,16( g aes) c f8 aes,									| % 81
	g f' e c f, f' e! es													| % 82
	des4 r16 c bes aes bes8 c des es										| % 83
	aes,16 es' f g aes4~ aes8 g16 f g aes g f								| % 84
	e8 c r16 f g aes bes aes bes c des8 bes									| % 85
	c4 r16 bes aes g f es des c bes8 c										| % 86
	des des' r des, \stemUp c[ \stemDown c'] r \stemNeutral c,				| % 87
		\stemUp bes[ \stemDown bes'] \stemNeutral r16 bes aes! bes
	g aes bes g f e d! c													| % 88
	f8 bes, c c, f4 r														| % 89
	bes'16( c d) bes es8 es \stemDown bes8[ \stemUp bes,] r4				| % 90
	\stemNeutral g'16( a b) g \stemDown c8[ \stemUp c,8] \stemDown g'[
		\stemUp g,] \stemNeutral r4											| % 91
	\change Staff = RHTwo \stemDown c'16_( d es) c d8[
		\change Staff = LHTwo g,] c[ \stemUp c,]
		\change Staff = RHTwo \stemDown es'4_~								| % 92
	es16 d es g f es d f es4 e8\rest g										| % 93
	\change Staff = LHTwo aes,16( g aes) c \change Staff = RHTwo
		f8 f f[ \change Staff = LHTwo g,] \change Staff = RHTwo es'4_~		| % 94
	es8 aes16 g f es d c \change Staff = LHTwo \stemNeutral
		b g\( aes g f d' g, f												| % 95
	es8\) aes d, g c, d es f												| % 96
	g f es g aes bes c d													| % 97
	es d c es f, g aes bes													| % 98
	c d c bes aes bes c aes 												| % 99
	bes aes g f es4 d														| % 100
	c r16 bes c d es8 d c d													| % 101
	g,16 d' es f g4~ g8 f16 es f g f es										| % 102
	d8 bes r16 es f g aes g aes bes c8 aes									| % 103
	bes4 r16 aes g f es( d) c( bes) aes8 bes								| % 104
	\stemUp es,[ \stemDown g'16 f] \stemNeutral es d c bes a
		f'\( g f es c' f, es												| % 105
	d8\) bes'4 a8 g16 fis g8 r16 f g a!										| % 106
	bes8 a g a d,16 a' bes c d4~											| % 107
	d8 c16 bes c d c bes a8 f r16 bes, c d									| % 108
	es d es f g8 es f4 r16 es d c											| % 109
	bes a g f es8 f bes c d es												| % 110
	\stemDown f[ \stemUp f,] \stemNeutral r16 f' es d c8 d es f				| % 111
	\stemDown g[ \stemNeutral g,] \stemNeutral r16 g' f e d8 e f g			| % 112
	a g a f bes a bes g														| % 113
	a g16 a bes8 f g e a! a,												| % 114
	d16( c d) f bes8 d, c bes' a c,											| % 115
	bes16( a bes) d g8 bes, a g' fis d										| % 116
	g,16( fis g) bes es8 g, f es' d f,										| % 117
	es16( d es) g c8 es, d c' b g											| % 118
	c c, r4 f'16( g a) f \stemDown bes8[ \stemUp bes,]						| % 119
	\stemDown f'[ \stemUp f,] \stemNeutral r4 d'16( e fis) d
		\stemDown g8[ \stemUp g,] \stemNeutral								| % 120
	d' d, r4 g'16( a bes) g a8 d,											| % 121
	\stemDown g8[ \stemUp g,] \stemNeutral
		bes'4~ bes16 a bes d c bes a c										| % 122
	bes4 r8 d es,16( d es) g c8 c											| % 123
	c d, bes'4~ bes8 es16 d c bes a g										| % 124
	fis d\( es d c a' d, c bes8\) es a, d									| % 125
	g, g'16 a bes8 b c a!16 bes c8 cis										| % 126
	d d,16 e f8 fis g c, d d,												| % 127
	g g' fis f e es d g														| % 128
	c, bes16 a d8 d, g g'16 a bes8 b										| % 129
	c c,16 d es8 e f d16 es f8 fis											| % 130
	g8 g,16 a bes8 b c f g g,												| % 131
	c c' b bes a aes g c													| % 132
	f, es16 d \stemDown g8[ \stemUp g,] \stemNeutral c c' f, a				| % 133
	bes, bes' es, g aes,! aes' e c											| % 134
	f, f' b, g c, c' fis, d													| % 135
	g1~																		| % 136
	g~																		| % 137
	g2.~ \stemUp g8[ \stemDown g'8] \stemNeutral							| % 138
	aes a bes b c4 r16 g f es												| % 139
	f8 g aes bes es,16 bes' c d es4~										| % 140
	es8 d16 c d es d c b8 g r16 c, d es										| % 141
	f es f g aes8 f g4 r16 f es d											| % 142
	c bes aes g f8 g \stemUp aes[ \stemDown aes'] \stemNeutral r8 aes,		| % 143
	\stemUp g[ \stemDown g'] \stemUp r g, f[ \stemDown f'] r16 f es f		| % 144
	d es f d c b a g c8 f, g g												| % 145
	c,1\fermata																| % 146
}
violinoMusicThree = \relative c'
{ \key c \minor \time 3/4 \clef treble \set Score.currentBarNumber = #147
	\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
		r4 ^\markup { \huge "Adagio." } bes es~					\nb			| % 147
	es8.( c16) d8.( f16) aes4~									\nb			| % 148
	aes8.( f16) g8.( bes16) c4									\nb			| % 149
	d,\trill bes r												\br			| % 150
	r bes_\markup { \small \italic "piano" } es~				\nb			| % 151
	es8.( c16) d8.( f16) aes4~									\nb			| % 152
	aes8.( f16) g8.( bes16) c4									\nb			| % 153
	d,\trill bes r												\nb			| % 154
	r es_\markup { \small \italic "(forte)" } des'~				\br			| % 155
	des8.( bes16) c8.( d,!16) es4~								\nb			| % 156
	es8 aes f4.\trill ( es8)									\nb			| % 157
	es2 r4														\nb			| % 158
	r bes'_\markup { \italic \small "(piano)" } des,~			\nb			| % 159
	des8.( c16) f8.( d16) es4~									\br			| % 160
	es8 c aes4.\trill g8										\nb			| % 161
	g2 r4														\nb			| % 162
	r g'_\markup { \small \italic "(forte)" } es'~				\nb			| % 163
	es8.( c16) d8.( b16) f4~									\pb			| % 164
	f8.( es16) fis8.( a16) c4~									\nb			| % 165
	c8.( a16) b4 r												\nb			| % 166
	r es_\markup { \small \italic "(piano)" } g,~				\nb			| % 167
	g8.( es16) f8.( b16) d4~									\br			| % 168
	d8.( b16) c8.( aes!16) fis8.( g16)							\nb			| % 169
	c,8.( a!16) b4 r											\nb			| % 170
	r g'8.(_\markup { \small \italic "(forte)" } aes!16) bes4~	\nb			| % 171
	bes8.( c16) des8.( bes16) c4~								\br			| % 172
	c8.( f16) des8.( c16) bes8.( aes16)							\nb			| % 173
	\grace g8( f2) r4											\nb			| % 174
	r aes8.(_\markup { \small \italic "(piano)" } f16) des4~	\nb			| % 175
	des8.( b16) c8.( e16) f4~									\br			| % 176
	f8.( bes16) g4.\trill f8									\nb			| % 177
	f2 r4														\nb			| % 178
	r aes8.(_\markup { \small \italic "(forte)" } bes16) c4~	\nb			| % 179
	c bes8.( g16) aes4~											\br			| % 180
	aes8.( f16) g8.( c16) a4~\(									\nb			| % 181
	a8. bes16\) \grace es,8 d4 r								\nb			| % 182
	r es8.(_\markup { \small \italic "piano" } f16) g4~			\nb			| % 183
	g8.( es16) f8.( d16) bes4~									\pb			| % 184
	bes8.( g16) a8.( c16) es4~									\nb			| % 185
	es8.( c16) d4 r												\nb			| % 186
	r bes'8.[(_\markup { \small \italic "(forte)" } c16]) des4~	\nb			| % 187
	des8.( bes16)] c8.( aes16) \grace g8( f4)~					\br			| % 188
	f8.( d16) es8.( g16) aes4~									\nb			| % 189
	aes8.( f16) g8.( des16) bes4~								\nb			| % 190
	bes8.( g16) aes8.( c16) des4~								\nb			| % 191
	des8.( bes16) c8.( es16) ges4~								\br			| % 192
	ges8.( f16) d4.\trill es8									\nb			| % 193
	es2 r4														\nb			| % 194
	r bes'_\markup { \small \italic "(piano)" } des,~			\nb			| % 195
	des8.( bes16) c8.( es16) aes4~								\nb			| % 196
	aes8.( g16) d'4 f,~											\br			| % 197
	f8.( d16) es8.( g16) \grace { bes16([ c] } des4)~			\nb			| % 198
	des8.( c16) f4 aes,~										\nb			| % 199
	aes8.( f16) g8.( c16) a8.( bes16)							\nb			| % 200
	d,8.( es16) bes4\( aes!16\trill g aes8\)					\br			| % 201
	g4 r r														\nb			| % 202
	r8 g''16\( ( f) es( d c es)\) aes,4~						\nb			| % 203
	aes16\( c es d c bes aes c\) fis,4~							\nb			| % 204
	fis16 a\( c bes a g fis a\) c,4~							\nb			| % 205
	c b2\fermata \time 2/4										\nb	  \bar "||"%206
}
cembaloRHMusicThree = \relative c'
{ \key c \minor \time 3/4 \clef treble
	\times 2/3 { es8[ bes g']} es8*2/3[ bes g'] es[ bes g']					| % 147
	f[ bes, aes'] f[ d bes'] f[ d c']										| % 148
	bes[ es aes,] bes[ es g,] f[ aes c~]									| % 149
	c[ aes f] d[ f d] bes[ d aes]											| % 150
	g[_\markup { \small \italic "piano" } bes d] es[ bes g'] es[ bes g']	| % 151
	f[ bes, aes'] f[ d bes'] f[ d c']										| % 152
	bes[ es aes,] bes[ es g,] f[ aes c~]									| % 153
	c[ aes f] d[ f d] bes[ d f]												| % 154
	bes[ g es'] bes[ g es'] bes[ g des']									| % 155
	bes[ g des'] c[ f aes,] g[ es bes']										| % 156
	c[ d! es]~ es[ d f] bes,[ c aes]										| % 157
	g[ es f] g[ aes bes] c[ es d]											| % 158
	es[ es, g] bes[ g es'] bes[ g es']										| % 159
	es,[ bes' aes] c[ bes aes] g[ aes bes]									| % 160
	c[ d es] d[ es f] bes,[ es d]											| % 161
	es[ bes g] es[ g bes] es[ bes g]										| % 162
	es[ g' d] es[ g b,] c[ es g]											| % 163
	f[ aes es] f[ aes b,] d[ f aes]											| % 164
	g[ b, c] es[ b c] fis[ b, c]											| % 165
	g'[ es c] d[ g b,] c[ g' d]												| % 166
	es[ g d] es[ g b,] c[ d es]~											| % 167
	es[ b c] d[ f es] f[ g aes]~											| % 168
	aes[ f( g)] f[( d es)] d[( b c)]										| % 169
	d[ g c,] d[ g d] b[ d g,]												| % 170
	c[ g aes] bes![ c des]~ des[ bes g]										| % 171
	e[ des' c] bes[( aes g)] f[ g e!]										| % 172
	f[ g aes] bes[ e f] g,[( des') c]										| % 173
	bes([ g aes)] f[ f' e] f[ aes g]										| % 174
	aes[ e f] des[ e! f] aes[ e f]											| % 175
	bes,[ aes' g] f[ e des] c[ bes aes]										| % 176
	g[ g' f] e[ g c,] des[ c bes]											| % 177
	aes[ f' c] aes[ c aes] f[ aes g]										| % 178
	aes[ c aes] f[ c g'] aes[ f c']											| % 179
	f[ aes f] d[ bes es] f[ d bes']~										| % 180
	bes[ es, d] es[ f g] f[ g es]											| % 181
	d[ f d] bes[ d f] aes[ g f]												| % 182
	bes[ g es] bes[ c des]~ des[ c bes]										| % 183
	c[ es aes] d,![ f bes] es,[ bes g]										| % 184
	es[ f g] f[ d es] a[ d, es]												| % 185
	bes'[ f a] bes[ f d] bes[ d f]~											| % 186
	f[ es g] bes[ es bes] g[ bes g]											| % 187
	es[ aes g] aes[ bes c] d[ b aes!]										| % 188
	g[ c b] c[ d es] f[ d bes]~												| % 189
	bes[ es d] es[ f g]~ g16*2/3 aes bes8*2/3 des,							| % 190
	c[ f e] f[ g aes]~ aes[ f g]											| % 191
	aes[ es des] es[ c bes] c[ es, d!]										| % 192
	es[ ges a] bes[ f aes] c[ bes aes]										| % 193
	g[ bes g] es[ f g] aes[ bes c]											| % 194
	des[ bes g] es[ des' bes] g[ bes g]										| % 195
	es[ aes g] aes[ bes c] d![ f es]										| % 196
	f[ d b] g[ f' d] b[ d b]												| % 197
	g[ c b] c[ d es] f[ aes g]												| % 198
	aes[ es g] aes[ bes c] bes[ f d]										| % 199
	bes[ es d] es[ f g] f[ g es]											| % 200
	aes[ f g] d[ es bes] c[ f d]											| % 201
	es[ g es] bes[ es d] es[ bes g]											| % 202
	es4 r8 g'16\( f es d c b\)												| % 203
	c4 r8 c'16\( bes a g fis a\)											| % 204
	c,16\( a fis g a bes c d es\) c g' fis									| % 205
	g2.\fermata \time 2/4													| % 206
}
cembaloLHMusicThree = \relative c
{ \key c \minor \time 3/4 \clef bass
	es4 r r																	| % 147
	bes r r																	| % 148
	es, es' aes,															| % 149
	bes r8 bes d bes														| % 150
	es4 r r																	| % 151
	bes r r																	| % 152
	es,	es' aes,															| % 153
	bes r8 bes d bes														| % 154
	g4 r r																	| % 155
	aes4. bes8 c g															| % 156
	aes f bes4 bes'															| % 157
	c r8 c, bes aes															| % 158
	g4 r r																	| % 159
	aes4. bes8 c g															| % 160
	aes4 bes bes															| % 161
	es, r8 es' g es															| % 162
	c4 r r																	| % 163
	d r r																	| % 164
	es a, d																	| % 165
	g, r8 g' es g															| % 166
	c,4 r r																	| % 167
	d r r																	| % 168
	es aes, a																| % 169
	g r8 g' d f																| % 170
	e4 r r																	| % 171
	aes, r r																| % 172
	des bes c																| % 173
	des, r8 des' c bes														| % 174
	f'4 r r																	| % 175
	g, r aes																| % 176
	bes c c,																| % 177
	f r8 f aes c															| % 178
	f4 r es																	| % 179
	d r bes																	| % 180
	es r c																	| % 181
	bes r8 bes' f aes														| % 182
	g4 r es																	| % 183
	aes r g																	| % 184
	c, r f																	| % 185
	bes, r8 bes aes f														| % 186
	g4 r es'																| % 187
	aes r b,																| % 188
	c r d																	| % 189
	es r e																	| % 190
	f r bes,																| % 191
	aes r a																	| % 192
	bes r8 bes' aes bes														| % 193
	des,4 r8 c bes aes														| % 194
	g4 r es																	| % 195
	aes r f																	| % 196
	b r g																	| % 197
	c r es																	| % 198
	aes, r d,																| % 199
	es r c'																	| % 200
	bes r8 g aes bes														| % 201
	es,4 r8 es' g es														| % 202
	c4 r r																	| % 203
	es r r																	| % 204
	d r d,																	| % 205
	g2.\fermata \time 2/4													| % 206
}
violinoMusicFour = \relative c'''
{ \key c \minor \time 2/4 \clef treble \set Score.currentBarNumber = #207
	\repeat volta 2
	{
		\once \override TextScript #'extra-offset = #'(-4.0 . 1.0)
			r1*1/2 ^\markup { \huge "Allegro." }				\nb			| % 207
		r														\nb			| % 208
		r														\nb			| % 209
		r														\nb			| % 210
		g8 c,16 b c8 g'16 fis									\br			| % 211
		\stemDown g8[ \stemUp g, g \stemDown bes'] \stemNeutral	\nb			| % 212
		a16 g a bes c bes a g									\nb			| % 213
		fis e fis g a g fis e									\nb			| % 214
		d8 d'16 c d8 es,!16 d									\nb			| % 215
		es8 g c4~												\nb			| % 216
		c8 c16 bes c8 d,16 c									\br			| % 217
		d8 f bes4~												\nb			| % 218
		bes8 c,16 bes c8 a'16 g									\nb			| % 219
		a8 bes,16 a bes8 g'16 fis								\nb			| % 220
		g8 bes, a fis'											\nb			| % 221
		g2~														\br			| % 222
		g16 g( f es) g, f'( es d)								\nb			| % 223
		g, es'( d c) f, d'( c b)								\nb			| % 224
		es, c'( bes! aes) e bes'( aes g)						\nb			| % 225
		f aes( g f) es g( f es)									\nb			| % 226
		aes( g f) es d c b c									\br			| % 227
		aes'8( g) r4											\nb			| % 228
		r16 c, es g c g es'8~									\nb			| % 229
		es16 aes,( g f) aes( g) f( es)							\nb			| % 230
		aes bes, d f aes f d'8~									\nb			| % 231
		d16 g,( f es) g( f) es( d)								\nb			| % 232
		g( es d c) aes'( g f es)								\pb			| % 233
		f( d c b) g'( f es d)									\nb			| % 234
		c( b c) aes' g f es d									\nb			| % 235
		es c'( bes aes) e bes'( aes g)							\nb			| % 236
		aes8 c f4~												\nb			| % 237
		f16 bes,( aes g) d aes'( g f)							\nb			| % 238
		g8 bes es4~												\br			| % 239
		es8 c16 b c8 aes'~										\nb			| % 240
		aes8 d,16 c d8 bes'~									\nb			| % 241
		bes es,16 d es8 c'~										\nb			| % 242
		c bes16\( aes g f es d\)								\nb			| % 243
		bes'8. c16 f,8. es16									\nb			| % 244
		es g( f es) d f( es d)									\br			| % 245
		es c'( bes a) d, bes'( a g)								\nb			| % 246
		c, a'( g fis) bes, g'( a bes)							\nb			| % 247
		a( g fis) e d c bes a!									\nb			| % 248
		g8 d16 c d8 g16 fis										\nb			| % 249
		g8 g, g bes'											\br			| % 250
		a16 g a bes c bes a g									\nb			| % 251
		fis e fis g a g fis e									\nb			| % 252
		d8 d'16 c d8 es,16 d									\nb			| % 253
		es8 g c4~												\nb			| % 254
		c8 c16 bes c8 d,16 c									\br			| % 255
		d8 f bes4~												\nb			| % 256
		bes8 c,16 bes c8 a'16 g									\nb			| % 257
		a8 bes,16 a bes8 g'16 fis								\nb			| % 258
		g8 bes, a fis'											\nb			| % 259
	}
	\alternative
	{
		{
			g,2													\nb			| % 260
		}
		{
			g2	 												\pb			| % 261
		}
	}
	\bar "|:" g'16 es'( d c) d( c b) a							\nb			| % 262
	b8 aes'!4 c,16( b)											\nb			| % 263
	c g d' c d g, es' d											\nb			| % 264
	es f es d c es d f											\nb			| % 265
	es d( es f) e( f g) f(										\nb			| % 266
	g aes) f( aes bes) aes( bes c)								\nb			| % 267
	aes8 f4 e8													\br			| % 268
	f2~															\nb			| % 269
	f8 c'16 bes c8 des,16 c										\nb			| % 270
	des8 f bes4~												\nb			| % 271
	bes8 bes16 aes bes8 c,16 bes								\nb			| % 272
	c8 es aes4~													\nb			| % 273
	aes8 bes,16 aes bes8 g'16 f									\br			| % 274
	g8 aes,16 g aes8 f'16 e										\nb			| % 275
	f8 aes, g e'												\nb			| % 276
	f2~															\nb			| % 277
	f16 f( es d) f, es'( d c)									\nb			| % 278
	f, d'( c bes) es, c'( bes a)								\nb			| % 279
	bes2~														\br			| % 280
	bes16 bes'( aes g) f4~										\nb			| % 281
	f16 g( aes g) aes( g f g)									\nb			| % 282
	es8 bes g'4~												\nb			| % 283
	g16 es( d c) f( es d) c										\nb			| % 284
	d2~															\nb			| % 285
	d16 d( c bes) es( d c) b									\nb			| % 286
	c2~															\br			| % 287
	c16 d,( g f) aes( g) b( a)									\nb			| % 288
	b2\trill													\nb			| % 289
	c~															\nb			| % 290
	c															\nb			| % 291
	b16 a( b c) b( c d) c(										\nb			| % 292
	d es) d( es f) es( f g)										\pb			| % 293
	es8 c'4 b8													\nb			| % 294
	c16 aes( g f) es( d c bes!)									\nb			| % 295
	a( g f es) d( c b a)										\nb			| % 296
	b'( a g f) es( d c b)										\nb			| % 297
	c'( bes! aes! g) f( es d c)									\nb			| % 298
	d'( c b a) g( f es d)										\br			| % 299
	es es'( d c) f, d'( c b)									\nb			| % 300
	c2~															\nb			| % 301
	c16 f( es d) aes' es( d c)									\nb			| % 302
	d8 f, bes4~													\nb			| % 303
	bes16 es( des c) g' des( c bes)								\nb			| % 304
	c aes'( g f) g( f e) d										\nb			| % 305
	e8 des'~ des f,16( e)										\br			| % 306
	f c g' f g c, aes' g										\nb			| % 307
	aes f( es d) g es( d c)										\nb			| % 308
	f d( c b) es c( d es)										\nb			| % 309
	d( c b) a g f es d											\nb			| % 310
	c a( b c) b( c d) c(										\nb			| % 311
	d es) d( es f) es( f g)										\br			| % 312
	es8 c'4 b8													\nb			| % 313
	c16 c'( bes aes) c, bes'( aes g)							\nb			| % 314
	c, aes'( g f) c g'( f es)									\nb			| % 315
	aes( g f) es d c b c										\nb			| % 316
	aes'8( g) r4												\nb			| % 317
	r16 c,, es g c g es'8~										\br			| % 318
	es16 aes,( g f) aes( g) f( es)								\nb			| % 319
	aes bes, d f aes f d'8~										\nb			| % 320
	d16 g,( f es) g( f) es( d)									\nb			| % 321
	g( es d c) aes'( g f es)									\nb			| % 322
	f( d c b) g'( f es d)										\nb			| % 323
	c( b c aes') g( f) es( d)									\nb			| % 324
	c2\fermata													\nb	 \bar ":|"% % 325
}
cembaloRHMusicFour = \relative c''
{ \key c \minor \time 2/4 \clef treble
	c8 g16 f g8 c16 b														| % 207
	\stemDown c8[ \stemUp c, c \stemDown es'] \stemNeutral					| % 208
	d16 c d es f es d c														| % 209
	b a b c d c b! a!														| % 210
	g g'( f es) g, f'( es d)												| % 211
	g, es'( d c) g d'( c bes)												| % 212
	es d c bes a g fis g													| % 213
	es'8( d) r4																| % 214
	r16 g, bes d g d bes'8~													| % 215
	bes16 es,( d c) es( d c bes)											| % 216
	es f, a c es c a'8~														| % 217
	a16 d,( c bes) d( c bes a)												| % 218
	d( bes a g) es'( d c bes)												| % 219
	c( a g fis) d'( c bes a)												| % 220
	g( fis g) es' d c bes a													| % 221
	bes g'( f es) b f'( es d)												| % 222
	c es( d c) b d( c b)													| % 223
	c g( f es) b' f( es d)													| % 224
	c'4~ c16 e( f g)														| % 225
	aes, f'( es! d) g, es'( d c)											| % 226
	b d aes'8~ aes16 g f es													| % 227
	d( es d c) d( b c d)													| % 228
	g,8 g'16 f g8 aes,16 g													| % 229
	aes8 c f4~																| % 230
	f8 f16 es f8 g,16 f														| % 231
	g8 bes es4~																| % 232
	es8 f,16 es f8 d'16 c													| % 233
	d8 es,16 d es8 c'16 b													| % 234
	c8 es, d b'																| % 235
	c2~																		| % 236
	c16 f( es d) a es'( d c)												| % 237
	d8 f bes4~																| % 238
	bes16 es,( des c) g des'( c bes)										| % 239
	c bes aes g f es d! c													| % 240
	d' c bes aes g f es d													| % 241
	es' d c bes aes g f es													| % 242
	f' es d c bes aes g f													| % 243
	g g'( f es) aes, f'( es d)												| % 244
	g, es'( d c) b d( c b)													| % 245
	c es( d c) bes! d( c bes)												| % 246
	a c( bes a) g bes( a g)													| % 247
	fis8 a d4~																| % 248
	d16 g( f! es) g, f'( es d)												| % 249
	g, es'( d c) g d'( c bes)												| % 250
	es d c bes a g fis g													| % 251
	es'8( d) r4																| % 252
	r16 g, bes d g d bes'8~													| % 253
	bes16 es,( d c) es( d c bes)											| % 254
	es f, a c es c a'!8~													| % 255
	a16 d,( c bes) d( c bes a!)												| % 256
	d( bes a g) es'( d c bes)												| % 257
	c( a g fis) d'( c bes a)												| % 258
	g( fis g) es' d c bes a													| % 259
	g2																		| % 260
	g																		| % 261
	r1*1/2																	| % 262
	r																		| % 263
	r																		| % 264
	r																		| % 265
	c,16 aes'( g f) g( f e) d												| % 266
	e8 des'4 f,16 e!														| % 267
	f c g' f g c, aes' g													| % 268
	aes bes aes g f aes g bes												| % 269
	aes f aes c f c aes'8~													| % 270
	aes16 des,( c bes) des( c bes aes)										| % 271
	des es, g bes des bes g'8~												| % 272
	g16 c,( bes aes) c( bes aes g)											| % 273
	c( aes g f) des'( c bes aes)											| % 274
	bes( g f e) c'( bes aes g)												| % 275
	f( e f) des' c bes aes g												| % 276
	aes f'( es d) a es'( d c)												| % 277
	bes d( c bes) a c( bes a)												| % 278
	bes f( es d) a' es( d c)												| % 279
	d c d es d es f es														| % 280
	f g f g aes g aes bes													| % 281
	g8 es'4 d8																| % 282
	es16 bes'( aes g) c( bes aes) g											| % 283
	aes2~																	| % 284
	aes16 aes( g f) bes( aes g) f											| % 285
	g2~																		| % 286
	g16 g,( c b) d( c) es( d)												| % 287
	f2~																		| % 288
	f16 aes( g f) d' aes( g f)												| % 289
	es g( f es) c' g( f es)													| % 290
	d f( es d) aes' es( d c)												| % 291
	g' es( d c) d( c b) a													| % 292
	b8 aes'!4 c,16( b)														| % 293
	c g d' c d g, es' d														| % 294
	es8 g, c4~																| % 295
	c8 a16 g a8 f'~															| % 296
	f b,16 a b8 g'~															| % 297
	g c,16 b c8 aes'~														| % 298
	aes g16( f) es( d c b)													| % 299
	g'8. aes16 d,8. c16														| % 300
	c16 c'( bes aes) e bes'( aes g)											| % 301
	aes8 c, f4~																| % 302
	f16 bes( aes g) d aes'( g f)											| % 303
	g8 bes, es4~															| % 304
	es16 d es f e f g f														| % 305
	g aes g aes bes aes bes c												| % 306
	aes8 f4 e8																| % 307
	f16 aes( g f) es! g( f es)												| % 308
	d f( es d) c es( d c)													| % 309
	b8 d g4~																| % 310
	g2~																		| % 311
	g8 f16 es d c d8~														| % 312
	d16 es f g aes8 g16 f													| % 313
	g8 g,16 f g8 c16 b														| % 314
	\stemDown c8[ \stemUp c, c \stemDown es']								| % 315
	d16 c d es f es d c														| % 316
	b a b c d c b a															| % 317
	g8 g'16 f g8 aes,16 g													| % 318
	aes8 c f4~																| % 319
	f8 f16 es f8 g,16 f														| % 320
	g8 bes es4~																| % 321
	es8 f,16 es f8 d'16 c													| % 322
	d8 es,16 d es8 c'16 b													| % 323
	c8 es, d b'																| % 324
	c2																		| % 325
}
cembaloLHMusicFour = \relative c'
{ \key c \minor \time 2/4 \clef bass
	c8 d es c																| % 207
	aes16 g aes bes c bes aes g												| % 208
	f es f g aes8 f															| % 209
	g aes! g f																| % 210
	es d c c'																| % 211
	bes! a bes g															| % 212
	c16 bes c d es8 c														| % 213
	d es d c																| % 214
	bes a bes g																| % 215
	c,16 c' bes a g bes a g													| % 216
	a8 g a f																| % 217
	bes,16 bes' a g fis a g fis												| % 218
	g8 bes a g																| % 219
	fis d g bes,															| % 220
	es c d d,																| % 221
	\stemUp g[ \stemDown g' f g] \stemNeutral								| % 222
	es g d g																| % 223
	c, g' g, g'																| % 224
	c, g16 f g8 c16 b														| % 225
	c8 c, c es'																| % 226
	d16( c d) es f es d c													| % 227
	b g'( f es) g, f'( es d)												| % 228
	es8 d es c																| % 229
	f,16 f' es d c es d c													| % 230
	d8 c d bes																| % 231
	es,16 es' d c b d c b													| % 232
	c8 es d c																| % 233
	b g c es																| % 234
	aes f g g,																| % 235
	c es g c,																| % 236
	f aes c f,																| % 237
	bes, d f bes,															| % 238
	es g bes es,															| % 239
	aes c aes f																| % 240
	bes d bes g																| % 241
	c es c aes																| % 242
	d4 r8 bes																| % 243
	es aes, bes bes,														| % 244
	es f g g,																| % 245
	c4 r8 d																	| % 246
	es d es c																| % 247
	d16 bes'( a g) c, a' g fis												| % 248
	bes,8 a b g																| % 249
	c c' bes! g																| % 250
	c16 bes c d es8 c														| % 251
	d es d c																| % 252
	bes a bes g																| % 253
	c,16 c' bes a g bes a g													| % 254
	a8 g a f																| % 255
	bes,16 bes' a g fis a g fis												| % 256
	g8 bes a g																| % 257
	fis d g bes,															| % 258
	es c d d,																| % 259
	g16 g' f es d d' c b													| % 260
	g,2																		| % 261
	r8 g'8 b d																| % 262
	f, b d es,16 d															| % 263
	es8 aes f g																| % 264
	c, g es g																| % 265
	c c' bes aes															| % 266
	g f e c																	| % 267
	f des bes c																| % 268
	f f, aes c																| % 269
	f4 r8 f,																| % 270
	bes16 bes' aes g f aes g f												| % 271
	g8 f g es																| % 272
	aes,16 aes' g f e g f e													| % 273
	f8 aes g f																| % 274
	e c f aes,																| % 275
	des bes c c,															| % 276
	f f' es f																| % 277
	d f c f																	| % 278
	bes, f' f, f'															| % 279
	bes,16 g'( f es) f( es d) c												| % 280
	d8 c'4 es,16( d)														| % 281
	es bes f' es f bes, g' f												| % 282
	g8 f es c																| % 283
	f es d c																| % 284
	bes aes g bes															| % 285
	es d c es																| % 286
	aes g f es																| % 287
	d c b d																	| % 288
	g, f' es d																| % 289
	c d es c																| % 290
	\stemDown f[ \stemUp f,] \stemNeutral f'4~								| % 291
	f8 es f16 g aes!8~														| % 292
	aes8 b,16 c d8 g,														| % 293
	c aes f g																| % 294
	c4 r8 c																	| % 295
	f a f d																	| % 296
	g b g es																| % 297
	aes c aes f																| % 298
	b4 r8 g																	| % 299
	c f, g g,																| % 300
	c es g c,																| % 301
	f aes c f,																| % 302
	bes, d f bes,															| % 303
	es g bes es,															| % 304
	aes c bes aes															| % 305
	g f e c																	| % 306
	f des bes c																| % 307
	f,4 r8 g																| % 308
	aes g aes f																| % 309
	g16 es'( d c) f, d'( c b)												| % 310
	es, es'( d c) d( c b) a													| % 311
	b8 aes'!4 c,16 b!														| % 312
	c g d' c d g, es' d														| % 313
	es8 g e c																| % 314
	f, f' es! c																| % 315
	f16( es f) g aes8 f														| % 316
	g aes g f																| % 317
	es d es c																| % 318
	f,16 f' es d c es d c													| % 319
	d8 c d bes																| % 320
	es,16 es' d c b d c b													| % 321
	c8 es d c																| % 322
	b g c es																| % 323
	\stemDown aes[ f g \stemUp g,]											| % 324
	c,2																		| % 325
}

\score
{
  {
  	<<

    	\new Staff = "Violino."
    	<<
       		\set Staff.instrumentName = #"Violino."
       		\set Staff.midiInstrument = #"violin"
        	%\new Voice = "Violino."
        	\violinoMusicOne
      	>>	
    
    	\new PianoStaff
    	<<
      		\set PianoStaff.instrumentName = #"Cembalo."
      		%\set Staff.midiInstrument = #"harpsichord"
      		\new Staff = RHOne { \cembaloRHMusicOne }
      		\new Staff = LHOne { \cembaloLHMusicOne }
    	>>
    
  	>>
  }
  \layout { }
  \midi { }
}

\score
{
  {
  	<<

    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicTwo
      	>>	
    
    	\new PianoStaff
    	<<
      		%\set Staff.midiInstrument = #"harpsichord"
      		\new Staff = RHTwo { \cembaloRHMusicTwo }
      		\new Staff = LHTwo { \cembaloLHMusicTwo }
    	>>
    
  	>>
  }
  \layout { }
  \midi { }
}

\score
{
  {
  	<<

    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicThree
      	>>	
    
    	\new PianoStaff
    	<<
      		%\set Staff.midiInstrument = #"harpsichord"
      		\new Staff = RHTwo { \cembaloRHMusicThree }
      		\new Staff = LHTwo { \cembaloLHMusicThree }
    	>>
    
  	>>
  }
  \layout { }
  \midi { }
}

\score
{
  {
  	<<

    	\new Staff
    	<<
       		\set Staff.midiInstrument = #"violin"
        	\violinoMusicFour
      	>>	
    
    	\new PianoStaff
    	<<
      		%\set Staff.midiInstrument = #"harpsichord"
      		\new Staff = RHTwo { \cembaloRHMusicFour }
      		\new Staff = LHTwo { \cembaloLHMusicFour }
    	>>
    
  	>>
  }
  \layout { }
  \midi { }
}
