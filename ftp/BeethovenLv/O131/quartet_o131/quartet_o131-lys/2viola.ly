\version "2.6.2"

mIIViola =  \relative csharp {
	\clef "alto"
	\key d \major
	\time 6/8
	
	\partial 8*3 d4.\pp(
	d' fsharp,
	g) g~
	g g~
	g fsharp~
	fsharp fsharp(
	g) g~
	g g(
	fsharp4) r8
		\setTextCresc
		fsharp'4.(\<
	d')~ d4( csharp8)
	csharp4( asharp8 b4 csharp8
	d4 csharp8 e[ d b])
	b4( a!8) a4( g8)
	fsharp[ fsharp fsharp] r4 r8
	g[ g g] r4 r8
	< g b >[ < g b > < g b >] r4 r8
	fsharp[ fsharp fsharp] fsharp[ fsharp fsharp]\!
	fsharp[\> fsharp fsharp] e[ dsharp dsharp]\!
	dsharp\f[ dsharp a] g[ g g]
	g[ csharp d!] a[ gsharp g]
	g[_\markup { \dynamic p \italic cresc. } g g] fsharp[ fsharp fsharp]
	fsharp[\> fsharp fsharp] fsharp[ fsharp fsharp]\!
	b\f[ b b] g[ g g]
	g[ fsharp fsharp] fsharp[ e e]
	d4 r8 r4 r8
	R1*6/8
	r4 r8
		\setTextCresc
		g'4.~\<
	g( csharp,4 a8)\!
	a4.\p( fsharp
	e2.)
	d4_\cr r8 r4 r8
	fsharp'4 r8 d,4 r8
	R1*6/8
	gsharp'4 gsharp,8( csharp4 b8)
	r4 csharp,8( fsharp4 e8
	b'4 a8 d4 csharp8)
	r4 d,8( a'4 gsharp8
	csharp4 b8 e4 d8)
	fsharp4(_\markup { \italic dim. } e8 gsharp4.)
	fsharp4 fsharp8( g!4 fsharp8)
	fsharp2.
	\setTextCresc
		gsharp4.\< gsharp(
	fsharp esharp\!
	gsharp\> fsharp)
	esharp2.\p~\!
	esharp2.~_\markup { \italic piu \dynamic p }
	esharp~
	esharp4\pp csharp'8( d4 csharp8)~
	csharp4.\fermata r4 r8
	r4 r8 gsharp8\pp( fsharp gsharp)
	a( gsharp a) r4 r8
	
	R1*3/4*2
	
	gsharp,8( fsharp gsharp a4 b8)
	e,!4. e'4.(
	a) a
	\setTextCresc
		gsharp4\< r8 b,( csharp b)
	b4( e8 d!4 csharp8)
	csharp4( b'8 a4 gsharp8)
	gsharp4( fsharp8 e4 d8)\!
	csharp4-.\f e,8-. e4-. e8-.
	e4-. r8 r4 r8
	r4 d8-.\f csharp4-. d8-.
	csharp4-. r8 r4 r8
	r4 fsharp8-.\f e4-. fsharp8-.
	e4-. r8 r4 csharp'8-.\p
	fsharp4-._\markup { \italic cresc. \dynamic f } gsharp8-. fsharp4-. r8
	r4 fsharp8 e4\sf r8
	r4 e8 d4\sf r8
	r4 d8 csharp4\sf a8
	g4\f r8 r4 g8
	fsharp4 r8 r4 fsharp8
	e4 a8 g4\sf csharp8
	< e, g >4 g8 fsharp4\sf fsharp'8
	a,4\p r8 r4 r8
	d2.
	gsharp,4( b8 a4 gsharp8
	a4-.) d,8( e4 d8)
	csharp2.(
	d)~
	d~_\cr
	d4 r8 d4.~
	d4 r8 d4.~
	d4 r8 d4.\pp~
	d4 r8 d'4.(
	d')~(\< d4\!\> csharp8)\!
	csharp4\p( asharp8 b4 csharp8
	d4 csharp8 e[ d b])
	a!4._\cr fsharp,8( e fsharp)
	r4 r8 < fsharp' a > < fsharp a > < fsharp a >
	r4 r8 < g, b > < g b > < g b >
	b'( asharp b) < g, b > < g b > < g b >
	fsharp4( g8 fsharp4 csharp8
	d4 e8 esharp4 fsharp8)
	g2.~
	g4.~ g
	d8_\cr d' d d d a!
	a\> fsharp' fsharp fsharp dsharp dsharp\!
	dsharp\f dsharp dsharp e! g, g
	g fsharp fsharp fsharp e! e
	d!_\markup { \dynamic p \italic cresc. } b'' b b b g
	g\> g g g g g\!
	g\f g g g c,, c
	d d d d d d
	g_\markup { \dynamic p \italic cresc. } g g g g e
	e' e e e e e
	e\> dsharp dsharp dsharp fsharp dsharp\!
	b\p b b b b b
	\setTextCresc
		g'4(\< fsharp8) fsharp4( e8)
	fsharp4( e8) e4( d!8)
	e4( d8) d4( csharp8)\!
	csharp4\f( d8) d4( b8)
	b4.\p( b')~
	b2.
	csharp4.\p(\< g
	fsharp e
	fsharp\! e
	g\> fsharp)\!
	fsharp\p r4 r8
	R1*3/4
	r4 r8 fsharp4.~\<
	fsharp(\!\> gsharp)\!
	asharp2.~_\markup { \italic dim. }
	asharp~
	asharp4\p asharp8(_\markup { \italic piu \dynamic p } b4 asharp8)
	r4 asharp8\pp( b4 asharp8)~
	asharp4.\fermata r4 r8
	r4 r8 dsharp,4.\pp(
	e2.)~
	e~
	\setTextCresc
		e4\< b'8( a!4 g!8)
	g4( fsharp8 e4 d8)
	csharp4( b8 a4 csharp8)\!
	d4\f fsharp,8-. e4-. fsharp8-.
	e4-. r8 r4 e'8-.\p
	fsharp4-. g,8-.\f fsharp4-. g8-.
	fsharp4-. r8 r4 fsharp'8-.\p
	g4-. b,8\f a4 b8
	a4-. a'8-.\p a4-. a8-.
	b4-._\markup { \italic cresc. \dynamic f } c8-. b4-. r8
	r4 b8 a4\sf r8
	r4 a8 g4\sf r8
	r4 g8 fsharp4\sf d8
	c4\f d,8 a'4\sf c8
	b4 d,8 g4\sf b8
	a4 g8 fsharp4\sf < d c' >8
	< d b' >4 < d c' >8 < d b' >4 d'8
	d4\p r8 r4 r8
	< g, g' >2.~
	< g g' >4 g'8( fsharp4 e8
	a4-.) g,8( a4 g8)
	fsharp2.
	g2.
	\setTextCresc
		g~\<
	g4 r8 g4.~
	g4 r8 g4.~
	g4\! r8 g4.\p~
	g4. b'~
	b2.
	c2.~
	c
	< g b >4 r8
		\setTextCresc
		fsharp8(\< e fsharp)
	r4 r8 fsharp( e fsharp)\!
	r4 r8 g,\p g g
	r4 r8 g' g g
	\setTextCresc
		fsharp,\< fsharp fsharp r4 r8
	fsharp fsharp fsharp r4 r8
	r4 r8 g g g
	b b b g' g g\!
	csharp,4\f r8 r4 r8
	R1*3/4
	r4 fsharp,8\p( csharp'4 b8
	e4 d8 g4 fsharp8
	e4-.)
		\setTextCresc
		csharp8(\< fsharp4 e8
	d4 csharp8 fsharp4 e8
	d4-.) d,8( g4 fsharp8
	b4 a8 e'4 d8
	fsharp4 e8 a4 g8
	fsharp4 g8 e4 csharp8
	e4 d8 a4 asharp8
	csharp4 b8)\! e,4\f( a!8
	g4 fsharp8 d4 dsharp8
	fsharp4 e8) g4\ff( e8
	csharp4 e8 g4 bflat8
	e4 g8 e'4) g,8\ff(
	fsharp) r asharp[( fsharp]) r fsharp(
	d) r dsharp[( b]) r e~
	e4. e,\p~
	e4.~ e4\fermata g'8\ff(
	fsharp) r e[( d]) r c(
	b) r a[( g]) r d(
	csharp!4.) csharp'!\p~
	csharp2.~
	csharp4.( d4) r8
	r4 r8 e,4.~_\markup { \italic {mezza voce}}
	e~( fsharp4) r8
	R1*3/4
	fsharp4\pp r8 r4 r8
	fsharp4 r8 r4 r8
}