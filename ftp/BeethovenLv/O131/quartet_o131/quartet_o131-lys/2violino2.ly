\version "2.6.2"

mIIViolinTwo =  \relative csharp' {
	\clef "treble"
	\key d \major
	\time 6/8
	
	\partial 8*3 d4.\pp(
	d) d~
	d d~
	d d~
	d d~
	d d~
	d d~
	d b
	a8[( e' d]) r4 r8
	\setTextCresc
		fsharp'[(\< g fsharp]) fsharp,[ fsharp fsharp]
	g[ g g] r4 r8
	< g b >[ < g b > < g b >] r4 r8
	fsharp[( g fsharp]) r4 r8
	r4 r8 fsharp'[ fsharp fsharp]
	r4 r8 g[( a g])
	r4 r8 g[ g g]
	r4 r8 fsharp[ a, a]
	a[\!\> a a] a[ a fsharp]\!
	fsharp\f[ fsharp dsharp] e[ e e]
	g[ g fsharp] fsharp[ esharp e]
	e[_\markup { \dynamic p \italic cresc. } csharp csharp] d![ d d]
	d[\> d d] d[ d d]\!
	b'\f[ b b] b,[ b b]
	csharp[ d d] d[ g, g]
	fsharp'4 r8 r4 r8
	R1*6/8
	r4 r8
		\setTextCresc
		e'4.(\<
	csharp a)~
	a\p(\! d,~
	d csharp)
	r4_\cr d8( g4 fsharp8
	b4 a8 e'4 d8)
	r4 b,8( fsharp'4 e8
	csharp'4 b8 e4 d8)
	r4 csharp,8( fsharp4 e8
	b'4 a8 d4 csharp8)
	r4 d,8( a'4 gsharp8
	csharp4 b8 e4 d8)
	fsharp4(_\markup { \italic dim. } e8 csharp4 b8)
	b4.( csharp
	b4) fsharp'8( gsharp4 fsharp8)
	\setTextCresc
		esharp4.(\< csharp)~
	csharp2.~
	csharp2.\!\>
	csharp4.\p(\! esharp)~
	esharp2.~_\markup { \italic più \dynamic p }
	esharp~
	esharp\pp~
	esharp4.\fermata e,!4.\pp~
	e4. b'8[( a b])
	r4 r8 a8[( b a])
	a2.
	gsharp4. gsharp8[( a gsharp])
	
	R1*3/4*3
	
	\setTextCresc
		gsharp8[(\< a gsharp]) gsharp[( a gsharp])
	gsharp4( e'8 d!4 csharp8)
	csharp4( b'8 a4 gsharp8)
	gsharp4( fsharp8 e4 d8)\!
	csharp4-.\f csharp,8-. b4-. csharp8-.
	b4-. a'8-.\p gsharp4-. b8-.
	e,4-. r8 r4 r8
	r4 b'8-.\p asharp4-. csharp8-.
	fsharp,4-. r8 r4 r8
	r4 d'8-.\p csharp4-. e8-.
	a,4-._\cr a8-. a4-.\f r8
	r4 a8 a4\sf r8
	a4 a8 a4\sf r8
	r4 a8 a4\sf a8
	g4\f r8 r4 g8
	fsharp4 r8 r4 fsharp8
	e4 d8 csharp4\sf < a e' >8
	< a e' >4 csharp8 d4\sf a'8
	a4\p r8 r4 r8
	r4 a8( a'4 fsharp8)
	fsharp4( e8) r4 r8
	r4 fsharp,8( a4 gsharp8
	a4-.) r8 r4 r8
	r4 a8( a'4 fsharp8
	g!4 fsharp8)_\cr fsharp,4.~
	fsharp4 r8 bflat4.~
	bflat4 g8( gsharp4.)~
	gsharp4 r8 a4.\p~
	a8( g! a) fsharp( e fsharp)
	r4 r8 fsharp( e fsharp)
	r4 r8 g g g
	g, g g g'( fsharp g)
	fsharp(_\cr e fsharp) d4.(
	d'4.)~( d4 csharp8)
	csharp4( asharp8 b4 csharp8)
	d4( csharp8 e[ d b])
	a!4( csharp8 d4 e8
	fsharp4 e8 d4 csharp8)
	< d, b' >2.~
	< d b' >4. g4 < d b' >8~
	< d b' >4._\cr a'8 a fsharp
	fsharp\> a a a a fsharp
	fsharp\f a a g e e
	e a, a a g g'
	g4_\markup { \dynamic p \italic cresc. } csharp8( d4 b'8)
	b4.~\> b4( d,8)\!
	d4\f( b8 c4 a'8)
	a4( g8) g4( fsharp8)
	g4 r8 r4 r8
	r4 a,8(_\markup { \dynamic p \italic cresc. } b4 g'8)
	fsharp4 r8 r4 r8
	r4 g,,8\p( a4 fsharp'8)
	\setTextCresc
		b,8\< b b b b b
	b b asharp' asharp4( b8)
	asharp4( b8) b4( csharp8)\!
	csharp4\f( fsharp,8) fsharp4( b8)
	b'2.\p~
	b2.
	asharp4.\p(\< csharp,
	fsharp asharp,
	b\! asharp\(
	< asharp csharp >\)\> b)\!
	asharp\p\< asharp
	b b~
	b\! asharp(
	b)\> b\!
	fsharp'2.~_\markup { \italic dim. }
	fsharp~
	fsharp4\p fsharp8(_\markup { \italic più \dynamic p } g4 fsharp8)
	r4 fsharp8\pp( g4 fsharp8)~
	fsharp4.\fermata r4 r8
	r4 r8 fsharp,4.\pp(
	g) g,(
	g'2.)~
	\setTextCresc
		g4\< b'8( a4 g8) g4( fsharp8 e4 d8)
	csharp4( b8 a4 csharp8)\!
	d4\f r8 r4 r8
	r4 d8-.\p csharp4-. e8-.
	a,4-. r8 r4 r8
	r4 e'8-.\p dsharp4-. fsharp8-.
	b,4-. r8 r4 r8
	r4 d!8-.\p d4-. d8-.
	d4-._\markup { \italic cresc. \dynamic f } d8-. d4-. r8
	r4 d8 d4\sf r8
	r4 d8 d4\sf r8
	r4 d8 d4\sf d8
	c4\f r8 r4 c8
	b4 r8 r4 b8 a4 g8 fsharp4\sf fsharp8
	g4 g8 g4\sf b8
	d4\p r8 d,4.~
	d4 d'8( d'4 b8)
	b4( a8) r4 r8
	r4 b,8( d,4 csharp8
	d4-.) r8 r4 r8
	r4 d'8( d'4 b8
	c4 b8)
		\setTextCresc
		g,4.~\<
	g4 r8 g4.~
	g4 r8 g4.~
	g4\! r8 g4.\p(
	g'2.)~
	g~
	g~
	g~
	g4 r8
		\setTextCresc
		a,8(\< g a)
	r4 r8 a( g a)\!
	r4 r8 b,\p( a b)
	r4 r8 b' b b
	r4 r8
		\setTextCresc
		fsharp\< fsharp fsharp
	r4 r8 fsharp fsharp fsharp
	r4 r8 b, b b
	r4 r8 b' b b\!
	asharp4\f r8 r4 r8
	R1*3/4
	r4 fsharp8\p(
	csharp'4 b8
	e4 d8 g4 fsharp8
	e4-.) r8 r4
		\setTextCresc
		a,8(\<
	d4 csharp8 fsharp4 e8
	d4-.) d,8( g4 fsharp8
	b4 a8 e4 d8
	fsharp4 e8 a4 g8
	fsharp4 g8 e4 csharp8
	e4 d8 a4 asharp8
	csharp4 b8)\! e4\f( a!8
	g4 fsharp8 d4 dsharp8
	fsharp4 e8) g,4\ff( bflat8
	csharp4 e8 g,4 bflat8
	csharp4 e8 g4) a8\ff(
	fsharp') r e[( d]) r c(
	b!) r a[( g]) r < g e' >~
	< g e' >4. csharp,4.\p~
	csharp~ csharp4\fermata a'8\ff(
	fsharp') r asharp,[( d]) r fsharp,(
	b) r dsharp,[( g]) r < g e' >~
	< g e' >4. e4.\p~
	e2.~
	e4.( fsharp4) r8
	r4 r8 csharp4.~_\markup { \italic {mezza voce}}
	csharp( d4) r8
	R1*3/4
	d4\pp r8 r4 r8
	d4 r8 r4 r8
}