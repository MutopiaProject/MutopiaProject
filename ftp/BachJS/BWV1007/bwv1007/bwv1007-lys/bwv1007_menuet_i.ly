\version "2.18.2"

menuetI = \context Staff \relative c' {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 { g8( d') b'4 a8( b16 c) | b8( a) g( fis) g( d) | e( g) c( a) fis( d') |
	<<{b2\trill a4}\\{g,2 s4}\\{d'2 d4}>> |
	a8( fis') c'4 b8( c16 d) | c8( b) a( g) fis( e) |
	fis( g16 a) g8( fis) e( fis) | d4 a d, | }
	\repeat volta 2 { d'8( fis) a4 g8( a16 b) | a8( g) fis( e) d fis |
	b,( d gis) a b d | a, d'( c b) c4 | dis,8( fis a) c b a |
	b( e, g,) a' c b | a( g fis e) b dis | e,4. e'8[ d! c] |
	b( d) g4 d8( e16 f) | f8( d e) c c, b' |
	cis( e) a4 e8( fis!16 g) | g8( e fis) d d, a' |
	d( fis a) c! b d | e,( g b) d c e | d fis, g b, d, fis' |
	<<{g2.}\\{g,2.}>> |}
}
