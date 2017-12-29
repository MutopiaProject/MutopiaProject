\version "2.18.2"
theViolas =  \relative d {
	\clef "alto"
	\key g \minor
	
	R1*3/4*12
	
	\noDynamic
	g2.\pp_\markup { \dynamic pp {con sordini} }
	a
	g
	a
	g
	fsharp
	eflat
	fsharp
	r8 d\p[( e fsharp] g[ e])
	fsharp4( g a)
	bflat8[( a bflat c] d4)
	d2.
	r8 d,[( e fsharp g e])
	fsharp4(\< g a)\!
	< c, g' >\< < d bflat' > a'\!
	g r r
	a( bflat) r
	aflat( g) r
	g8\pp[( a] bflat4) r
	g8[( a] bflat4) r
	r bflat( a)
	g2.\pp
	a
	g
	a
	d8[ c\p( d eflat d) c](
	d[ eflat d) bflat( c d])
	r bflat4\pp bflat bflat8~
	bflat bflat4 bflat bflat8
	cflat8^>[( bflat]) r bflat4 bflat8
	cflat8^>[( bflat]) r g r aflat
	r aflat4 aflat8 r g
	aflat4 aflat2
	r8 bflat4\< bflat bflat8
	r bflat4 bflat bflat8\!
	c2(_\markup { \italic piu \dynamic f } cflat4)
	bflat2.(
	aflat8\pp) r f4( eflat8) r
	aflat4\< d,2\!
	aflat'2\p\< aflat4
	aflat g\! r
	
	R1*3/4*5
	
	aflat2.\p
	a!
	b_\markup { \dynamic p \italic cresc. }
	aflat2 bflat4
	c2(_\markup { \italic piu \dynamic f } cflat4)
	<< bflat2. { s4.\> s4 s8\! } >>
	aflat4\p g f
	aflat g f
	eflat2\< e4\!
	fsharp r r
	R1*3/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 d^\markup {pizz.} d
	r d d
	r d d
	r d d
	r d d
	r d d
	r eflat e
	fsharp8 r r4 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	g2\pp^arco g4
	a2 a4
	g2 g4
	a2 a4
	g2 g4
	fsharp2 fsharp4
	g8\< r bflat r c\! r
	bflat r r4 r
	a4\mf( bflat) r
	aflat( g) r
	g8[(_\markup { \dynamic p \italic cresc. } a] bflat4) r
	g8[( a] bflat4) r
	g'2.\mf~
	g8 r r4 r
	R1*3/4
	g,2\p r4
	eflat'2.~
	eflat4 r r4\fermata
	
	R1*3/4*8
	
	csharp2.\mf~
	csharp2 r4
	aflat4 aflat8[( g] aflat4)
	R1*3/4
	aflat2.~
	aflat2 r4
	aflat4 aflat8[( g] aflat4)
	R1*3/4
	f2.
	R1*3/4
	< e bflat' >2.
	R1*3/4
	r4 r bflat'\pp
	r r e,
	R1*3/4
	r1*3/4\fermata
}
