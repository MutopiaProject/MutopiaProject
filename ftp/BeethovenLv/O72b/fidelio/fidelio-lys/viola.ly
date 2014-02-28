\version "2.18.0"
theViolas =  \relative e' {
	\clef "alto"
	\time 2/2
	\key e \major

	e4.\f b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. < b, gsharp' >-.
	< b fsharp' >-. r r2\fermata

	R1*8

	a4.\f e8 e4-. r
	csharp'4.\sf a8 a4-. r
	e'4.\sf csharp8 csharp4-. a'-.
	e-. r r2\fermata

	R1*4

	a,1\pp\<
	g\!\>
	\tuplet 6/4 { c,8\pp[(\! g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[( g' c, g' c, g'] } \tuplet 6/4 { c,8[ g' c, g' c, g']) }
	\tuplet 6/4 { c,8[(_\cr a' c, a' c, a'] } \tuplet 6/4 { c,8[ a' c, a' c, a']) }
	\tuplet 6/4 { c,8[( a' c, a' c, a'] } \tuplet 6/4 { c,8[ a' c, a' c, a']) }
	\tuplet 6/4 { a8[( fsharp! a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a8[( fsharp a fsharp a fsharp] } \tuplet 6/4 { a8[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { g8[( e g e g e] } \tuplet 6/4 { g8[ e g e g e]) }
	b'8\ff r b r b r b r
	b r b r b r b r
	b\p r r4 r2
	R1
	r2 r4 fsharp4~
	\tuplet 3/2 { fsharp8[( gsharp fsharp] } \tuplet 3/2 { esharp[ fsharp esharp] }
		\tuplet 3/2 { fsharp[ gsharp fsharp] } \tuplet 3/2 { e[ fsharp e] }
	dsharp4) r r2
	r2 r4 b'~
	\tuplet 3/2 { b8[( csharp b] } \tuplet 3/2 { asharp[ b asharp] }
		\tuplet 3/2 { b[ csharp b] } \tuplet 3/2 { asharp[ b asharp] }
	b4) r r2

	R1*8

	gsharp1\p~
	gsharp
	a4( dsharp,2 e8 fsharp
	gsharp1)
	a4( dsharp,2 e8 fsharp
	gsharp1)
	a4(_\cr dsharp,2 e8 fsharp
	gsharp1)
	a4( dsharp,2 e8 fsharp)
	gsharp4\f gsharp2 gsharp8-. gsharp-.
	a-. a-. a2 < a csharp >8-. < gsharp b >-.
	< gsharp b >-. < fsharp a >-. fsharp'2 fsharp8-. e-.
	e[ dsharp csharp b] b[ a gsharp fsharp]
	gsharp[ gsharp gsharp gsharp] gsharp[ gsharp gsharp gsharp]
	a[ a a a] a[ a a b]
	csharp[ csharp csharp csharp] dsharp[ dsharp dsharp e]
	e[ dsharp csharp b] b[ a gsharp fsharp]
	e4 r e' r
	e r e r
	< fsharp, a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:8
	gsharp4 r gsharp r
	gsharp r gsharp r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:8
	gsharp2: gsharp2:
	gsharp8\sf[ gsharp gsharp gsharp] gsharp8-.[ e-. csharp'-. b-.]
	asharp4-. r r2
	r4 b8\p( csharp dsharp4-.) dsharp8( e
	csharp4-.) r r2
	r4 fsharp8( e dsharp4-.) dsharp8( b
	fsharp'4-.) r r2
	r4 b,8\p( csharp dsharp4-.) dsharp8( e
	csharp4-.) r r2
	r4 fsharp8( e dsharp4-.) dsharp8( b
	fsharp'4-.) r r2
	r4 gsharp8 gsharp gsharp4 gsharp8 gsharp
	gsharp4 r r2
	r4 b,8\p b b4 b8 b
	b4_\cr b8 b b4 b8 b
	b4 b8 b b4 b8 b
	e4\f b8 b e4 b8 b
	e4 b8 b e4 b8 b
	e1\ff
	e8[ dsharp csharp b] a[ gsharp fsharp e]
	csharp'1
	csharp8[ b a gsharp] fsharp[ e dsharp csharp]
	asharp'8[ asharp asharp asharp] asharp[ asharp asharp asharp]
	asharp8[ asharp asharp asharp] asharp[ asharp asharp asharp]
	fsharp'8\ff[ fsharp fsharp fsharp] fsharp[ fsharp csharp\sf csharp]
	fsharp8[ fsharp fsharp fsharp] fsharp[ fsharp csharp\sf csharp]
	fsharp[ fsharp csharp\sf csharp] fsharp[ fsharp csharp\sf csharp]
	fsharp[ fsharp csharp\sf csharp] csharp[ csharp fsharp\sf fsharp]
	fsharp[ fsharp b,\sf b] gsharp[ gsharp gsharp'\sf gsharp]
	fsharp[ fsharp fsharp,\sf fsharp] fsharp'[ fsharp fsharp,\sf fsharp]
	b4 r r b\f~
	b4 r r b\f~
	b4 r r b\f~
	b4 r r b\f~
	b b8 b b4 r
	b4 b8 b b4 r
	b4 b8 b8 b4 b8 b8
	b4 b8 b8 b4 b8 b8
	b4 r r2

	R1*12

	\set Staff.midiInstrument = #"pizzicato strings"
	e4\p^\markup { \italic pizz. } r8 e,8 e4 r
	e'4 r8 e,8 e4 r
	e'4 r8 e,8 e4 r
	e'4 r8 e,8 e4 r
	a4 r8 a8 a4 r

	R1*11

	\set Staff.midiInstrument = #"string ensemble 1"
	gsharp'1\p~^\markup { \italic arco }
	gsharp
	a4( b,2 csharp8 dsharp
	e4) r r2

	R1*4

	b'8\p b4 b4 b4 b8~
	b8 b4 b4 b4 b8~
	b8_\cr b4 b4 b4 b8~
	b8 b4 b4 b4 b8~
	b8 b4 b4 b4 b8~
	b4\f gsharp,2 gsharp8-. gsharp-.
	a-. a-. a2 < a csharp >8-. < gsharp b >-.
	< gsharp b >-. < fsharp a >-. fsharp'2 fsharp8-. e-.
	e[ dsharp csharp b] b[ a gsharp fsharp]
	gsharp[ gsharp gsharp gsharp] gsharp[ gsharp gsharp gsharp]
	a[ a a a] a[ a a b]
	csharp[ csharp csharp csharp] dsharp[ dsharp dsharp e]
	e[ dsharp csharp b] b[ a gsharp fsharp]
	e4 r e' r
	e r e r
	< fsharp, a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:8
	gsharp4 r gsharp r
	gsharp r gsharp r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:8
	gsharp2: gsharp2:
	gsharp2: gsharp2:
	gsharp2: gsharp2:
	gsharp8\sf[ gsharp gsharp gsharp] e'-.[ d-. b-. a-.]
	gsharp4 r r2

	r4 a8\p( b csharp4-.) csharp8( d
	b4-.) r r2
	r4 e8( d csharp4-.) csharp8( a
	e'4-.) r r2
	r4 a,8( b csharp4-.) csharp8( d
	b4-.) r r2
	r4 e8( d csharp4-.) csharp8( a
	e'4-.) r r2
	r4 b8( csharp d4-.) d8( e
	csharp4-.) r r2
	R1
	r4 f8( e d-.) r b b
	c r g'( f e4-.) c8-. c-.
	g'4 r r2
	r4 g8_\cr g g4 g8 g
	g4 g8 g g4 g8 g
	g4 g8 g g4 g8 g
	g4\f d8 d c4 d8 d
	c4 d8 d c4 d8 d
	d1\ff
	d'8[ c b a] g[ f e c]

	\key c \major

	a1
	a'8[ g f e] d[ c b a]
	c[ c c c] c[ c c c]
	c[ c c c] c[ c c c]
	c2. dflat4\sf
	c2. dflat4\sf
	c dflat\sf c dflat\sf
	c8[ c dflat\sf dflat] c[ c d\sf d]
	d8[ d c\sf c] c[ c c\sf c]
	c[ c g\sf g] g[ g g\sf g]
	g4 r r < c, c' >\f~
	< c c' > r r < c c' >\f~
	< c c' > r r < c c' >\f~
	< c c' > r r < c c' >\f~
	< c c' > < c c' >8 < c c' > < c c' >4 r
	< c c' > < c c' >8 < c c' > < c c' >4 r
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	< c c' >4 < c c' >8 < c c' > < c c' >4 < c c' >8 < c c' >
	b'4 r r g'4\f(
	fsharp) r r g\f(
	fsharp) r r g\f(
	fsharp) r r g\f(
	fsharp) b,8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 b8 b b4 b8 b
	b4 r r2

	\key e \major

	e4.\ff b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. e-.
	b-.\sf r r2\fermata

	R1*14

	c4.\f b8 b4 r
	c4. b8 b4 r
	c4-. b-. c-. b-.
	c4-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp-. e-. dsharp-.
	c-. b-. e-. dsharp-.
	c-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	< e, gsharp >8\f[ < e gsharp > < e gsharp > < e gsharp >] < e gsharp >2:
	< e gsharp >2: < e gsharp >2:
	< fsharp a >2: < fsharp a >2:
	< fsharp a >2: < fsharp a >2:
	< e gsharp >2:\p < e gsharp >2:
	< e gsharp >2: < e gsharp >2:
	< fsharp a >2: < fsharp a >2:
	< fsharp a >2: < fsharp a >2:
	< gsharp b >2:_\cr < gsharp b >2:
	< gsharp b >2: < gsharp b >2:
	< a c >2: < a c >2:
	< a c >2: < a c >2:
	< fsharp' a >2: < fsharp a >2:
	< fsharp a >2: < fsharp a >2:
	< fsharp a >2: < fsharp a >2:
	< fsharp a >2: < fsharp a >2:
	<< { b2: b2: } \\ { < fsharp a >2:\f < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2:_\markup { \italic {sempre piu \dynamic f} } < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2: < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2: < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2:\ff < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2: < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2: < fsharp a >2: } >>
	<< { b2: b2: } \\ { < fsharp a >2: < fsharp a >2: } >>
	e'8\sf[ e dsharp dsharp] csharp\sf[ csharp b b]
	a\sf[ a gsharp gsharp] fsharp\sf[ fsharp e e]
	dsharp\sf[ dsharp d d] csharp\sf[ csharp c c]
	b\sf[ b asharp asharp] a\sf[ a gsharp' gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp csharp! csharp]
	b\sf[ b' b b] b\sf[ b b b]
	e8\sf[ e dsharp dsharp] csharp\sf[ csharp b b]
	a\sf[ a gsharp gsharp] fsharp\sf[ fsharp e e]
	dsharp\sf[ dsharp d d] csharp\sf[ csharp c c]
	b\sf[ b asharp' asharp] a\sf[ a gsharp gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp csharp! csharp]
	b\sf[ b' b b] b\sf[ b b b]
	e,4.\sf b8 b4 r
	R1
	gsharp'4.\sf e8 e4 r
	R1
	b'4.\sf gsharp8 gsharp4 r
	R1
	e'4.\sf b8 b4 r
	R1
	e8[ e b b] e8[ e b b]
	e8[ e b b] e8[ e b b]
	e8[ e b b] e8[ e b b]
	e8[ e b b] e8[ e b b]
	e4 r r2
	< e,, b' e >4 r r2
	e4 r r2\fermata
}