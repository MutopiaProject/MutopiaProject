\version "2.6.2"

mIICello =  \relative csharp, {
	\clef "bass"
	\key d \major
	\time 6/8
	
	\partial 8*3 d4.\pp(
	d') d~
	d d~
	d d~
	d d~
	d d~
	d d~
	d d~
	d4 r8 r4 r8
	
	\clef "tenor"
	\setTextCresc
		d'8[(\< e d]) r4 r8
	d8[( e d]) r4 r8
	d[ d d] r4 r8
	d[ d d] fsharp4( e8)
	d8[ d d] r4 r8
	d[ d d] r4 r8
	d[ d d] r4 r8
	d[ d d] d4.(
	csharp\!\> c)\!
	b4-.\f r8 bflat4-. r8
	
	\clef "bass"
	a4-. r8 a,4-. r8
	b'!4._\markup { \dynamic p \italic cresc. } b(
	asharp\> a\!
	gsharp4-.\f) r8 g4 r8
	a,4 r8 a4 r8
	d4 r8 a4.(_\markup { \dynamic p \italic cresc. }
	fsharp d
	csharp) csharp'(
	e g
	fsharp\p) fsharp,(
	g a)
	fsharp4_\cr r8 d4 r8
	r4 r8 d4 r8
	gsharp'4 r8 gsharp,4 r8
	r4 r8 gsharp4 r8
	a'4 r8 a,4 r8
	r4 r8 a4 r8
	b'4 r8 b,4 r8
	r4 r8 b4 r8
	
	\clef "tenor"
	csharp'4._\markup { \italic dim. } csharp(
	d e
	dsharp) d(
	\setTextCresc
		fsharp\<
		\clef "bass"
		esharp,
	fsharp csharp~
	csharp\!\> csharp,4.)
	csharp4-.\p\! csharp8( d4 csharp8)
	r4 csharp'8(_\markup { \italic più \dynamic p } d4 csharp8)
	r4
		\clef "tenor"
		csharp'8( d4 csharp8)
	r4 r8 r4 csharp8\pp(
	d4 csharp8\fermata)
		\clef "bass"
		e,!4.\pp
	e'2.~
	e~
	e
	e8( dsharp e) r4 r8
	e,,4.( fsharp4 gsharp8)
	a4.
		\clef "tenor"
		a'4( b8)
	csharp4. csharp4( dsharp8)
	\setTextCresc
		e4.~\< e4( d!8)
	d4( csharp8 b4 a8)
	a4( gsharp8 fsharp4 e8)
	
	\clef "bass"
	e4( d8 csharp4 b8)\!
	a4-.\f a8-. gsharp4-. a8-.
	gsharp4-. r8 r4 gsharp'8-.\p
	a4-. b,8-.\f asharp4-. b8-.
	asharp4-. r8 r4 fsharp'8-.\p
	b4-. d,,8-.\p csharp4-. d8-.
	csharp4-. r8 r4 a''!8-.\p
	d4-._\markup { \italic cresc. \dynamic f } e8-. d4-. r8
	r4 d8 csharp4\sf r8
	r4 csharp8 b4\sf r8
	r4 b8 a4\sf r8
	r4 a8\f g4 r8
	r4 g8 fsharp4\sf r8
	r4 fsharp8 e4\sf g8
	csharp,4 e8 d4\sf d8
	csharp2.\p(
	d4) r8 r4 r8
	
	\clef "tenor"
	d'4.( csharp4 e8)
	e4 r8 r4 r8
	R1*3/4
	d2.(
	c)~_\cr
	c4 r8 g'4.~
	g4 r8 esharp4.~
	esharp4 r8 fsharp4.\p~
	fsharp8( e! fsharp) r4 r8
	d( csharp d) r4 r8
	d( csharp d) r4 r8
	d( csharp d) r4 r8
	d(_\cr csharp d) r4 r8
	
	\clef "bass"
	fsharp,8( e fsharp) r4 r8
	g( fsharp g) r4 r8
	g( fsharp g) r4 r8
	
	\clef "tenor"
	d'4( csharp8 d4 e8
	fsharp4 e8 d4.)~
	d4( fsharp8 g4.)~
	g4( a8 b4 g8)
	g4(_\cr esharp8 fsharp4 d8
	csharp4.\> c)\!
	b4\f r8 bflat4 r8
	
	\clef "bass"
	a4 r8 a,4 r8
	b!4 r8 r4 r8
	
	R1*3/4*3
	
	r4
		\clef "tenor"
		a'8(_\markup { \dynamic p \italic cresc. } b4 g'8)
	g4.~\> g4( b,8)\!
	b4\f(\> gsharp8 a4 fsharp'8)\!
	fsharp4\p( e8) e4( dsharp8)
	\setTextCresc
		e4(\< d!8) d4( csharp8)
	d4( csharp8) csharp4( b8)
	csharp4( b8) b4( asharp8)\!
	asharp4\f( b8) b4( a8)
	a4\p( g!8) g'4.~
	g2.
	fsharp4.\p(\< e
	d csharp
	d\! csharp
	e\> d)\!
	csharp\p(\< fsharp
	g esharp
	fsharp)\!
		\clef "bass"
		fsharp,,(\>
	b esharp,)\!
	fsharp4_\markup { \italic dim. } fsharp8( g4 fsharp8)
	r4 fsharp'8( g4 fsharp8)
	r4 r8 r4
		\clef "tenor"
		fsharp'8(_\markup { \italic più \dynamic p }
	g4 fsharp8) r4 fsharp8\pp(
	g4 fsharp8\fermata)
		\clef "bass"
		b,4.\pp~
	b2.~
	b4. e,(
	e') a,(
	
	\clef "tenor"
	\setTextCresc
		a'4\< g8 fsharp4 e8)
	e4( d8 csharp4 b8)
	a4( g8 fsharp4 e8)\!
	d4\f
		\clef "bass"
		d,8-. csharp4-. d8-.
	csharp4-. r8 r4 csharp''8-.\p
	d4-. e,,8-.\f dsharp4-. e8-.
	dsharp4-. r8 r4 dsharp''8-.\p
	e4-. g,,8-.\f fsharp4-. g8-.
	fsharp4-.
		\clef "tenor"
		g''8-.\p fsharp4-. fsharp8-.
	g4-._\markup { \italic cresc. \dynamic f } a8-. g4-. r8
	r4 g8 fsharp4\sf r8
	r4 fsharp8 e4\sf r8
	r4 e8 d4\sf r8
	
	\clef "bass"
	r4 d,8\f c4 r8
	r4 c8 b4\sf r8
	r4 b8 a4\sf a8
	g4 a8 g4\sf g'8
	fsharp2.\p(
	g4) r8 r4 r8
	
	\clef "tenor"
	csharp4( e8 d4 csharp8
	d4) r8 r4 r8
	R1*3/4
	g2.(
	\setTextCresc
		f)~\<
	f4 r8 c4.~
	c4 r8 c4.(
	asharp4)\! r8 asharp4.\p
	b4. g(\<
	g')~\! g4(\> fsharp8)\!
	fsharp4( dsharp8 e4 fsharp8
	g4 fsharp8 a[ g e])
	d!( csharp d) r4 r8
	d(_\cr csharp d) r4 r8
	d\p( csharp d) r4 r8
	d( csharp d) r4 r8
	
	\clef "bass"
	\setTextCresc
		d,\< d d r4 r8
	d( csharp d) r4 r8
	g, g g r4 r8
	g' g g r4 r8\!
	
	\clef "tenor"
	fsharp4\fp fsharp8( b4 asharp8
	d4 csharp8 fsharp4 e8)
	d4 r8 r4 d8(
	csharp4 b8 e4 d8
	csharp4-.)
		\setTextCresc
		a8(\< d4 csharp8
	fsharp4 e8 a4 g8
	fsharp4-.)
		\clef "bass"
		d,,8( g4 fsharp8
	b4 a8 e'4 d8
	fsharp4 e8 a4 g8
	fsharp4 g8 e4 csharp8
	e4 d8 a4 asharp8
	csharp4 b8)\! e,4\f( a!8
	g4 fsharp8 d4 dsharp8
	fsharp4 e8) bflat''4\ff( g8
	e4 csharp8 bflat4 g8
	e4 d8 csharp4)
		\clef "tenor"
		e''8\ff(
	d) r csharp[( b!]) r
		\clef "bass"
		a(
	g) r fsharp[( e]) r bflat(
	a4.) a\p~
	a~ a4\fermata
		\clef "tenor"
		e''8\ff(
	d) r csharp[( b]) r a(
	g) r fsharp[( e]) r
		\clef "bass"
		bflat(
	a4.)~ a4.\p~
	a2.~
	a4.( d4) r8
	r4 r8 a4.~_\markup { \italic {mezza voce }}
	a( d4) r8
	R1*3/4
	d4\pp r8 r4 r8
	d4 r8 r4 r8
		
}