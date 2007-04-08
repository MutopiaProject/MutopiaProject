theFirstViolins = \notes \relative e'' {
	\clef "treble"
	\time 2/2
	\key e \major
	
	\property Score.skipBars = ##t
	\property Staff.TupletBracket \override #'bracket-visibility = ##f
	\property Staff.TextScript \override #'font-magnification = #1.25
	
	e4.\f b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. < b, gsharp' e' >-.
	< b fsharp' dsharp' >-. r r2\fermata
	
	R1*8
	
	a'4.\f e8 e4-. r
	csharp'4.\sf < a, a' >8 < a a' >4-. r
	e'4.\sf csharp8 csharp4-. < e, csharp' a' >-.
	< e b' gsharp' >-. r r2\fermata
	
	R1*4
	
	a1\pp\<
	f\!\>
	\times 4/6 { e8\pp[(\! c e c e c] e[ c e c e c]) }
	\times 4/6 { e[( c e c e c] e[ c e c e c]) }
	\times 4/6 { g'[( e g e g e] g[ e g e g e]) }
	\times 4/6 { g[( e g e g e] g[ e g e g e]) }
	\times 4/6 { a[(_\cr f a f a f] a[ f a f a f]) }
	\times 4/6 { a[( f a f a f] a[ f a f a f]) }
	\times 4/6 { a[( fsharp! a fsharp a fsharp] a[ fsharp a fsharp a fsharp]) }
	\times 4/6 { a[( fsharp a fsharp a fsharp] a[ fsharp a fsharp a fsharp]) }
	\times 4/6 { dsharp'![( a dsharp a dsharp a] dsharp[ a dsharp a dsharp a]) }
	\times 4/6 { dsharp[( a dsharp a dsharp a] dsharp[ a dsharp a dsharp a]) }
	\times 4/6 { fsharp'[( dsharp fsharp dsharp fsharp dsharp] fsharp[ dsharp fsharp dsharp fsharp dsharp]) }
	\times 4/6 { fsharp[( dsharp fsharp dsharp fsharp dsharp] fsharp[ dsharp fsharp dsharp fsharp dsharp]) }
	\times 4/6 { a'[( fsharp a fsharp a fsharp] a[ fsharp a fsharp a fsharp]) }
	\times 4/6 { asharp[( csharp, asharp' csharp, asharp' csharp,] asharp'[ csharp, asharp' csharp, asharp' csharp,]) }
	\times 2/3 { b'8\ff[( b,) < b b' >]~ } \times 2/3 { < b b' >[( b) < b b' >]~ }
		\times 2/3 { < b b' >[( b) < b b' >]~ } \times 2/3 { < b b' >[( b) < b b' >]~ }
	\times 2/3 { < b b' >[( b) < b b' >]~ } \times 2/3 { < b b' >[( b) < b b' >]~ }
		\times 2/3 { < b b' >[( b) < b b' >]~ } \times 2/3 { < b b' >[( b) < b b' >] }
	\times 2/3 { b8\p[( csharp b] } \times 2/3 { asharp[ b asharp] }
		\times 2/3 { b8[ csharp b] } \times 2/3 { csharp[ dsharp csharp]) }
	\times 2/3 { dsharp[( e dsharp] } \times 2/3 { e[ fsharp e] }
		\times 2/3 { fsharp[ gsharp fsharp] } \times 2/3 { b,[ csharp b] }
	asharp4) r r2
	R1
	\times 2/3 { b8[( csharp b] } \times 2/3 { asharp[ b asharp] }
		\times 2/3 { b8[ csharp b] } \times 2/3 { csharp[ dsharp csharp]) }
	\times 2/3 { dsharp[( e dsharp] } \times 2/3 { e[ fsharp e] }
		\times 2/3 { fsharp[ gsharp fsharp] } \times 2/3 { b,[ csharp b] }
	a!4) r r2
	R1
	b8_\cr b4 b b b8~
	b8 b4 b b b8~
	b8\p b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8
	b'8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8
	fsharp4( a gsharp fsharp)
	e( gsharp b2)
	fsharp8[_\cr fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp](
	e)[ e( gsharp) gsharp]( b)[ b( gsharp) gsharp](
	fsharp)[ fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp]
	e4\f e'2 e8-. dsharp-.
	dsharp8-. csharp-. csharp2 csharp8-. b-.
	b8-. a-. a2 a8-. gsharp-.
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ e'' e e] e[ e e dsharp]
	dsharp[ csharp csharp csharp] csharp[ csharp csharp b]
	b[ a a a] a[ a a gsharp]
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ b, gsharp' gsharp] gsharp[ e b' b]
	b[ gsharp e' e] e[ b gsharp' gsharp]
	b\sf[( a) fsharp-. dsharp-.] b'-.[( a) fsharp-. dsharp-.]
	b'[( a) fsharp-. dsharp-.] b'-.[( a) fsharp-. dsharp-.]
	e,[ b gsharp' gsharp] gsharp[ e b' b]
	b[ gsharp e' e] e[ b gsharp' gsharp]
	b\sf[( a) fsharp-. dsharp-.] b'[( a) fsharp-. dsharp-.]
	b'[( a) fsharp-. dsharp-.] b'[( a) fsharp-. dsharp-.]
	csharp'[( b) gsharp-. e-.] csharp'[( b) gsharp-. e-.]
	csharp'\sf[( b) gsharp-. e-.] gsharp,[ e-. csharp-. b-.]
	asharp4 r r2
	R1
	r4 csharp'8\p( dsharp e4-.) e8( fsharp
	dsharp4-.) dsharp8( e fsharp4-.) fsharp8( b
	asharp4-.) r r2
	R1
	r4 csharp,8\p( dsharp e4-.) e8( fsharp
	dsharp4-.) dsharp8( e fsharp4-.) fsharp8( b
	asharp4-.) r r2
	r4 dsharp,8( e fsharp4-.) fsharp8( gsharp
	e4-.) r r2
	r4 fsharp8\p( gsharp a4-.) a8( b
	gsharp4-.)_\cr fsharp8( gsharp a4-.) a8( b
	gsharp4-.) fsharp8( gsharp a4-.) a8( b
	gsharp4-.\f) b8-. dsharp-. e4 b8-. dsharp-.
	e4 b8-. dsharp-. e4 b8-. dsharp-.
	e8\ff[ e dsharp csharp] b[ a gsharp fsharp]
	e[ dsharp csharp b] a[ gsharp fsharp e]
	\stemUp csharp[ \stemDown csharp'' b a] gsharp[ fsharp e dsharp]
	\stemBoth csharp[ b a gsharp] fsharp[ e dsharp csharp]
	\stemUp asharp[ \stemDown fsharp'' fsharp fsharp] fsharp[ asharp asharp asharp] \stemBoth
	asharp[ csharp csharp csharp] csharp[ fsharp fsharp fsharp]
	fsharp\ff[ fsharp fsharp fsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp fsharp fsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp gsharp\sf gsharp] fsharp[ fsharp gsharp\sf gsharp]
	fsharp[ fsharp gsharp\sf gsharp] fsharp[ fsharp e!\sf e]
	dsharp[ dsharp fsharp\sf fsharp] csharp[ csharp e\sf e]
	b[ b dsharp\sf dsharp] asharp[ asharp csharp\sf csharp]
	< b, b' >4 r r e'4\f(
	dsharp) r r e\f(
	dsharp) r r e\f(
	dsharp) r r e\f(
	dsharp) dsharp8 dsharp dsharp4 r
	fsharp4 fsharp8 fsharp fsharp4 r
	< b,, b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >8 b4\p b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b d4 d d d8~
	d d4 d d d8~
	d d4 d d d8~
	d d4 d d d8~
	d d4 d d d8~
	d g,4 g g g8~
	g8 g4 g g g8~
	g8 g4 g g g8~
	g8 g4 g g g8
	e e'4 e e e8~
	e8 e4 e e e8~
	e8 e4 e e e8~
	e8 e4 e e e8~
	e a,4 a a a8
	b,8 b'4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8 b4 b b b8~
	b8_\cr b4 b b b8~
	b8 b4 b b b8
	b8\p[( csharp dsharp e] dsharp[ e fsharp gsharp]
	b,[ csharp dsharp e] dsharp[ e fsharp gsharp])
	a[( gsharp fsharp csharp'] b[ e, a dsharp,]
	gsharp[ e dsharp e] dsharp[ e b gsharp])
	e4 r r2
	
	R1*3
	
	fsharp'4\p( a gsharp fsharp
	e gsharp b gsharp)
	fsharp8[_\cr fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp](
	e)[ e( gsharp) gsharp]( b)[ b( gsharp) gsharp](
	fsharp)[ fsharp( a) a]( gsharp)[ gsharp( fsharp) fsharp]
	e4\f e'2 e8-. dsharp-.
	dsharp8-. csharp-. csharp2 csharp8-. b-.
	b8-. a-. a2 a8-. gsharp-.
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ e'' e e] e[ e e dsharp]
	dsharp[ csharp csharp csharp] csharp[ csharp csharp b]
	b[ a a a] a[ a a gsharp]
	gsharp[ fsharp e dsharp] dsharp[ csharp b a]
	gsharp[ b, gsharp' gsharp] gsharp[ e b' b]
	b[ gsharp e' e] e[ b gsharp' gsharp]
	b\sf[( a) fsharp-. dsharp-.] b'-.[( a) fsharp-. dsharp-.]
	b'[( a) fsharp-. dsharp-.] b'-.[( a) fsharp-. dsharp-.]
	e,[ b gsharp' gsharp] gsharp[ e b' b]
	b[ gsharp e' e] e[ b gsharp' gsharp]
	b\sf[( a) fsharp-. dsharp-.] b'[( a) fsharp-. dsharp-.]
	b'[( a) fsharp-. dsharp-.] b'[( a) fsharp-. dsharp-.]
	csharp'[( b) gsharp-. e-.] csharp'[( b) gsharp-. e-.]
	csharp'[( b) gsharp-. e-.] csharp'[( b) gsharp-. e-.]
	e'[( d) b-. gsharp-.] e'[( d) b-. gsharp-.]
	e'\sf[( d) b-. gsharp-.] e[( d) b-. a-.]
	gsharp4 r r2
	R1
	r4 b8\p( csharp d4-.) d8( e
	csharp4-.) csharp8( d e4-.) e8( a
	gsharp4-.) r r2
	R1
	r4 b,8\p( csharp d4-.) d8( e
	csharp4-.) csharp8( d e4-.) e8( a
	gsharp4-.) r r2
	r4 d8( e fsharp4-.) fsharp8( g
	e4-.) r r2
	r4 e8\p( f g4-.) g8( a
	f4-.) d8( e f4-.) f8( g
	e4-.) e8( f g4-.) g8( c
	b4-.) r4 r2
	r4 d,8(_\cr e f4-.) f8( g
	e4-.) d8( e f4-.) f8( g
	e4-.)
	d8( e f4-.) f8( g
	e4-.\f) g8-. b-. c4-. g8-. b-.
	c4-. g8-. b-. c4-. g8-. b-.
	c8\ff[ c b a] g[ f e d]
	c[ b a g] f[ e d c]
	
	\key c \major
	
	a''[ a g f] e[ d c b]
	a[ g f e] d[ c b a]
	a[ f' f f] f[ a a a]
	a[ c c c] c[ f f f]
	f[ f f f] f[ f g\sf g]
	f[ f f f] f[ f g\sf g]
	f[ f g\sf g] f[ f g\sf g]
	f[ f g\sf g] f[ f a\sf a]
	d,[ d g\sf g] c,[ c f\sf f]
	c[ c e\sf e] b[ b d\sf d]
	c4 r r f4\f(
	e) r r f4\f(
	e) r r f4\f(
	e) r r f4\f(
	e) e8 e e4 r
	g4 g8 g g4 r
	c4 c8 c c4 c8 c
	c4 c8 c c4 c8 c
	e4 e8 e e4 e8 e
	e4 e8 e e4 e8 e
	dsharp4 r r e\f(
	dsharp) r r e\f(
	dsharp) r r e\f(
	dsharp) r r e\f(
	dsharp) < b, b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 < b b' >8 < b b' > < b b' >4 < b b' >8 < b b' >
	< b b' >4 r r2
	R1
	
	\key e \major
	
	e4.\ff b8 b4-. r
	gsharp'4.\sf e8 e4-. r
	b'4.\sf gsharp8 gsharp4-. < b, gsharp' e' >-.
	< b fsharp' dsharp' >-. r r2\fermata
	
	R1*9
	
	\times 4/6 { b,4\p( dsharp fsharp a gsharp fsharp) }
	\times 4/6 { b,( e gsharp b a gsharp) }
	\times 4/6 { b,( e gsharp b a gsharp) }
	\times 4/6 { b,( fsharp' a b a fsharp }
	\times 4/6 { b a fsharp b a fsharp\fermata) }
	
	\bar "||"
	
	c4.\f b8 b4 r
	c4. b8 b4 r
	c4-. b-. c-. b-.
	c4-. b-. c-. b-.
	e-. dsharp!-. e-. dsharp-.
	e-. dsharp!-. e-. dsharp-.
	c'-. b-. e-. dsharp-.
	c-. b-. csharp-. b-.
	csharp'-. b-. csharp-. b-.
	csharp-. b-. csharp-. b-.
	\times 4/6 { b\f( gsharp) e-. b( gsharp') e-. }
	\times 4/6 { b'( gsharp) e-. b( gsharp') e-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { fsharp( dsharp) b-. fsharp'( dsharp) b-. }
	\times 4/6 { b'\p( gsharp) e-. b( gsharp') e-. }
	\times 4/6 { b'( gsharp) e-. b( gsharp') e-. }
	\times 4/6 { b( a) fsharp-. a( fsharp') dsharp-. }
	\times 4/6 { b( fsharp') dsharp-. a'( fsharp) dsharp-. }
	\times 4/6 { b'(_\cr gsharp) e-. gsharp( e) d-. }
	\times 4/6 { b'( gsharp) e-. gsharp( e) d-. }
	\times 4/6 { c'( a) e-. a( e) c-. }
	\times 4/6 { c'( a) e-. a( e) c-. }
	\times 4/6 { c'( a) fsharp-. a( fsharp) dsharp!-. }
	\times 4/6 { c'( a) fsharp-. a( fsharp) dsharp!-. }
	\times 4/6 { c'( a) fsharp-. a( fsharp) dsharp!-. }
	\times 4/6 { c'( a) fsharp-. a( fsharp) dsharp!-. }
	\times 4/6 { b'\f( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'(_\markup { \italic {sempre piu \dynamic f} }
		a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'\ff( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	\times 4/6 { b'( a) fsharp-. a( fsharp) dsharp-. }
	gsharp8\sf[ gsharp fsharp fsharp] a\sf[ a gsharp gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b csharp csharp] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b b b] b\sf[ b b b]
	gsharp,8\sf[ gsharp fsharp fsharp] a\sf[ a gsharp gsharp]
	fsharp\sf[ fsharp e e] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b csharp csharp] dsharp\sf[ dsharp e e]
	fsharp\sf[ fsharp gsharp gsharp] a\sf[ a asharp asharp]
	b\sf[ b b b] b\sf[ b b b]
	e,,4.\sf b8 b4 r
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