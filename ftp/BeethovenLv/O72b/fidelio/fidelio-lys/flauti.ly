theFlutes = \notes \relative e'' {
	\clef "treble"
	\time 2/2
	\key e \major
	
	\property Staff.TupletBracket \override #'bracket-visibility = ##f
	\property Staff.TextScript \override #'font-magnification = #1.25
	
	e4.^\markup { \translate #(cons -4 0) \huge "Allegro" }_\zu
		b8 b4-.\f r4 						|
	gsharp'4.\sf e8 e4-. r4					|
	b'4.\sf gsharp8 gsharp4-. < b e >-.		|
	< b dsharp >-. r r2\fermata				|
	
	\bar "||"
	\tempo 4 = 110
	
	R1^\markup { \translate #(cons -4 -0) \huge "Adagio" }
		
	R1*3
	\break
	
	R1*4
	
	\bar "||"
	\tempo 4 = 280
	
	a4.^\markup { \translate #(cons -1 -1) \huge "Allegro" }_\zu
		 e8 e4-.\f r		|
	csharp'4.\sf a8 a4-. r					|
	e'4.\sf csharp8 csharp4-. < e a >-.		|
	< e gsharp >-. r r2\fermata				|
	\break
	
	%%% ADAGIO %%%
	\bar "||"
	\tempo 4 = 110
	
	R1*16
	
	<< { s1 } \\ { dsharp1\p~^\markup { \bold 2. } } >>
	<< { fsharp1\p_\markup { \translate #(cons 4 -1) \italic cresc. } } \\ { dsharp1 } >>
	\break
	
	< e g >1~
	< e g >
	< dsharp fsharp >8\ff r8 b^\zu r b r b r
	b r b r b r b r
	\break
	
	b\p r8 r4 r2							|
	R1										| % 40
	< csharp e >1(							|
	< asharp csharp >)						|
	\break
	
	< b dsharp >4 r r2						|
	<< { r2 r4 b4( } \\ { R1 } >>			|
	<< { < fsharp a! >1)( } \\ { s1 } >>	|
	<< { < dsharp fsharp >1) } \\ { s1 } >>	|
	
	%%% ALLEGRO %%%
	\bar "||"
	\tempo 4 = 260
	\break
	
	< dsharp b' >1~^\markup { \translate #(cons -1 -1) \huge "Allegro" }_\cr
	< dsharp b' >(
	< e b' >4\p) r4 r2
	
	R1*4
	\break
	R1*9
	
	r4 a'4(^\markup { \translate #(cons -2 0) \bold 1. }_\markup { \italic cresc. } gsharp fsharp)		|
	e\f r4 r2																	|
	< a, csharp >4\f r r2														|
	< fsharp a >4 r r < fsharp' a >												|
	\break
	
	< dsharp fsharp > < fsharp, a > < a fsharp' > < fsharp a >					|
	< e gsharp > < gsharp e' > r2												|
	< a csharp >4 < a csharp > r2												|
	< fsharp a >4 < fsharp a > r < e gsharp >									| % 70
	< fsharp a > < fsharp a > < a e' > < fsharp a >								|
	\break
	
	< e gsharp > r < e' gsharp > r							|
	< e gsharp > r < e gsharp > r							|
	< fsharp a >1\sf~										|
	< fsharp a >											|
	< e gsharp >4 r < e gsharp > r							|
	\break
	
	< e gsharp > r < e gsharp > r							|
	< fsharp a >1\sf~										|
	< fsharp a >											|
	< e gsharp >1~											|
	< e gsharp >2 gsharp8-.[^\zu e-. csharp-. b-.]			|
	asharp4 r r2											|
	\break
	
	R1
	r4 fsharp4\p^\markup { \bold 1. } r fsharp				|
	r fsharp' r fsharp										|
	r fsharp r2												|
	R1														|
	r4 fsharp,4\p r fsharp									|
	\break
	
	r fsharp' r fsharp										|
	fsharp r r2												| % 90
	r4 gsharp r gsharp										|
	e r r2													|
	r4 < dsharp fsharp >4\p r < dsharp fsharp >				|
	< e gsharp >_\markup { \italic cresc. } < dsharp fsharp > r < dsharp fsharp > |
	< e gsharp > < dsharp fsharp > r < dsharp fsharp > |
	\break
	
	< e gsharp >\f < dsharp fsharp >8 < dsharp fsharp >
		< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >	|
	< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >
		< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >	|
	< e gsharp >4 e2.\ff^\zu									|
	e8[ dsharp csharp b] a[ gsharp fsharp e]				|
	csharp'4 csharp2.										| % 100
	\break
	
	csharp8[ b a gsharp] fsharp[ e dsharp csharp]			|
	< csharp' fsharp >1~									|
	< csharp fsharp >										|
	<< { fsharp2. } \\ { fsharp2. } >> < esharp gsharp >4\sf|
	<< { fsharp2. } \\ { fsharp2. } >> < esharp gsharp >4\sf|
	\break
	
	<< { fsharp4 s fsharp s } \\ { fsharp4 < esharp gsharp >\sf fsharp < esharp gsharp >\sf } >>
	<< { fsharp4 s fsharp s } \\ { fsharp4 < esharp gsharp >\sf fsharp < csharp e >\sf } >>
	< b dsharp >4 < b fsharp' >\sf < gsharp csharp > < gsharp e' >\sf
	< dsharp b' > < fsharp dsharp' >\sf < fsharp asharp > < fsharp csharp' >\sf
	< fsharp b > r r < csharp' e >\f(						| % 110
	< b dsharp >) r r < csharp e >\f(						|
	\break
	
	< b dsharp >) r r < csharp e >\f(						|
	< b dsharp >) r r < csharp e >\f(						|
	< b dsharp >) < b dsharp >8 < b dsharp > < b dsharp >4 r|
	< dsharp fsharp >4 < dsharp fsharp >8
		< dsharp fsharp > < dsharp fsharp >4 r				|
	b4^\zu b8 b b4 b8 b										|
	b4 b8 b b4 b8 b											|
	b4 r r2													|
	\break
	
	R1*7
	\break
	R1
	
	r4 b4\p( a g														|
	f-.) r r2															|
	R1*3
	\break
	
	r4 < d' f >\p( < c e > < b d >										|
	< a c >-.) r r2														|
	r4 dsharp4(^\markup { \bold 1. } c b								|
	c-.) r4 r2															|
	r4 c( b a)															|
	R1																	|
	\break
	
	R1*2
	r4 c\p( b a)														| % 140
	R1*3
	\break
	
	R1*2
	r4 fsharp'(_\markup { \italic cresc. } e dsharp)				|
	e4\p r r2												|
	
	R1*11													|
	
	r4 fsharp(_\markup { \italic cresc. }
		^\markup { \translate #(cons -2 2) \bold 1. } e dsharp)	|
	\break
	
	e4\f r r2															| % 160
	< a, csharp >4\f r r2												|
	< fsharp a >4 r r < fsharp' a >										|
	< dsharp fsharp > < fsharp, a > < a fsharp' > < fsharp a >			|
	< e gsharp > < gsharp e' > r2										|
	< a csharp >4 < a csharp > r2										|
	\break
	
	< a csharp >4 < a csharp > r < e gsharp >						|
	< a csharp > < a csharp > < a fsharp' > < fsharp a >				|
	< e gsharp > r < e' gsharp > r									|
	< e gsharp > r < e gsharp > r									|
	< fsharp a >1\sf~												| % 170
	< fsharp a >													|
	\break
	
	< e gsharp >4 r < e gsharp > r									|
	< e gsharp > r < e gsharp > r									|
	< fsharp a >1\sf~												|
	< fsharp a >													|
	< e gsharp >~													|
	< e gsharp >													|
	\break
	
	< d e >~														|
	< d e >2 << { e8-.[ d-. csharp-. b-.] }
	\\ { e8-.[ d-. csharp-. b-.] } >>								|
	<< { gsharp4 } \\ { gsharp4 } >> r4 r2							| % 180
	r4 e\p^\markup { \bold 1. } r e									|
	r e' r e,														|
	r e r e'														|
	\break
	
	e r r2									|
	r4 e, r e								|
	r e' r e,								|
	r e r e'								|
	e r r2									|
	r4 fsharp, r fsharp'					|
	fsharp r4 r2							| % 190
	\break
	
	r4 g, r g											|
	r g' r g,											|
	r g r g'											|
	r < g, g' >2(_\markup { \italic cresc. } < a a' >4)	|
	< g g' > < b d >2 < b d >4							|
	< c e > < b d > r < b d >							|
	\break
	
	< c e > < b d > r < b d >							|
	< c e >\f < b d >8 < b d > < c e >4 < b d >8 < b d >|
	< c e >4 < b d >8 < b d > < c e >4 < b d >8 < b d >|
	< c e >1\ff											| % 200
	c8[^\zu b a g] f[ e d c]								|
	\break
	
	\key c \major
	
	a''1											|
	a8[ g f e] d[ c b a]							|
	< c f >1~										|
	< c f >											|
	<< { f2. } \\ { f2. } >> < e g >4\sf			|
	<< { f2. } \\ { f2. } >> < e g >4\sf			|
	\break
	
	<< { f4 s f s } \\ { f4 < e g >\sf f < e g >\sf } >>	|
	<< { f4 s f s } \\ { f4 < e g >\sf f < c a' >\sf } >>	|
	< b d >4 < c g >\sf < a c > < c f >\sf					| % 210
	<< { c4 e b d } \\ { c4 e\sf b d\sf } >>				|
	<< { c4 } \\ { c4 } >> r r < d f >\f(					|
	< c e >) r r < d f >\f(									|
	\break
	
	< c e >) r r < d f >\f(									|
	< c e >) r r < d f >\f(									|
	< c e >) < c e >8 < c e > < c e >4 r					|
	< e g >4 < e g >8 < e g > < e g >4 r					|
	c4^\zu c8 c c4 c8 c										|
	e4 e8 e e4 e8 e											| % 220
	e4 e8 e e4 e8 e											|
	\break
	
	e4 e8 e e4 e8 e											|
	dsharp4 r r < csharp e >\f(								|
	< b dsharp >) r r < csharp e >\f(						|
	< b dsharp >) r r < csharp e >\f(						|
	< b dsharp >) r r < csharp e >\f(						|
	< b dsharp >) b8 b b4 b8 b								|
	b4 b8 b b4 b8 b											|
	\break
	
	 b4 b8 b b4 b8 b							|
	 b4 b8 b b4 b8 b							|
	 
	 \key e \major
	 
	 e4.\ff b8 b4-. r4								| % 230
	 gsharp'4.\sf e8 e4-. r4						|
	 b4.\sf gsharp8 gsharp4-. < e' gsharp >-.		|
	 < dsharp fsharp >-. r r2\fermata				|
	 
	 \bar "||"
	 \tempo 4 = 110
	 \break
	 
	 R1^\markup { \translate #(cons -4 -1) \huge "Adagio" }					|
	 R																		|
	 \times 4/6 { e,4\p(_\markup { \translate #(cons 3 0) \italic dolce }
	 	^\markup { \bold 1. } gsharp b e dsharp csharp }					|
	 \times 4/6 { b a gsharp fsharp gsharp e) }								|
	 R1*3																	|
	 \break
	 
	 R1*4
	 < e' gsharp >2\p( < b e >)				|
	 < b e >1(								|
	 < b dsharp >)\fermata					|
	 
	 \bar "||"
	 \tempo 4 = 340
	 \break
	 
	 c,4.\f^\zu^\markup { \translate #(cons -4 -1) \huge "Presto." }
	 	b8 b4 r					|
	 c4.\f^\zu b8 b4 r			|
	 c4-. b-. c-. b-.			| % 250
	 c4-. b-. c-. b-.			|
	 e-. dsharp!-. e-. dsharp-.	|
	 e-. dsharp-. e-. dsharp-.	|
	 c-. b-. e-. dsharp-.		|
	 \break
	 
	 c'-. b-. csharp-. b-.							|
	 csharp-. b-. csharp-. b-.						|
	 csharp-. b-. csharp-. b-.						|
	 r2 \times 2/3 { b4\f( e-. e-.) }				|
	 r2 \times 2/3 { b4( e-. e-.) }					|
	 r2 \times 2/3 { b4( dsharp-. dsharp-.) }		| % 260
	 \break
	 
	 r2 \times 2/3 { b4( dsharp-. dsharp-.) }					|
	 r2 \times 2/3 { b4\p( e-. e-.) }								|
	 r2 \times 2/3 { b4( e-. e-.) }								|
	 r2 \times 2/3 { b4( dsharp-. dsharp-.) }					|
	 r2 \times 2/3 { b4( dsharp-. dsharp-.) }					|
	 r2 \times 2/3 { b4(_\markup { \italic cresc. } d-. d-.) }	|
	 \break
	 
	 r2 \times 2/3 { b4( d-. d-.) }		|
	 r2 \times 2/3 { a4( c-. c-.) }		|
	 r2 \times 2/3 { a4( c-. c-.) }		|
	 r2 \times 2/3 { fsharp4( a-. a-.) }| % 270
	 r2 \times 2/3 { fsharp4( a-. a-.) }|
	 r2 \times 2/3 { fsharp4( a-. a-.) }|
	 \break
	 
	 r2 \times 2/3 { fsharp4( a-. a-.) }|
	 < fsharp a >1\f~
	 < fsharp a >~_\markup { \italic {sempre piu \dynamic f} }
	 < fsharp a >~
	 < fsharp a >
	 < fsharp a >~\ff
	 \break
	 
	 < fsharp a >~													|
	 < fsharp a >~													| % 280
	 < fsharp a >													|
	 << { gsharp4 fsharp a gsharp } \\ { e4\sf e e\sf e } >>		|
	 << { fsharp4 e e e } \\ { e4\sf e dsharp\sf e } >>				|
	 e4\sf^\zu e e\sf e												|
	 \break
	 
	 e\sf e dsharp\sf e						|
	 fsharp\sf gsharp a\sf asharp,			|
	 b\sf b b\sf b							|
	 gsharp'\sf fsharp a\sf gsharp			|
	 fsharp\sf e dsharp\sf e				|
	 \break
	 
	 e4\sf e e\sf e							| % 290
	 e\sf e dsharp\sf e						|
	 fsharp\sf gsharp a\sf asharp,			|
	 b\sf b b\sf b							|
	 e r r2									|
	 \break
	 
	 e4.\sf b8 b4 r				|
	 gsharp'4 r r2				|
	 gsharp4.\sf e8 e4 r		|
	 b r r2						|
	 b4.\sf gsharp8 gsharp4 r	|
	 e' r r2					| % 300
	 e4.\sf b8 b4 r				|
	 \break
	 
	 e4 b e b		|
	 e4 b e b		|
	 e4 b e b		|
	 e4 b e b		|
	 e r r2			|
 	 e4 r r2		|	 
 	 e4 r r2\fermata|
 	 
 	 \bar "|." 
}