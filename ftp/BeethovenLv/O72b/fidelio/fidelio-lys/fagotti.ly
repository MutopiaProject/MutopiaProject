\version "2.18.0"
theBassoons =  \relative a {
	\set Score.skipBars = ##t
	
	\clef "bass"
	\time 2/2
	\key e \major
	
	e4.\f^\markup{\bold "zu 2"} b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-. r r2\fermata
	
	R1*8
	
	a'4.\f^\markup{\bold "zu 2"} e8 e4-. r
	csharp'4.\sf a8 a4-. r
	e'4.\sf csharp8 csharp4-. a-.
	e-. r r2\fermata
	
	< b' d >1\p(
	< e, b' >)
	< a, c' >
	< a c' >2~ < a c' >4. < a c' >8
	<< { c'1 } \\ { a,2\pp(\< f')\! } >>
	< g b >1\>
	< c, c' >~\pp\!
	< c c' >1
	< g' bflat >~
	< g bflat >
	<< { a1~ } \\ { f1~_\cr } >>
	<< { a1~ } \\ { f1 } >>
	<< { a1~ } \\ { fsharp!~ } >>
	<< { a1~ } \\ { fsharp~ } >>
	<< { a1~ } \\ { fsharp!~ } >>
	<< { a1~ } \\ { fsharp~ } >>
	<< { a1~ } \\ { fsharp~ } >>
	<< { a1 } \\ { fsharp } >>
	< e g >1~
	< e g >
	< dsharp fsharp >8\ff r < b b' > r < b b' > r < b b' > r
	< b b' > r < b b' > r < b b' > r < b b' > r
	
	\clef "tenor"
	< dsharp' fsharp >1\p(
	< b dsharp >)
	< fsharp csharp' >4 r r2
	< fsharp fsharp' >2~ < fsharp fsharp' >4. < fsharp fsharp' >8
	< dsharp' fsharp >1(
	< b dsharp >)~
	< b dsharp >4 r r2
	
	\clef "bass"
	
	< b, b' >2 < b b' >4. < b b' >8
	< b b' >1~_\cr
	< b b' >~
	< e b' >4\p r r2
	
	R1*14
	
	<< { e4 } \\ { e4\f } >> r4 r2
	< a csharp >4 r r2
	< fsharp a >4 r r < fsharp a >
	< dsharp' fsharp > < fsharp, a > < a fsharp' > < fsharp a >
	< e gsharp > < e gsharp > r2
	< a csharp >4 < a csharp > r2
	< fsharp a >4 < fsharp a > r < e gsharp >
	< fsharp a > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > r < e gsharp > r
	< e gsharp > r < e gsharp > r
	< fsharp a >1\sf~
	< fsharp a >
	< e gsharp >4 r < e gsharp > r
	< e gsharp > r < e gsharp > r
	< fsharp a >1\sf~
	< fsharp a >
	< e gsharp >~
	< e gsharp >2 gsharp8-.[^\markup{\bold "zu 2"} e-. csharp-. b-.]
	asharp4 r r2
	R1
	r4 fsharp'\p^\markup { \bold 1. } r fsharp
	r fsharp' r fsharp
	r fsharp r2
	R1
	r4 fsharp,\p r fsharp
	r fsharp' r fsharp
	fsharp r r2
	r4 gsharp r gsharp
	e b2( csharp4)
	b1\p~^\markup{\bold "zu 2"}
	b~_\cr
	b~
	b4\f < fsharp a >8 < fsharp a > < e gsharp >4 < fsharp a >8 < fsharp a >
	< e gsharp >4 < fsharp a >8 < fsharp a > < e gsharp >4 < fsharp a >8 < fsharp a >
	< e gsharp >4 < e e' >2.\ff
	e'8[^\markup{\bold "zu 2"} dsharp csharp b] a[ gsharp fsharp e]
	csharp'4 csharp2.
	csharp8[ b a gsharp] fsharp[ e dsharp csharp]
	< asharp' csharp >1~
	< asharp csharp >
	< asharp csharp >2. < b csharp >4\sf
	< asharp csharp >2. < b csharp >4\sf
	< asharp csharp >4 < b csharp >4\sf < asharp csharp > < b csharp >4\sf
	< asharp csharp > < b csharp >4\sf < asharp csharp > < fsharp! asharp >\sf
	< b, b' > dsharp\sf^\markup{\bold "zu 2"} e csharp\sf
	fsharp fsharp,\sf fsharp' fsharp,\sf
	< b b' > < fsharp' a! >\p( < e gsharp >) r
	r < fsharp a >\p( < e gsharp >) r
	r < fsharp a >\p( < e gsharp >) r
	r < fsharp a >\p( < e gsharp >) < csharp' e >\f(
	< b dsharp >) < b dsharp >8 < b dsharp > < b dsharp >4 r
	< b dsharp >4 < b dsharp >8 < b dsharp > < b dsharp >4 r
	b,4^\markup{\bold "zu 2"} b8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 r r2
	
	R1*3
	
	\clef "tenor"
	
	g''1\p~_\markup { \translate #(cons 4 -1) \italic dolce }^\markup { \bold 1. }
	g
	fsharp4( d2 e8 fsharp)
	g4( d2 g4)
	fsharp4( d2 e8 fsharp)
	g1~
	g4 << { g,4( a b } \\ { s2. } >>
	<< { c4-.) } \\ { r4 } >> < e g >4\p( < d f > < c e >
	< b d >-.) < a f' >( < g e' > < f d' >
	< e c' >-.) r r2
	R1
	r4 < c' e >4\p( < b d > < a c >
	< gsharp! b >-.) < gsharp b >( < a c > < b d >
	
	\clef "bass"
	
	< a c >-.) < a c >( < fsharp! a > < e g >
	< dsharp! fsharp! >-.) r r2
	R1
	r4 < g b >\p( < fsharp a > < e g >)
	
	R1*3
	
	r4 < g b >\p( < fsharp a > < e g >)
	
	R1*3
	
	r4 < fsharp a >(_\cr < e gsharp! > < dsharp fsharp >)
	< e gsharp >\p r r2
	
	R1*3
	
	< e gsharp >1\p~
	< e gsharp >
	< fsharp a >4( < dsharp fsharp > < e gsharp > < fsharp a >)
	< e gsharp >1
	< dsharp fsharp >4( < b dsharp >2 < csharp e >8 < dsharp fsharp >
	< e gsharp >1)_\cr
	< dsharp fsharp >4( < b dsharp >2 < csharp e >8 < dsharp fsharp >
	< e gsharp >1)
	< dsharp fsharp >4( < b b' >2 < csharp csharp' >8 < dsharp dsharp' >)
	< e e' >4\f r r2
	< a csharp >4 r r2
	< fsharp a >4 r r < fsharp a >
	< dsharp' fsharp > < fsharp, a > < a fsharp' > < fsharp a >
	< e gsharp > < e gsharp > r2
	< a csharp >4 < a csharp > r2
	< fsharp a >4 < fsharp a > r < e gsharp >
	< fsharp a > < fsharp a > < fsharp a > < fsharp a >
	< e gsharp > r < e gsharp > r
	< e gsharp > r < e gsharp > r
	< fsharp a >1\sf~
	< fsharp a >
	< e gsharp >4 r < e gsharp > r
	< e gsharp > r < e gsharp > r
	< fsharp a >1\sf~
	< fsharp a >
	< e gsharp >~
	< e gsharp >
	< b' d >1~
	< b d >2 << { e,8-.[ d-. b-. a-.] } \\ { e'8-.[ d-. b-. a-.] } >>
	<< { gsharp4 } \\ { gsharp4 } >> r4 r2
	r4 e'\p^\markup { \bold 1. } r e
	r e' r e,
	r e r e'
	e r r2
	r4 e, r e
	r e' r e,
	r e r e'
	e r r2
	r4 fsharp, r fsharp'
	fsharp r r2
	r4 g, r g
	r g' r g,
	r g r g'
	<< { g4 } \\ { r4 } >> < g, g' >2(_\cr < a a' >4)
	< g g' >4 < b d >2 < b d >4
	< c e > < b d > r < b d >
	< c e > < b d > r < b d >
	< c e >4\f < b d >8 < b d > < c e >4 < b d >8 < b d >
	< c e >4 < b d >8 < b d > < c e >4 < b d >8 < b d >
	< c e >1\ff
	<< { c8[ b a g] f[ e d c] } \\ { c'8[ b a g] f[ e d c] } >>
	
	\key c \major
	
	< a a' >1
	<< { a'8[ g f e] d[ c b a] } \\ { a'8[ g f e] d[ c b a] } >>
	< a' c >1~
	< a c >
	< a c >2. < bflat dflat >4\sf
	< a c >2. < bflat dflat >4\sf
	< a c > < bflat dflat >4\sf < a c > < bflat dflat >4\sf
	< a c > < bflat dflat >4\sf < a c > < c, c' >\sf
	< g' b > < c, c' >\sf < c c' > < c c' >\sf
	< c c' > < c' e >\sf < g d' > < g d' >\sf
	< e c' > < c c' >2\p < f aflat >4(
	< e g >) < c c' >2\p < f aflat >4(
	< e g >) < c c' >2\p < f aflat >4(
	< e g >) < c c' >2\p < f aflat >4(
	< e g >) < c e >8 < c e > < c e >4 r
	< e g >4 < e g >8 < e g > < e g >4 r
	c4^\markup{\bold "zu 2"} c8 c c4 c8 c
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	b4 < b' dsharp >\p( < csharp e >) r
	r < b dsharp >\p( < csharp e >) r
	r < b dsharp >\p( < csharp e >) r
	r < b dsharp >\p( < csharp e >) < csharp e >\f(
	< b dsharp >) < b, b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	
	\key e \major
	
	e4.\ff^\markup{\bold "zu 2"} b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-. r r2\fermata
	
	R1*5
	
	\tuplet 6/4 { e4\p(_\markup { \translate #(cons 4 -1) \italic dolce }
		gsharp b d csharp b) }
	a r r2
	
	R1*4
	
	< gsharp b >2\p( < e gsharp >)
	< fsharp a >1~
	< fsharp a >\fermata
	< c c' >4.\f < b b' >8 < b b' >4 r
	< c c' >4. < b b' >8 < b b' >4 r
	c4-.^\markup{\bold "zu 2"} b-. c-. b-.
	c-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp-. e-. dsharp-.
	c'-. b-. e-. dsharp-.
	c-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	
	\clef "tenor"
	
	< b e >1\f~
	< b e >
	< b dsharp >1(
	< b fsharp' >)
	< b e >\p~
	< b e >
	< b dsharp >(
	< b fsharp' >)
	< b d >~_\cr
	< b d >
	< a c >~
	< a c >
	< dsharp! fsharp >~
	< dsharp fsharp >~
	< dsharp fsharp >~
	< dsharp fsharp >
	< dsharp fsharp >\f~
	< dsharp fsharp >~_\markup { \italic {sempre piu \dynamic f} }
	< dsharp fsharp >~
	< dsharp fsharp >
	< dsharp fsharp >\ff~
	< dsharp fsharp >~
	< dsharp fsharp >~
	< dsharp fsharp >
	
	\clef "bass"
	
	e4\sf dsharp csharp\sf b
	a\sf gsharp fsharp\sf e
	dsharp\sf d csharp\sf c
	b\sf asharp' a\sf gsharp
	fsharp\sf e dsharp!\sf csharp!
	b\sf b b\sf b
	e'4\sf dsharp csharp\sf b
	a\sf gsharp fsharp\sf e
	dsharp\sf d csharp\sf c
	b\sf asharp' a\sf gsharp
	fsharp\sf e dsharp!\sf csharp!
	b\sf b b\sf b
	e r r2
	e4.\sf b8 b4 r
	< gsharp gsharp' >4 r r2
	< gsharp gsharp' >4.\sf < e e' >8 < e e' >4 r
	< b' b' >4 r r2
	< b b' >4.\sf < gsharp gsharp' >8 < gsharp gsharp' >4 r
	< e' e' >4 r r2
	< e e' >4.\sf < b b' >8 < b b' >4 r
	< e e' > < b b' > < e e' > < b b' >
	< e e' > < b b' > < e e' > < b b' >
	< e e' > < b b' > < e e' > < b b' >
	< e e' > < b b' > < e e' > < b b' >
	< e e' > r r2
	< e, e' >4 r r2
	< e e' >4 r r2\fermata
	\bar "|."
}