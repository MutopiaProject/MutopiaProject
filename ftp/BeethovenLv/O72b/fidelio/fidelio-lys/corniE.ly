\version "2.18.0"
theHornsfirst =  \relative c' {
	\transposition e 
	\clef "treble"
	\time 2/2
	\key c \major
	
	< c c' >4.\f < g g' >8 < g g' >4-. r			|
	< e' e' >4.\sf < c c' >8 < c c' >4-. r			|
	< g' g' >4.\sf < e e' >8 < e e' >4-. r			|
	< g d' >-. r r2\fermata
	
	<< { f'1\p(_\markup { \translate #(cons 4 -1) \italic dolce }
		d
		g
		e) } \\
		{ d1(
		g,
		e'
		c) } >>
		
	R1
	< c, c' >2~ < c c' >4. < c c' >8		|
	< c c' >4 r r2							|
	< c c' >2~ < c c' >4. < c c' >8			|
	
	f'4.\f^\markup{\bold "zu 2"} c8 c4-. r				|
	f4.\sf f8 f4-. r					|
	c4.\sf c8 c4-. c-.					|
	c-. r r2\fermata					|
	R1									|
	< c, c' >2\p~ < c c' >4. < c c' >8	|
	< c c' >4 r r2						|
	
	R1*12
	
	< g' d' >1\p~_\markup { \translate #(cons 4 0) \italic cresc. }
	< g d' >~							|
	< g d' >							|
	< c, eflat' >1~						|
	< c eflat' >						|
	< g d'' >8\ff r < g' g' > r < g g' > r < g g' > r
	< g g' > r < g g' > r < g g' > r < g g' > r
	<< { g8 } \\ { g8\p } >> r8 r4 r2
	
	R1*5
	
	< d' f >1\p(^\markup { \bold {1.2.} }			|
	< g, d' >)										|
	< g d' >~_\cr									|
	< g d' >										|
	<< { c4 r r2 } \\ { c4.\p_\markup { \translate #(cons 4 0) \italic dolce }
		g8 g4 r } >>								|
	c4.^\markup { \bold 2. } g8 g4 r				|
	d'4( f e d										|
	c e g2)											|
	d4( f e d)										|
	\mbreak
	
	c g \clef "bass" c,, g							|
	c, r r2
	
	R1*3
	
	\clef "treble"
	d'''4(_\markup { \italic dolce }^\markup { \bold 1. } f e d
	c e) < g, g' >2\p~
	< g g' >1~_\cr						|
	< g g' >~							|
	< g g' >							|
	< c, c' >4\f r r2					|
	< c c' >4 r r2						|
	< d' f >4 r r < d f >				|
	< g, d' > r < g d' > r				|
	< c, c' > < c c' > r2				|
	< c c' >4 < c c' > r2				|
	< d' f >4 < d f > r < c e >			|
	< d f > < g, d' > < g d' > < g d' >	|
	< e c' > r < c' e > r				|
	< c e > r < c e > r					|
	< d f >1\sf~						|
	< d f >								|
	< c e >4 r < c e > r				|
	< c e > r < c e > r					|
	< d f >1\sf~						|
	< d f >								|
	< c e >1~							|
	< c e >2 < c, c' >4 < c c' >		|
	<< { d'4 } \\ { c4 } >> d2\p(^\markup{\bold "zu 2"} e4)|
	d1~^\markup { \bold {1.2. markup{\bold "zu 2"} 2} }	|
	d1~									|
	d1~									|
	d4 d2( e4)							|
	d1~									|
	d1~									|
	d1~									|
	d4 r4 r2							|
	
	R1*2
	
	r4\p < g, d' > r < g d' >									|
	< c e >_\cr < g d' > r < g d' >								|
	< c e > < g d' > r < g d' >									|
	< c e >4\f < g d' >8 < g d' > < c e >4 < g d' >8 < g d' >	|
	< c e >4 < g d' >8 < g d' > < c e >4 < g d' >8 < g d' >		|
	< c c >1\ff													|
	R1															|
	< c, c' >\sf					|
	R1								|
	< c' d >~						|
	< c d >							|
	< c d >4 r r2					|
	< c d >4 r r2					|
	d4^\markup{\bold "zu 2"} r d r					|
	d r d r							|
	d r < c e > r					|
	d^\markup{\bold "zu 2"} d\sf d d\sf				|
	< g, d' > r r d'\f~^\markup{\bold "zu 2"}			|
	d r r d\f~											|
	d r r d\f~											|
	d r r d\f~											|
	d < g, d' >8 < g d' > < g d' >4 r					|
	< g d' >4 < g d' >8 < g d' > < g d' >4 r			|
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >8
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >8
	< g g' >4 r r2										|
	
	R1*17
	
	g4\p^\markup { \bold 2. } r8 g,8 g4 r		|
	g'4 r8 g,8 g4 r								|
	g'4 r8 g,8 g4 r								|
	g'4 r8 g,8 g4 r								|
	g'4 r8 g,8 g4 r								|
	g'4 r8 g,8 g4 r								|
	g'4 r8 g,8 g4 r								|
	r2 < g g' >4\p r8 < g g' >					|
	< g g' >4 r < g g' > r8 < g g' >			|
	< g g' >4_\cr r < g g' > r8 < g g' >		|
	< g g' >4 < d'' f >( < c e > < g d' >)		|
	<< { c4 r r2 } \\ { c4.\p g8 g4 r } >>		|
	c4.\p^\markup { \bold 2. } g8 g4 r			|
	d'4( f e d)									|
	c g \clef "bass" c,, g						|
	c, r \clef "treble" < g''' g' >2~\p			|
	< g g' >1~									|
	< g g' >~									|
	< g g' >~									|
	< g g' >~									|
	< g g' >~									|
	< g g' >~									|
	< g g' >~									|
	< g g' >4 < d' f >( < c e > < g d' >)		|
	< e c' >\f r r2								|
	< c c' >4 r r2								|
	< d' f >4 r r < d f >						|
	< g, d' > r < g d' > r						|
	< c, c' > < c c' > r2						|
	< c c' >4 < c c' > r2						|
	< d' f >4 < d f > r < c e >					|
	< d f > < d f > < d f > < d f >				|
	< c e > r < c e > r							|
	< c e > r < c e > r							|
	< d f >1\sf~								|
	< d f >										|
	< c e >4 r < c e > r							|
	< c e > r < c e > r							|
	< d f >1\sf~								|
	< d f >										|
	< c e >1~									|
	< c e >										|
	< c g' >1~									|
	< c g' >2 < c, c' >8[ < c c' > < c c' > < c c' >]
	< c c' >4 << { c'2( d4) } \\ { c2(\p d4) } >>
	c1~^\markup{\bold "zu 2"}
	c~										|
	c~										|
	c4 c2( d4)								|
	c1~										|
	c~										|
	c~										|
	c4 d2( eflat4)							|
	d1~										|
	d4 r r2									|
	
	R1*3
	
	r4 eflat2(^\markup{\bold "zu 2"} f4)_\cr					|
	eflat4 eflat2 eflat4					|
	eflat eflat r eflat						|
	eflat eflat r eflat						|
	eflat4\f eflat8 eflat eflat4 eflat8 eflat
	eflat4 eflat8 eflat eflat4 eflat8 eflat |
	c1\ff
	R1
	f^\markup{\bold "zu 2"}
	f
	f~
	f
	f4 r r c\sf							|
	f r r c\sf							|
	f c\sf f c\sf						|
	f c\sf f c\sf						|
	eflat eflat\sf f f\sf				|
	eflat eflat\sf eflat eflat\sf		|
	eflat r r2							|
	eflat4 r r2							|
	eflat4 r r2							|
	eflat4 r r2							|
	eflat4 eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	eflat4 eflat8 eflat eflat4 r |
	< c, c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< g' d' >4 < g d' >2\p r4
	r < g d' >2\p r4
	r < g d' >2\p r4
	r < g d' >2\p << { d'4~ } \\ { d4\f~ } >>
	<< { d4 } \\ { d4 } >> < g, g' >8 < g g' > < g g' >4
		< g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4\ff < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4 < g g' >8 < g g' >
	< g g' >4 < g g' >8 < g g' > < g g' >4-. < c e >-.
	< g d' >-. r r2\fermata
	
	%%% ADAGIO %%%
	
	<< { f'1\p(_\markup { \translate #(cons 4 -1) \italic dolce }
		d
		g
		e) } \\
		{ d1(
		g,
		e'
		c) } >>
		
	R1*4
		
	< d f >1\p(
	< g, d' >)
	<< { e'1~ } \\ { c1 } >>
	<< { e2 g,2~ } \\ { c,,1 } >>
	<< { g''1~ } \\ { g,1~ } >>
	<< { g'1\fermata } \\ { g,1 } >>
	
	R1*10
	
	< c c' >4.\f < g g' >8 < g g' >4 r
	< c c' >4.\sf < g g' >8 < g g' >4 r
	<< { d''4. } \\ { d4.\sf } >> < g,, g' >8 < g g' >4 r
	< g' g' >4.\sf < g, g' >8 < g g' >4 r
	c'4.\p^\markup{\bold "zu 2"} g8 g4 r
	c4. g8 g4 r
	d'4. g,8 g4 r
	g'4. g,8 g4 r
	c4._\cr c8 c4 r
	c4. c8 c4 r
	c4. c8 c4 r
	c4. c8 c4 r
	< d f >1~
	< d f >1~
	< d f >1~
	< d f >1
	< g, g' >1\f~
	< g g' >~_\markup { \italic {sempre piu \dynamic f} }
	< g g' >~
	< g g' >
	< g g' >\ff~
	< g g' >~
	< g g' >~
	< g g' >
	< c, c' >4\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < g' g' >\sf < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< c, c' >4\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < c c' >\sf < c c' >
	< c c' >\sf < c c' > < g' g' >\sf < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< g g' > < g g' > < g g' > < g g' >
	< c, c' > r r2
	
	< c c' >4.\sf < g g' >8 < g g' >4 r
	< e' e' > r r2
	< e e' >4.\sf < c c' >8 < c c' >4 r
	< g' g' > r r2
	< g g' >4.\sf < e e' >8 < e e' >4 r
	<< { c'4 } \\ { c4 } >> r4 r2
	<< { c4. } \\ { c4.\sf } >> < g g' >8 < g g' >4 r
	<< { c4 s c s } \\ { c4 < g g' > c < g g' > } >>
	<< { c4 s c s } \\ { c4 < g g' > c < g g' > } >>
	<< { c4 s c s } \\ { c4 < g g' > c < g g' > } >>
	<< { c4 s c s } \\ { c4 < g g' > c < g g' > } >>
	<< { c4 } \\ { c4 } >> r4 r2
	< c, c' >4 r r2
	< c c' >4 r r2\fermata
}