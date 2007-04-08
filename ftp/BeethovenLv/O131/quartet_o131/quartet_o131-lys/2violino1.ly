\version "2.6.2"

mIIViolinOne =  \relative csharp'' {
	\clef "treble"
	\key d \major
	\time 6/8
	
	\partial 8*3 d,4.\pp(
	d')~ d4( csharp8)
	csharp4( asharp8 b4 csharp8
	d4 csharp8 e[ d b])
	b4( a!8 d4 e8
	fsharp4 e8 d4 csharp8)
	csharp4\( asharp8 b4 csharp8
	d4\< csharp8\! e[(\> d)\! b]\)
	a!4 r8
		\setTextCresc
		fsharp8[(\< g fsharp])
	r4 r8 a'[( b a])
	r4 r8 g[( a g])
	r4 r8 g[ g g]
	r4 r8 d4( e8
	fsharp4 e8 d4 csharp8)
	csharp4( asharp8 b4 csharp8
	d4 csharp8 e[ d b])
	b4( gsharp8 a!4 fsharp'8)\!
	fsharp4.~\> fsharp4( a,8)\!
	a4\f( fsharp8 g!4 e'8)
	e4( d8) d4( csharp8)
	g4(_\markup { \dynamic p \italic cresc.} e8 fsharp4 d'8)
	d4.~\> d4( fsharp,8)\!
	fsharp4\f( dsharp8 e4 b'8)
	b4( a8) a4( csharp,8)
	r4
		\setTextCresc
		d!8(\< g4 fsharp8
	b4 a8 e'4 d8
	fsharp4 e8 a4 g8
	fsharp4 g8 e4 csharp8)\!
	e4\p( d8 a4 asharp8
	csharp4 b8 e,4 a!8)
	a'2.~_\cr
	a4.( fsharp4) r8
	b2.~
	b4.( e,4) r8
	csharp'2.~
	csharp4.( e,4) r8
	d'2.~
	d4.( gsharp,4) r8
	e'4.(_\markup { \italic dim. } esharp
	fsharp asharp,
	b bsharp
	\setTextCresc
		csharp\< b!
	a! gsharp
	b\!\> a)
	gsharp2.\p~\!
	gsharp~_\markup { \italic più \dynamic p }
	gsharp~
	gsharp\pp~
	gsharp4.\fermata e,!4.\pp(
	e'!4.)~ e4( dsharp8)
	dsharp4( bsharp8 csharp4 dsharp8
	e4 dsharp8 fsharp[ e csharp])
	csharp4( b!8 e4 fsharp8
	gsharp4 fsharp8 e4 dsharp8)
	dsharp4( bsharp8 csharp4 dsharp8
	e4 dsharp8 fsharp[\( e\) csharp-.])
	\setTextCresc
		csharp4(\< asharp8 b!4 gsharp'8)
	gsharp4.~ gsharp4( a!8)
	b4.~ b4( csharp8)
	d!4.~ d4( e8)\!
	csharp4-.\f e,8( fsharp4 csharp8
	e4) b8\p( fsharp'4 d!8
	csharp4) fsharp8\f( g!4 d8
	fsharp4) csharp8\p( g'4 e8
	d4) a'!8\p( b4 fsharp8
	a4) e8\p( b'4 g8)
	g4(_\markup { \italic cresc. \dynamic f } fsharp8 a4 fsharp8)
	fsharp4( e8 a4\sf e8)
	e4( d8 a'4\sf d,8)
	d4( csharp8 a'4\sf csharp,8
	a'4\f) csharp,8( a'4\sf csharp,8
	a'4) csharp,8( a'4\sf d,8
	a'4) d,8( a'4\sf e8
	a4) e8( a4\sf fsharp8)
	a4\p a,,8( a'4 esharp8
	g!4 fsharp8) r4 r8
	r4 gsharp'8( a4 b8
	csharp4-.) d8( csharp4 b8
	a4-.) a,,8( a'4 esharp8
	g!4 fsharp8) r4 r8
	r4 a8(_\cr a'4 fsharp8
	a4-.) bflat,8( bflat'4 g!8
	bflat4-.) b,!8( b'4 gsharp8
	b4-.) gsharp8(_\markup { \dynamic p \italic espr.} b4 a8)
	a2.\p~
	a2.~_\espressivo
	\noDynamic a2.\p~
	a2.~
	a4._\cr d,4.(
	d'4.)(~ d4 csharp8)
	csharp4( asharp8 b4 csharp8)
	d4( csharp8 e[ d b])
	a!4 r8 r4 r8
	r4 r8 d4( csharp8)
	csharp4( asharp8 b4 csharp8
	d4\< csharp8\! e[\> d b-.])\!
	b4(_\cr gsharp,8 a!4 fsharp'8)
	fsharp4.(~\> fsharp4 a,8)\!
	a4\f( fsharp8 g!4 e'8)
	e4( d8) d4( csharp8)
	d4\p r8 g,4.^(_\cr
	fsharp\> f\!
	e\f < c eflat >
	< b d >4^) r8 < c d >4 r8
	< b d >4 r8 r4 r8
	
	R1*3/4*3
	
	r4 fsharp''8\p(
		\setTextCresc
		g4\< e'8)
	r4 e,8( fsharp4 d'8)
	r4 d,8( fsharp4 csharp'8)\!
	csharp4\f( d8) d4( dsharp8)
	dsharp4.\p( e~
	e esharp)
	fsharp2.\p~\<
	fsharp~
	fsharp~\!
	fsharp~\>
	fsharp4.\p\!\< e!4.(
	d! csharp
	d\! csharp
	e\> d)\!
	csharp2.~_\markup { \italic dim. }
	csharp~
	csharp~_\markup { \italic più \dynamic p }
	csharp\pp~
	csharp4.\fermata b,,\pp(
	b'2.)~
	b~
	b4. csharp,(
	\setTextCresc
		csharp')~\< csharp4( d8)
	e4.~ e4( fsharp8)
	g4.~ g4( a8)\!
	fsharp4\f a8( b4 fsharp8
	a4) e8\p( b'4 g8
	fsharp4) b8\f( c4 g8
	b4) fsharp8\p( c'4 a8
	g4) d'8\f( e4 b8 d4)
	a8\p( e'4 c8)
	c4(_\markup { \italic cresc. \dynamic f } b8 d4 b8)
	b4( a8 d4\sf a8)
	a4( g8 d'4\sf g,8)
	g4( fsharp8 d'4\sf fsharp,8)
	d'4\f( fsharp,8 d'4\sf fsharp,8)
	d'4( g,8 d'4\sf g,8)
	d'4( a8 d4\sf a8)
	d4( b8 d4\sf b8)
	d4\p d,,8( d'4 asharp8
	c4 b8) r4 r8
	r4 csharp!8( d4 e8
	fsharp4-.) g8( fsharp4 e8
	d4-.) d,8( d'4 asharp8
	c4 b8) r4 r8
	r4
		\setTextCresc
		d8(\< d'4 b8
	d4-.) eflat,8( eflat'4 c8
	eflat4-.) e,!8( e'4 c8
	e4-.)\!
		csharp!8(_\markup { \dynamic p \italic espress. } e4 d8)
	d2.~
	d
	c~
	c
	b4 r8
		\setTextCresc
		d,4.(\<
	d'4.)~( d4 csharp!8)\!
	csharp4\p( asharp8 b4 csharp8
	d4 csharp8 e[ d b])
	\setTextCresc
		b\< gsharp,( a! e' csharp d
	fsharp e d csharp b asharp)
	csharp( asharp b) b( c csharp)
	csharp( d dsharp) dsharp( e esharp)\!
	fsharp2.\fp~
	fsharp~
	fsharp~
	fsharp
	\setTextCresc
		a~\<
	a~
	a4 d,,8( g4 fsharp8
	b4 a8 e'4 d8
	fsharp4 e8 a4 g8
	fsharp4 g8 e4 csharp8
	e4 d8 a4 asharp8
	csharp4 b8)\! e,4\f( a!8
	g4 fsharp8 d4 dsharp8
	fsharp4 e8) g,4\ff( bflat8
	csharp4 e8 g4 bflat8
	csharp4 e8 g4) csharp8\ff(
	d8) r fsharp,[( b!8]) r d,(
	g) r b,[( e]) r g,,~
	g4( a'8) g4.\p~
	g4.~ g4\fermata csharp'8\ff(
	d) r fsharp,[( b]) r d,(
	g) r b,[( e]) r g,,~
	g4( a'8) g4\p( a'8)
	g2.~
	g4.( fsharp4) r8
	r4 r8 g,4.~_\markup { \italic {mezza voce}}
	g4.( fsharp4) r8
	R1*3/4
	fsharp4\pp r8 r4 r8
	fsharp4 r8 r4 r8	
}