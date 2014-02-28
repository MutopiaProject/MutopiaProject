\version "2.18.0"
theOboes =  \relative e'' {
	\clef "treble"
	\time 2/2
	\key e \major
	
	e4.\f b8 b4-. r4 								|
	gsharp'4.\sf e8 e4-. r4							|
	b'4.\sf gsharp8 gsharp4-. < e gsharp >-.		|
	< dsharp fsharp >-. r r2\fermata				|
	
	R1*8
	
	a'4.\f e8 e4-. r							|
	csharp'4.\sf a8 a4-. r						|
	e4.\sf csharp8 csharp4-. < a' csharp >-.	|
	< gsharp b >-. r r2\fermata					|
	
	% New top of page...break/tempi enabled
	R1^\markup { \translate #(cons -4 -1) \huge "Adagio" }
	R1*3
	f1\pp(\<
	d)\!\>
	< c e >\pp~
	\mbreak
	
	< c e >					|
	< e g >~				|
	< e g >					|
	\mbreak
	
	< f a >~				|
	< f a >(				|
	< fsharp! a >)~			|
	< fsharp a >~			|
	\mbreak
	
	< fsharp! a >~			|
	< fsharp a >~			|
	< fsharp a >~			|
	< fsharp a >			|
	\mbreak
	
	< csharp asharp' >~		|
	< csharp asharp' >		|
	< dsharp b' >8\ff r < b b' > r < b b' > r < b b' > r
	< b b' > r < b b' > r < b b' > r < b b' > r
	< b b' >\p r r4 r2		|
	
	R1*23
	
	r4 a'(^\markup { \bold 1. }_\cr gsharp fsharp)
	e\f r r2
	< a csharp >4\f r r2
	< fsharp a >4 r r < fsharp a >
	< dsharp fsharp > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > < e gsharp > r2
	< a csharp >4 < a csharp > r2
	< fsharp a >4 < fsharp a > r < e gsharp >
	< fsharp a > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > r < e gsharp > r					|
	< e gsharp > r < e gsharp > r					|
	< fsharp a >1\sf~								|
	< fsharp a >									|
	< e gsharp >4 r < e gsharp > r					|
	< e gsharp > r < e gsharp > r					|
	< fsharp a >1\sf~								|
	< fsharp a >									|
	< e gsharp >~
	< e gsharp >2 gsharp8-.[^\markup{\bold "zu 2"} e-. csharp-. b-.]
	asharp4 r r2
	
	R1*7
	
	r4 gsharp'2\p(^\markup { \bold 1. } a4)
	gsharp1(
	e4) r r2
	r4 < dsharp fsharp >\p r < dsharp fsharp >
	< e gsharp >_\cr < dsharp fsharp > r < dsharp fsharp >
	< e gsharp > < dsharp fsharp > e < dsharp fsharp >
	< e gsharp >4\f < dsharp fsharp >8 < dsharp fsharp >
		< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >
	< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >
		< e gsharp >4 < dsharp fsharp >8 < dsharp fsharp >
	< e gsharp >4 e2.\ff^\markup{\bold "zu 2"}
	e8[ dsharp csharp b] a[ gsharp fsharp e]
	< csharp' csharp' >4 < csharp csharp' >2.
	< csharp csharp' >8[ < b b' > < a a' > < gsharp gsharp' >]
		< fsharp fsharp' >[ < e e' > < dsharp dsharp' > < csharp csharp' >]
	< csharp' fsharp >1~
	< csharp fsharp >
	< csharp fsharp >2. < csharp esharp >4\sf
	< csharp fsharp >2. < csharp esharp >4\sf
	< csharp fsharp >4 < csharp esharp >\sf < csharp fsharp > < csharp esharp >\sf
	< csharp fsharp >4 < csharp esharp >\sf < csharp fsharp > < csharp e >\sf
	< b dsharp > < b b' >\sf < csharp gsharp' > < e gsharp >\sf
	< b dsharp > < dsharp fsharp >\sf < asharp csharp > < csharp e >\sf
	< b dsharp > < fsharp' a! >\p( < e gsharp >) r						|
	r < fsharp a >\p( < e gsharp >) r									|
	r < fsharp a >\p( < e gsharp >) r									|
	r < fsharp a >\p( < e gsharp >) < csharp e >\f(						|
	< b dsharp >) < dsharp b' >8 < dsharp b' > < dsharp b' >4 r			|
	< dsharp b' > < dsharp b' >8 < dsharp b' > < dsharp b' >4 r			|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	< b b' >4 r r2														|
	
	R1*3
	
	g'4.\p_\markup { \translate #(cons 3 0) \italic dolce }^\markup { \bold 1. } d8 d4 r		|
	g4. d8 d4 r															|
	a'4( c b a															|
	g b d2)																|
	a4(^\markup { \bold 1. } c b a										|
	g) r r2																|
	r4 < f a >\p( < e g > < d f! >										|
	< c e >-.) r r2														|
	r4 g'(^\markup { \bold 1. } a b										|
	c-.) r r2															|
	
	R1*2
	
	r4 b(^\markup { \bold 1. } a gsharp!					|
	a-.) r r2												|
	r4 a( g fsharp)											|
	
	R1*2
	
	r4 < fsharp! a >-.\p < fsharp a >( < e g >
	< dsharp! fsharp >) a'(^\markup { \bold 1. } g fsharp)	|
	
	R1*2
	
	r4 g( fsharp e)
	r gsharp!( fsharp e)
	r a(_\cr gsharp fsharp)
	r a( gsharp fsharp)
	gsharp\p r r2
	
	R1*12
	
	<< { e4 } \\ { e4\f } >> r4 r2
	< fsharp a >4 r r2
	< fsharp a >4 r r < fsharp a >
	< dsharp fsharp > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > < e gsharp > r2
	< a csharp >4 < a csharp > r2
	< fsharp a >4 < fsharp a > r < e gsharp >
	< fsharp a > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > r < e gsharp > r					|
	< e gsharp > r < e gsharp > r					|
	< fsharp a >1\sf~								|
	< fsharp a >
	< e gsharp >4 r < e gsharp > r					|
	< e gsharp > r < e gsharp > r					|
	< fsharp a >1\sf~								|
	< fsharp a >
	< e gsharp >~
	< e gsharp >
	< d b' >~
	< d b' >2 << { e8-.[ d-. b-. a-.] } \\ { e'8-.[ d-. b-. a-.] } >>
	<< { gsharp4 } \\ { gsharp4 } >> r4 r2
	
	R1*9
	
	r4^\markup { \bold 1. } g'2\p( a4)
	g1~
	g~
	g~
	g4 < g, g' >2(_\cr < a a' >4)
	< g g' >4 < b d >2 < b d >4
	< c e > < b d > r < b d >
	< c e > < b d > r < b d >
	< c e >4\f < b d >8 < b d > < c e >4 < b d >8 < b d >
	< c e >4 < b d >8 < b d > < c e >4 < b d >8 < b d >
	< c e >1\ff
	c'8[^\markup{\bold "zu 2"} b a g] f[ e d c]
	
	\key c \major
	
	a'1
	a8[ g f e] d[ c b a]												|
	< c f >1~															|
	< c f >																|
	< c f >2. < dflat e >4\sf											|
	< c f >2. < dflat e >4\sf											|
	<< { f4 s f s } \\ { f4 < e g >\sf f < e g >\sf } >>				|
	<< { f4 s f s } \\ { f4 < e g >\sf f < c a' >\sf } >>				|
	< b d >4 < c g' >\sf < a c > < c a' >\sf							|
	< c e > < e g >\sf < b d > < d f >\sf								|
	< c e > < f a >\p( < e g >) r										|
	r < f a >\p( < e g >) r												|
	r < f a >\p( < e g >) r												|
	r < f a >\p( < e g >) < d b' >\f(									|
	< e c' >) < c e >8 < c e > < c e >4 r								|
	< e g >4 < e g >8 < e g > < e g >4 r								|
	< e c' >4 < e c' >8 < e c' > < e c' >4 < e c' >8 < e c' >			|
	< e c' >4 < e c' >8 < e c' > < e c' >4 < e c' >8 < e c' >			|
	< e asharp >4 < e asharp >8 < e asharp > < e asharp >4 < e asharp >8 < e asharp >
	< e asharp >4 < e asharp >8 < e asharp > < e asharp >4 < e asharp >8 < e asharp >
	< dsharp b' >4 << { b4( csharp) } \\ { b4\p( csharp) } >> r4
	r << { b4( csharp) } \\ { b4\p( csharp) } >> r4
	r << { b4( csharp) } \\ { b4\p( csharp) } >> r4
	r << { b4( csharp) } \\ { b4\p( csharp) } >> < csharp e >\f(
	< b dsharp >) < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >		|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	
	\key e \major
	
	< b b' >4\ff < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >		|
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >			|
	< b b' >4 < b b' >8 < b b' > < b b' >4-. < e gsharp >-.				|
	< dsharp fsharp >-. r r2\fermata									|
	
	R1*10
	< gsharp b >1\p(
	< e gsharp >)
	< fsharp a >~
	< fsharp a >\fermata
	
	c4.\f^\markup{\bold "zu 2"} b8 b4 r
	c4. b8 b4 r
	c4-. b-. c4-. b-.
	c4-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp-. e-. dsharp-.
	c-. b-. e-. dsharp-.
	c'-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	< gsharp b >1\f~
	< gsharp b >
	< a b >~
	< a b >
	< gsharp b >1\p~
	< gsharp b >
	< a b >~
	< a b >
	< gsharp b >~_\cr
	< gsharp b >
	< a c >~
	< a c >
	< a c >~
	< a c >~
	< a c >~
	< a c >
	< a b >\f~
	< a b >~_\markup { \italic {sempre piu \dynamic f} }
	< a b >~
	< a b >
	< a b >~\ff
	< a b >~
	< a b >~
	< a b >
	gsharp4\sf^\markup{\bold "zu 2"} fsharp a\sf gsharp
	fsharp\sf e dsharp\sf e
	e\sf e e\sf e
	e\sf e dsharp\sf e
	fsharp\sf gsharp a\sf asharp
	b\sf b b\sf b
	gsharp4\sf^\markup{\bold "zu 2"} fsharp a\sf gsharp
	fsharp\sf e dsharp\sf e
	e\sf e e\sf e
	e\sf e dsharp\sf e
	fsharp\sf gsharp a\sf < asharp, asharp' >				|
	< b b' >\sf < b b' > < b b' >\sf < b b' >				|
	<< { e4 } \\ { e4 } >> r4 r2							|
	e4.\sf^\markup{\bold "zu 2"} b8 b4 r										|
	gsharp'4 r r2											|
	gsharp4.\sf e8 e4 r										|
	b' r r2													|
	b4.\sf gsharp8 gsharp4 r								|
	e4 r r2													|
	e4.\sf b8 b4 r											|
	e b e b													|
	e b e b													|
	e b e b													|
	e b e b													|
	e r r2													|
	e4 r r2													|
	e4 r r2\fermata											|
	
}