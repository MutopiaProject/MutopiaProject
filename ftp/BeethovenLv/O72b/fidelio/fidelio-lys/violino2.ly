\version "2.18.0"
theSecondViolins =  \relative e'' {
	\clef "treble"
	\time 2/2
	\key e \major

	\set Score.skipBars = ##t

	e4.\f b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. < b, gsharp' e' >-.
	< b fsharp' dsharp' >-. r r2\fermata

	R1*8

	a'4.\f e8 e4-. r
	csharp'4.\sf < a, a' >8 < a a' >4-. r
	e'4.\sf csharp8 csharp4-. < e, csharp' a' >-.
	< e b' gsharp' >-. r r2\fermata

	R1*5

	d1\pp\>
	\tuplet 6/4 { c8\pp[(\! g c g c g] c[ g c g c g]) }
	\tuplet 6/4 { c[( g c g c g] c[ g c g c g]) }
	\tuplet 6/4 { e'[( c e c e c] e[ c e c e c]) }
	\tuplet 6/4 { e[( c e c e c] e[ c e c e c]) }
	\tuplet 6/4 { f[(_\cr c f c f c] f[ c f c f c]) }
	\tuplet 6/4 { f[( c f c f c] f[ c f c f c]) }
	\tuplet 6/4 { fsharp![( dsharp! fsharp dsharp fsharp dsharp]
		fsharp[ dsharp fsharp dsharp fsharp dsharp]) }
	\tuplet 6/4 { fsharp[( dsharp fsharp dsharp fsharp dsharp]
		fsharp[ dsharp fsharp dsharp fsharp dsharp]) }
	\tuplet 6/4 { a'[( fsharp a fsharp a fsharp] a[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { a[( fsharp a fsharp a fsharp] a[ fsharp a fsharp a fsharp]) }
	\tuplet 6/4 { dsharp'[( a dsharp a dsharp a] dsharp[ a dsharp a dsharp a]) }
	\tuplet 6/4 { fsharp'[( dsharp fsharp dsharp fsharp dsharp] fsharp[ dsharp fsharp dsharp fsharp dsharp]) }
	\tuplet 6/4 { csharp[( e csharp e csharp e] csharp[ e csharp e csharp e]) }
	\tuplet 6/4 { csharp[( e csharp e csharp e] csharp[ e csharp e csharp e]) }
	\tuplet 3/2 { dsharp8\ff[( b) < b b' >]~ } \tuplet 3/2 { < b b' >[( b) < b b' >]~ }
		\tuplet 3/2 { < b b' >[( b) < b b' >]~ } \tuplet 3/2 { < b b' >[( b) < b b' >]~ }
	\tuplet 3/2 { < b b' >[( b) < b b' >]~ } \tuplet 3/2 { < b b' >[( b) < b b' >]~ }
		\tuplet 3/2 { < b b' >[( b) < b b' >]~ } \tuplet 3/2 { < b b' >[( b) < b b' >]~ }
	< b b' >8\p r r4 r2
	r2 r4 fsharp4~
	\tuplet 3/2 { fsharp8[( gsharp fsharp] } \tuplet 3/2 { esharp[ fsharp esharp] }
		\tuplet 3/2 { fsharp[ gsharp fsharp] } \tuplet 3/2 { esharp[ fsharp esharp] }
	fsharp4) r r2

	R1*3

	\tuplet 3/2 { a8([ b a] } \tuplet 3/2 { gsharp[ a gsharp] }
		\tuplet 3/2 { a[ b a] } \tuplet 3/2 { gsharp[ a gsharp]) }
	a8_\cr a4 a4 a4 a8~
	a8 a4 a4 a4 a8
	gsharp1\p~
	gsharp
	a4( dsharp,2 e8 fsharp
	gsharp1)
	a4( dsharp,2 e8 fsharp
	gsharp8) gsharp4 gsharp gsharp gsharp8
	b8 b4 b4 b4 b8~
	b8 b4 b4 b4 b8~
	b8 b4 b4 b4 b8~
	b8 b4 b4 b4 b8
	fsharp4( a gsharp fsharp
	e gsharp b2)
	fsharp8[_\cr fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp](
	e)[ e( gsharp) gsharp]( b)[ b( gsharp) gsharp](
	fsharp)[ fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp]
	e4\f e'2 e8-. dsharp-.
	dsharp8-. csharp-. csharp2 csharp8-. b-.
	b8-. a-. a2 a8-. gsharp-.
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ gsharp' gsharp gsharp] gsharp[ gsharp gsharp gsharp]
	a[ a a a] a[ a a b]
	csharp[ csharp csharp csharp] dsharp[ dsharp dsharp e]
	gsharp,[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp4 r < e' b' gsharp' > r
	< e b' gsharp' > r < e b' gsharp' > r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:
	gsharp4 r < gsharp e' > r
	< e b' gsharp' > r < e b' gsharp' > r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:
	gsharp2: gsharp2:
	gsharp8[\sf gsharp gsharp gsharp] gsharp[-. e-. csharp-. b-.]
	asharp4 r r2
	r4 dsharp8\p( e fsharp4-.) fsharp8( gsharp
	e4-.) asharp8( b csharp4-.) csharp8( dsharp
	b4-.) b8( csharp dsharp4-.) dsharp8-. dsharp-.
	csharp4 r r2
	r4 dsharp,8\p( e fsharp4-.) fsharp8( gsharp
	e4-.) asharp8( b csharp4-.) csharp8( dsharp
	b4-.) b8( csharp dsharp4-.) dsharp8-. dsharp-.
	csharp4 r r2
	r4 bsharp,8( csharp dsharp4-.) dsharp8( e
	csharp4-.) r r2
	r4 dsharp8\p( e fsharp4-.) fsharp8( gsharp
	e4-.)_\cr dsharp8\p( e fsharp4-.) fsharp8( gsharp
	e4-.) dsharp8\p( e fsharp4-.) fsharp8( gsharp
	e4-.\f) < b' a' >8 < b a' > < b gsharp' >4 < b a' >8 < b a' >
	< b gsharp' >4 < b a' >8 < b a' > < b gsharp' >4 < b a' >8 < b fsharp' >
	e1\ff
	e8[ dsharp csharp b] a[ gsharp fsharp e]
	csharp1
	csharp'8[ b a gsharp] fsharp[ e dsharp csharp]
	asharp[ fsharp' fsharp fsharp] fsharp[ asharp asharp asharp]
	asharp[ csharp csharp csharp] csharp[ fsharp fsharp fsharp]
	fsharp\ff[ fsharp fsharp fsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp fsharp fsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp gsharp\sf gsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp gsharp\sf gsharp] fsharp[ fsharp e!\sf e]
	dsharp[ dsharp fsharp\sf fsharp] csharp[ csharp e\sf e]
	dsharp,[ dsharp fsharp\sf fsharp] csharp[ csharp e\sf e]
	dsharp4 r r < csharp' asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) < dsharp b' >8 < dsharp b' > < dsharp b' >4 r
	< dsharp b' >4 < dsharp b' >8 < dsharp b' > < dsharp b' >4 r
	< dsharp b' >4 < dsharp b' >8 < dsharp b' > < dsharp b' >4 < dsharp b' >8 < dsharp b' >
	< dsharp b' >4 < dsharp b' >8 < dsharp b' > < dsharp b' >4 < dsharp b' >8 < dsharp b' >
	< b b' >4 r r2
	R1
	d8\p d4 d d d8~
	d d4 d d d8~
	d8 b4 b b b8~
	b8 b4 b b b8
	c4( fsharp,2 g8 a
	b4) r r b(
	c4 fsharp,2 g8 a
	b8) g,4 g g g8~
	g8 g4 g g g8~
	g8 g4 g g g8~
	g8 g4 g g g8
	e' e4 e e e8~
	e e4 e e e8~
	e e4 e e e8~
	e e4 e e e8~
	e a,4 a a a8
	b8 b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b_\cr b4 b b b8~
	b b4 b b b8~
	b b'4\p b b b8~
	b b4 b b b8~
	b b4 b b b8~
	b4 r r2
	b,8[( csharp dsharp e] dsharp[ e fsharp gsharp]
	b,8[ csharp dsharp e] dsharp[ e fsharp gsharp]
	a[ gsharp fsharp b]) b[( gsharp a b]
	gsharp[ b gsharp e] b[ e b gsharp])
	a[( b a b]) a[( b a b])
	gsharp[( b gsharp b]) gsharp[( b gsharp b])
	fsharp'8[_\cr fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp](
	e)[ e( gsharp) gsharp]( b)[ b( gsharp) gsharp](
	fsharp)[ fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp]
	e4\f e'2 e8-. dsharp-.
	dsharp8-. csharp-. csharp2 csharp8-. b-.
	b8-. a-. a2 a8-. gsharp-.
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ gsharp' gsharp gsharp] gsharp[ gsharp gsharp gsharp]
	a[ a a a] a[ a a b]
	csharp[ csharp csharp csharp] dsharp[ dsharp dsharp e]
	gsharp,[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp4 r < e' b' gsharp' > r
	< e b' gsharp' > r < e b' gsharp' > r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:
	gsharp4 r < gsharp e' > r
	< e b' gsharp' > r < e b' gsharp' > r
	< fsharp a >8\sf[ < fsharp a > < fsharp a > < fsharp a >] < fsharp a >2:8
	< fsharp a >2:8 < fsharp a >2:
	gsharp2: gsharp2:
	gsharp2: gsharp2:
	gsharp2: gsharp2:
	gsharp8-.\sf[ gsharp-. gsharp-. gsharp-.] e'-.[ d-. b-. a-.]
	gsharp4 r r2
	r4 csharp,8\p( d e4-.) e8( fsharp
	d4-.) gsharp8( a b4-.) b8( csharp
	a4-.) a8( b csharp4-.) csharp8-. csharp-.
	b4-. r r2
	r4 csharp,8( d e4-.) e8( fsharp
	d4-.) gsharp8( a b4-.) b8( csharp
	a4-.) a8( b csharp4-.) csharp8-. csharp-.
	b4-. r r2

	R1*2

	r4 c,8\p( d e4-.) e8( f
	d8-.) r b'( c d-.) r d( e
	c4-.) c8( d e4-.) e8-. e-.
	d4-. r r2
	r4 b8(_\cr c d4-.) d8( e
	c4-.) b8( c d4-.) d8( e
	c4-.) b8( c d4-.) d8( e
	c4-.\f) f8 f e4 f8 f
	e4 f8 f e4 f8 f
	e8\ff[ c' b a] g[ f e d]
	c[ b a g] f[ e d c]

	\key c \major

	a''[ a g f] e[ d c b]
	a[ g f e] d[ c b a]
	a[ f' f f] f[ a a a]
	a[ c c c] c[ f f f]
	f[ f, f f] f[ f e\sf e]
	f[ f f f] f[ f e\sf e]
	f[ f e\sf e] f[ f e\sf e]
	f[ f e\sf e] f[ f c'\sf c]
	b[ b bflat\sf bflat] a[ a f\sf f]
	e[ e g\sf g] d[ d f\sf f]
	e4 r r < b' aflat' >4\f(
	< c g' >) r r < b aflat' >4\f(
	< c g' >) r r < b aflat' >4\f(
	< c g' >) r r < b aflat' >4\f(
	< c g' >) < c e >8 < c e > < c e >4 r
	< c e >4 < c e >8 < c e > < c e >4 r
	< c e >4 < c e >8 < c e > < c e >4 < c e >8 < c e >
	< c e >4 < c e >8 < c e > < c e >4 < c e >8 < c e >
	asharp'4 asharp8 asharp asharp4 asharp8 asharp
	asharp4 asharp8 asharp asharp4 asharp8 asharp
	b4 r r < csharp, asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) r r < csharp asharp' >\f(
	< dsharp b' >) < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 r r2
	R1

	\key e \major

	e4.\ff b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4 < b, gsharp' >-.
	< b fsharp' >-. r r2\fermata


	R1*14
	\bar "||"

	c,4.\f b8 b4 r
	c4. b8 b4 r
	c4-. b-. c-. b-.
	c4-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp!-. e-. dsharp-.
	c'-. b-. e-. dsharp-.
	c-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	< b, gsharp' >8\f[ < b gsharp' > < b gsharp' > < b gsharp' >] < b gsharp' >2:
	< b gsharp' >2: < b gsharp' >2:
	< b a' >2: < b a' >2:
	< b a' >2: < b a' >2:
	< b gsharp' >2:\p < b gsharp' >2:
	< b gsharp' >2: < b gsharp' >2:
	< b a' >2: < b a' >2:
	< b a' >2: < b a' >2:
	< b gsharp' >2:_\cr < b gsharp' >2:
	< b gsharp' >2: < b gsharp' >2:
	< c a' >2: < c a' >2:
	< a' c >2: < a c >2:
	< a c >2: < a c >2:
	< a c >2: < a c >2:
	< a c >2: < a c >2:
	< a c >2: < a c >2:
	< fsharp dsharp' >2:\f < fsharp dsharp' >2:
	< fsharp dsharp' >2:_\markup { \italic {sempre piu \dynamic f} } < fsharp dsharp' >2:
	< fsharp dsharp' >2: < fsharp dsharp' >2:
	< fsharp dsharp' >2: < fsharp dsharp' >2:
	< fsharp dsharp' >2:\ff < fsharp dsharp' >2:
	< fsharp dsharp' >2: < fsharp dsharp' >2:
	< fsharp dsharp' >2: < fsharp dsharp' >2:
	< fsharp dsharp' >2: < fsharp dsharp' >2:
	gsharp'8\sf[ gsharp fsharp fsharp] a\sf[ a gsharp gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b,\sf[ b csharp csharp] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b b b] b\sf[ b b b]
	gsharp8\sf[ gsharp fsharp fsharp] a\sf[ a gsharp gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b,\sf[ b csharp csharp] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b b b] b\sf[ b b b]
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
	\bar "|."
}