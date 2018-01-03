\version "2.18.2"

theSecondViolins =  \relative d {
	\clef "treble"
	\time 3/4
	\key g \minor
	
	r1*3/4
	R1*3/4*11
	
	\noDynamic
	g2.\pp_\markup { \dynamic pp con sordini }
	g
	g
	g
	g
	
	R1*3/4*3
	
	bflat4.( a8 g4)
	
	R1*3/4*3
	
	bflat4.( a8 g4)
	R1*3/4
	eflat'4\< f! < d c' >\!
	< d bflat' > r r
	c( d) r
	d( eflat) r
	g,2\pp r4
	g2 r4
	r4 d'( c)
	g2.\pp
	g
	g
	g
	g'8[ g-.\p( g-. g-. g-. g-.])
	g-.[( g-. g-.) d( eflat f])
	r eflat4\pp eflat eflat8~
	eflat eflat4 eflat eflat8
	d4 r8 eflat4 eflat8
	d4 r8 dflat r c
	r c4 c8 r b
	c4 bflat!2
	r8 eflat4\< eflat eflat8
	r8 e4 e e8\!
	f2._\markup { \italic piu \dynamic f }
	f4( g2)
	aflat,4 aflat( bflat
	c8)\< r r4 b\!
	c2\p\< cflat4
	bflat bflat\! r
	
	R1*3/4*5
	
	c2.\p
	c
	d_\markup { \dynamic p \italic cresc. }
	f2 < g, g' >4
	aflat2._\markup { \italic piu \dynamic f }
	<< { < g eflat' >2. } { s4.\> s4 s8\! } >>
	c4\p c c
	c c c
	<< { g2. } { s4.\< s4 s8\! } >>
	a4 r r
	R1*3/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	r4 g\p^\markup {pizz.} g
	r a a
	r g g
	r a a
	r g g
	r a a
	r g g
	a8 r r4 r
	
	\set Staff.midiInstrument = #"string ensemble 1"
	bflat2\pp^arco bflat4
	c2 c4
	bflat2 bflat4
	c2 c4
	bflat2 bflat4
	a2 a4
	c8\< r d r d\! r
	d r r4 r
	c4\mf( d) r
	d( eflat) r
	g,2_\markup { \dynamic p \italic cresc. } r4
	g2 r4
	bflat'2.\mf~
	bflat8 r r4 r
	R1*3/4
	bflat,2\p r4
	g'2.~
	g4 r r\fermata
	
	R1*3/4*8
	
	< g, g' >2.\mf~
	< g g' >2 r4
	b2.
	R1*3/4
	< b f' >2.~
	< b f' >2 r4
	c2.
	R1*3/4
	dflat4 dflat8[(^\markup { \italic dim. } c] dflat4)
	R1*3/4
	d!4 d8[( csharp] d4)
	R1*3/4
	r4 r e\pp
	r r gsharp,
	R1*3/4
	r1*3/4^\fermata

}
