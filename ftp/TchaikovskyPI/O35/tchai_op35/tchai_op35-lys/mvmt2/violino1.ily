\version "2.18.2"

theFirstViolins =  \relative d' {
	\clef "treble"
	\key g \minor
	
	r1*3/4
	R1*3/4*11
	
	\noDynamic bflat2.\pp_\markup { \dynamic pp con sordini }
	c
	bflat
	c
	bflat
	a
	g
	R1*3/4
	r4 d'2^>\p~
	d8[ d( e g fsharp d])
	g[( fsharp g a] bflat4)
	a2.
	r4 d,2~
	d8[ d(\< e g fsharp d])\!
	g4\< < d bflat' > < fsharp d' >\!
	< g d' > r r
	fsharp( g) r
	f!( eflat) r
	g2\pp r4
	g2 r4
	r4 d2
	bflat2.\pp
	c
	bflat
	c
	bflat8[ eflat'\p( d g, bflat) eflat](
	d[ g, bflat) c( bflat aflat])
	r8 g4\pp g g8~
	g8 g4 g g8
	aflat8->[( bflat]) r g4 g8
	aflat8->[( bflat]) r eflat, r f
	r eflat[( d c]) r d
	f4 f2
	r8 g4\< g g8
	r g4 g g8\!
	aflat2._\markup { \italic piu \dynamic f }
	aflat4( g2)
	f8\pp[( eflat]) d4( dflat)
	c2\< d4\!
	f2\p\< f4
	f eflat\! r
	
	R1*3/4*5
	
	f2.\p
	fsharp2( d4)
	g2._\markup { \dynamic p \italic cresc.}
	< c, aflat' >2 < eflat bflat' >4
	eflat4_\markup { \italic piu \dynamic f } f2
	<< { g2. } { s4.\> s4 s8\! } >>
	c,8\p[( d]) eflat4 f
	c8[( d]) eflat4 f
	c\< csharp2\!
	d4 r r
	R1*3/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 bflat\p^\markup {pizz.} bflat
	r c c
	r bflat bflat
	r c c
	r bflat bflat
	r d d
	r c csharp
	d8 r r4 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	d2\pp^arco d4
	d2 d4
	d2 d4
	d2 d4
	d2 d4
	d2 d4
	eflat8\< r f r fsharp\! r
	g r r4 r
	fsharp4\mf( g) r4
	f!4( eflat) r
	g2_\markup { \dynamic p \italic cresc. } r4
	g2 r4
	< d d' >2.\mf~
	< d d' >8 r r4 r
	R1*3/4
	eflat2\p r4
	bflat'2.(
	a4) r r\fermata
	
	R1*3/4*8
	
	bflat4\mf bflat8[( a]) bflat4~
	bflat2 r4
	< f b >2.
	R1*3/4
	b4 b8[( asharp] b4)~
	b2 r4
	< f c' >2.
	R1*3/4
	dflat'4 dflat8[(_\markup { \italic dim. } c] dflat4)
	R1*3/4
	d!4\p d8[( csharp] d4)
	R1*3/4
	r4 r gsharp,\pp
	
	R1*3/4*2
	r1*3/4\fermata
}
