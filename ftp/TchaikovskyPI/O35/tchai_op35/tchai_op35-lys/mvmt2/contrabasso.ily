\version "2.18.2"

theBass =  \relative d {
	\clef "bass"
	\key g \minor
	
	r1*3/4
	R1*3/4*36
	
	g8\pp[ a\p( bflat c g) a](
	bflat[ c g) aflat( g f]
	eflat) r r4 r
	
	R1*3/4*3
	
	r4 r8 d\pp( g) r
	f[( eflat d c] bflat4)
	eflat8\< r r4 r
	dflat c2\!
	f2._\markup { \italic piu \dynamic f }
	r4 r c'\pp
	f, bflat,( eflat
	aflat8) r r4 r
	f2\p\< eflat4
	d eflat\! r
	
	R1*3/4*9
	
	aflat2._\markup { \italic piu \dynamic f }
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
	g,\pp r g
	g r g
	g r g
	g r g
	g r g
	d' r
		\set Staff.midiInstrument = #"string ensemble 1"
		d4^arco
	c8\< r bflat r a r
	g r r4 r
	d'\mf( g) r
	bflat,( eflat) r
	eflat(_\markup { \dynamic p \italic cresc. } d) r
	eflat( d) r
	
	R1*3/4*28
	
	d8\pp[( csharp] d2)
	gsharp,8[(_\markup { "" \raise #-3 \italic {Attacca subito}} fsharpsharp] gsharp2)^\fermata
}
