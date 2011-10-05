\version "2.14.2"

sarabande = \context Staff \relative c'' {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "cello"

	% 1
	\acciaccatura g,8 <b' d,>4 \acciaccatura g,8 <<{c'4.( b8)} \\ {e,4}>> 
	fis16(a b c) \acciaccatura g,8 <b' d,>4^\trill( a8 g) |
	d'[( f,]) e8.[(~e64 d c b] c8[) e] |
	fis!16( c' b g) \acciaccatura <a, d,>8 fis'4^\trill( e8 d) |
	% 5
	a'16( fis d c) b8.( g16) b( d g a) |
	b( g e d) cis8. a32( b) cis16( d e fis) |
	g( cis d cis d) a( g fis) e( g fis) d |
	% 8
	a( d e cis) d4 d, | \bar ":|:"
	<fis' a, d,>8 e16 d \acciaccatura <a d,>8  <c' fis,>4.( b16 a) |
	<b d, g,>16( fis g e) <dis a>8.( e16) fis16( g a b) |
	% 11
	dis,( a' b c) b8 a16( g) fis( e a fis) | g( e) fis( dis) e4 e, |
	<d'! b>8.( e32 f) \acciaccatura <g, c,>8 e'8. fis16 gis16( a b c) |
	% 14
	gis, d''(c b) \acciaccatura <e, a,>8 c'8.( b16) a16( g! fis e) |
	<<{d4~d16 e( fis) g} \\ {r16 b,[(c a] b)}>> a'( c b g) |
	d( g) a( fis) g4 g, | \bar ":|"
}
