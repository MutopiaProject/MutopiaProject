\version "2.18.2"

theCellos =  \relative c {
	\clef "bass"
	\key g \minor
	
	R1*3/4*17
	
	d2.\pp
	a2.
	d
	< g, d' >\p
	< g d' >
	g'2.~
	g8[ g( fsharp e fsharp d])
	< g, d' >2.
	<< { d'2. } { s4.\< s4 s8\! } >>
	c'4\< bflat, < a d >\!
	< g d' > r r
	d'( g) r
	bflat,( eflat) r
	eflat\pp( d) r
	eflat( d) r
	r d2
	
	R1*3/4*4
	
	g8\pp[ a\p( bflat c g) a](
	bflat[ c g) aflat( g f]
	eflat) r r4 r
	eflat8\pp r r4 r
	eflat4~ eflat8 r r4
	eflat4 eflat aflat,~
	aflat4.( d8) g,4
	f'8[( eflat d c] bflat4)
	eflat8\< r r4 r
	dflat4 c2\!
	f2._\markup { \italic piu \dynamic f }
	f4( eflat e)
	f\pp bflat,( eflat!)
	aflat,2\< g4\!
	f'2\p\< eflat4
	d eflat\! r
	
	R1*3/4*7
	
	g2._\markup { \dynamic p \italic cresc. }
	f2 eflat4
	eflat2._\markup { \italic piu \dynamic f }
	<< { eflat2. } { s4.\> s4 s8\! } >>
	f4\p eflat d
	f eflat d
	c\< bflat a\!
	d r r
	R1*3/4
	
	\set Staff.midiInstrument = #"pizzicato strings"
	g,4\p^\markup {pizz.} r g
	g r g
	g r g
	g r g
	g r g
	d' r r
	a r a
	d8 r r4 r
	g,4\pp r g
	g r g
	g r g
	g r g
	g r g
	d' r
		\set Staff.midiInstrument = #"string ensemble 1"
		d^arco
	c8\< r bflat r a\! r
	g r r16 g'16-.[ d-. bflat-.] g8 r
	d'4\mf( g) r
	bflat,( eflat) r
	eflat(_\markup { \dynamic p \italic cresc. } d) r
	eflat( d) r
	
	R1*3/4*3
	
	csharp2\p r4
	
	R1*3/4
	r1*3/4\fermata
	
	R1*3/4*8
	
	eflat2.\mf~
	eflat2 r4
	d2.
	R1*3/4
	dflat2.~
	dflat2 r4
	c2.
	R1*3/4
	< b aflat' >2.
	R1*3/4
	bflat!2.
	
	R1*3/4*2
	
	r4 r bflat\pp
	d8[( csharp] d2)
	gsharp,8[( fsharpsharp] gsharp2\fermata)
}
