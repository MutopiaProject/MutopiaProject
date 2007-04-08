\version "2.4.0"

menuetII = \context Staff \relative c'' {

	\time 3/4
	\key d \minor
	\set Staff.midiInstrument = "cello"

	bes8(a bes) d,( ees g,) | f4 a'( d,) | g8(fis g) bes,( c ees,) |
	d( a' d) g( fis a) | bes(a bes) d,( ees g,) | f4 a'( d,) |
	g8(fis g) bes,( c e,!) | d g' \acciaccatura g8 fis2 | \bar ":|:"
	d8 fis a c ees d | c(bes a bes) \acciaccatura bes8 g4 | c,8 e! g bes d c |
	bes(a g a) f( ees) | d( f bes a bes d,) | ees( g bes a bes d) |
	c ees d bes f a | bes( f) d f bes,4 | b8 d f aes g f |
	ees(g c d) \acciaccatura d8 ees4 | a,,8 c ees g f ees |
        d(f bes c) \acciaccatura c8 d4 |
	fis,,8( a c ees d c) | bes( d g a bes g) |
	c bes(a g) d fis |
	g,2. | \bar ":|"
}
