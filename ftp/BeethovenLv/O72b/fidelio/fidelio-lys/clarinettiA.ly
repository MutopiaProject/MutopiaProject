\version "2.18.0"
theClarinets =  \relative a'' {
	\transposition a 
	\set Score.skipBars = ##t
	
	\clef "treble"
	\time 2/2
	\key g \major
	
	g4.\f^\markup{\bold "zu 2"} d8 d4-. r
	< b b' >4.\sf < g g' >8 < g g' >4-. r
	< d' d' >4.\sf < b b' >8 < b b' >4-. < b g' >-.
	< a fsharp' >-. r r2\fermata
	
	R1*4
	
	<< { f'1( d g e) } \\
		{ d1\p(_\markup { \translate #(cons 4 -1) \italic dolce } g, e' c) } >>
	c4.\f^\markup{\bold "zu 2"} g8 g4-. r
	e'4.\sf c8 c4-. r
	g'4.\sf e8 e4-. < e c' >-.
	< d b' >-. r r2\fermata
	
	R1*2
	
	< eflat g >1\p(
	< c eflat >)
	<< { c1 } \\ { c2\pp(\< aflat)\! } >>
	< aflat bflat >1\>
	< g bflat >4\! r r2
	
	R1*5
	
	< c fsharp >1~_\cr
	< c fsharp >~
	< c fsharp >~
	< c fsharp >~
	< c fsharp >~
	< c fsharp >
	< bflat g' >(
	< g' bflat >)
	< fsharp a >8\ff r < d d' > r < d d' > r < d d' > r
	< d d' > r < d d' > r < d d' > r < d d' > r
	< d d' >\p r r4 r2
	R1
	< e g >1\p(
	< csharp e >)
	< d fsharp >4 r r2
	<< { r2 r4 d4( } \\ { R1 } >>
	<< { c!1)( a) } \\ { a1( fsharp) } >>
	< f d' >1~_\cr
	< f d' >(
	< g d' >4\p) r r2
	
	R1*5
	
	g'4.^\markup { \bold 1. }_\markup { \italic dolce }
		d8 d4 r
	g4. d8 d4 r
	a'4( c b a
	g b) << { d2~ } \\ { s2 } >>
	<< { d1~ } \\ { s1 } >>
	<< { d~ } \\ { s1 } >>
	<< { d1~_\cr } \\ { d,1~ } >>
	<< { d'1~ } \\ { d,1~ } >>
	<< { d'1~ } \\ { d,1 } >>
	< g, g' >4\f r r2
	< c e >4 r r2
	< a c >4 r r < a c >
	< fsharp' a > < a, c > < c a' > < a c >
	< g b > < b g' > r2
	< c e >4 < c e > r2
	< a c >4 < a c > r < g b >
	< a c > < a c > < c a' > < a c >
	< g b > r < d' d' > r
	< d d' > r < d d' > r
	< d d' >1\sf~
	< d d' >
	< d d' >4 r < d d' > r
	< d d' > r < d d' > r
	< d d' >1\sf~
	< d d' >~
	< d d' >~
	< d d' >2 b'8-.[^\markup{\bold "zu 2"} g-. e-. d-.]
	csharp4 r r2
	R1
	r4 a\p^\markup { \bold 1. } r a
	r a' r a
	r a r2
	R1
	r4 a,\p r a
	r a' r a
	r b,2\p(^\markup{\bold "zu 2"} c4)
	b1~
	b4 < d d' >2( < e e' >4)
	< d d' >1\p~
	< d d' >~_\cr
	< d d' >~
	< d d' >4\f < d d' >8 < d d' > < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' > < d d' >4 < d d' >8 < d d' >
	< d d' >4 g2.\ff^\markup{\bold "zu 2"}
	g8[ fsharp e d] c[ b a g]
	e'4 e2.
	e8[ d c b] a[ g fsharp e]
	< a e' >1~
	< a e' >
	< a a' >4 r r2
	< a a' >4 r r2
	< a a' >4 r < a a' >4 r
	< a a' >4 r < a a' >4 r
	< a a' >4 r < b b' > r
	< a a' > < a a' >\sf < a a' > < a a' >\sf
	< d, d' > < a' c! >\p( < g b >) < a a' >\f~
	< a a' > < a c >\p( < g b >) < a a' >\f~
	< a a' > < a c >\p( < g b >) < a a' >\f~
	< a a' > < a c >\p( < g b >) < a a' >\f~
	< a a' > < a a' >8 < a a' > < a a' >4 r
	< a f' >4 < a f' >8 < a f' > < a f' >4 r
	< d, d' >4 < d d' >8 < d d' > < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' > < d d' >4 < d d' >8 < d d' >
	< d d' >4 r r2
	
	R1*3
	
	d'1\p~^\markup { \bold 1. }_\markup { \translate #(cons 4 -1) \italic dolce }
	d
	eflat
	d
	eflat
	d4 r r2
	
	R1*2
	r4 bflat( c d
	eflat-.) < eflat! g >\p( < d f > < c eflat >
	< b! d >-.) < b d >( < c eflat > < d f >
	< eflat g >-.) r r2
	R1
	r4 < c eflat >\p( < a c > < g bflat >
	< fsharp! a >-.) r r2
	r4 < bflat d >( < a c > < g bflat! >)
	
	R1*3
	
	r4 < bflat d >\p( < a c > < g bflat! >)
	
	R1*2
	
	r4 << { b!4( a g) } \\ { b4( a g) } >>
	r4 < a c >(_\cr < g b > < fsharp a >)
	r4 < c' a' >( < b g' > < a fsharp' >)
	< b g' >\p r r2
	
	R1*2
	\mbreak
	R1
	
	g'4.^\markup { \bold 1. }_\markup { \italic dolce }
		d8 d4 r
	g4. d8 d4 r
	a'4( c b a
	g b d2)~
	d1~
	d_\cr
	< d, d' >1~_\cr
	< d d' >~
	< d d' >
	< g, g' >4\f r r2
	< c e >4 r r2
	< a c >4 r r < a c >
	< fsharp' a > < a, c > < c a' > < a c >
	< g b > < b g' > r2
	< c e >4 < c e > r2
	< a c >4 < a c > r < g b >
	< a c > < a c > < c a' > < a c >
	< g b > r < d' d' > r
	< d d' > r < d d' > r
	< d d' >1\sf~
	< d d' >
	< d d' >4 r < d d' > r
	< d d' > r < d d' > r
	< d d' >1\sf~
	< d d' >~
	< d d' >~
	< d d' >
	< d b' >~
	< d b' >2 << { g8-.[ f-. d-. c-.] } \\ { g'8-.[ f-. d-. c-.] } >>
	<< { b4 } \\ { b4 } >> r4 r2
	r4 g\p^\markup { \bold 1. } r g
	r g' r g,
	r g r g'
	g r r2
	r4 g, r g
	r g' r g,
	r g r g'
	g r r2
	r4 a, r a'
	<< { a4 } \\ { r4 } >> bflat,2\p(^\markup{\bold "zu 2"} c4)
	bflat1~
	bflat1~
	bflat1~
	bflat4 r r2
	
	R1*3
	
	< bflat bflat' >4\f < bflat bflat' >8 < bflat bflat' >
		< bflat bflat' >4 < bflat bflat' >8 < bflat bflat' >
	< bflat bflat' >4 < bflat bflat' >8 < bflat bflat' >
		< bflat bflat' >4 < bflat bflat' >8 < bflat bflat' >
	< eflat g >1\ff
	R1
	< c c' >1
	R1
	< aflat eflat' >1~
	< aflat eflat' >
	c2.^\markup{\bold "zu 2"} bflat4\sf
	c2. bflat4\sf
	c bflat\sf c bflat\sf
	c bflat\sf c bflat\sf
	r2 r4 eflat\sf
	< eflat g > < eflat g >\sf < d f > < d f >\sf
	< g, eflat' > < aflat c >\p( < g bflat >) r
	r < aflat c >\p( < g bflat >) r
	r < aflat c >\p( < g bflat >) r
	r < aflat c >\p( < g bflat >) < d' f >\f(
	< eflat g >) r r2
	
	R1*3
	
	< csharp g' >4\f < csharp g' >8 < csharp g' > < csharp g' >4 < csharp g' >8 < csharp g' >
	< csharp g' >4 < csharp g' >8 < csharp g' > < csharp g' >4 < csharp g' >8 < csharp g' >
	< d fsharp! >4 < fsharp! d' >\p( < g csharp >) r
	r < fsharp d' >\p( < g csharp >) r
	r < fsharp d' >\p( < g csharp >) r
	r < fsharp d' >\p( < g csharp >) < e csharp' >\f(
	< fsharp d' >) < d d' >8 < d d' > < d d' >4 < d d' >8 < d d' >8
	< d d' >4 < d d' >8 < d d' >8 < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' >8 < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' >8 < d d' >4 < d d' >8 < d d' >
	< d d' >4\ff < d d' >8 < d d' >8 < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' >8 < d d' >4 < d d' >8 < d d' >
	< d d' >4 < d d' >8 < d d' >8 < d d' >4-. < g b >-.
	< fsharp a >-. r r2\fermata
	R1
	\tuplet 6/4 { d4(\p_\markup { \translate #(cons 4 -1) \italic dolce } fsharp a c b a) }
	g r r2
	R1
	<< { f1( d g e) } \\
		{ d1\p(_\markup { \translate #(cons 4 -1) \italic dolce } g, e' c) } >>
	<< { < a' c >1( } \\ { s1 } >>
	<< { a1) } \\ { fsharp2( d) } >>
	< d b' >1(
	< b g' >)
	< c g' >(
	< c fsharp >\fermata)
	eflat4.\f^\markup{\bold "zu 2"} d8 d4 r
	eflat4. d8 d4 r
	
	R1*8
	
	< b d >1\f~
	< b d >
	< c d >~
	< c d >
	< b d >\p~
	< b d >
	< c d >~
	< c d >
	< b d >~_\cr
	< b d >
	< c eflat >~
	< c eflat >
	< c eflat >~
	< c eflat >~
	< c eflat >~
	< c eflat >
	< d c' >\f~
	< d c' >~_\markup { \italic {sempre piu \dynamic f} }
	< d c' >~
	< d c' >
	< d c' >\ff~
	< d c' >~
	< d c' >~
	< d c' >
	b4\sf a c\sf b
	a\sf g fsharp\sf g
	a\sf b c\sf csharp
	d\sf e fsharp\sf g
	a\sf b c\sf csharp
	d\sf d d\sf d
	b,4\sf a c\sf b
	a\sf g fsharp\sf g
	a\sf b c\sf csharp
	d\sf e fsharp\sf g
	< a, a' >\sf < b b' > < c c' >\sf < csharp csharp' >
	< d d' >\sf < d d' > < d d' >\sf < d d' >
	< g, g' > r r2
	<< { g'4.\sf d8 d4 } \\ { g4. d8 d4 } >> r4
	< b b' >4 r r2
	< b b' >4.\sf < g g' >8 < g g' >4 r
	< d' d' > r r2
	< d d' >4.\sf < b b' >8 < b b' >4 r
	<< { g'4 } \\ { g4 } >> r4 r2
	g4.\sf^\markup{\bold "zu 2"} d8 d4 r
	g4 d g d
	g4 d g d
	g4 d g d
	g4 d g d
	g r r2
	g4 r r2
	g,4 r r2\fermata
	\bar "|."
}