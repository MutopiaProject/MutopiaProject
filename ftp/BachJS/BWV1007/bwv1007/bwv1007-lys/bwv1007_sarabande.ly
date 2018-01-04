\version "2.18.2"

sarabande = \context Staff \relative c'' {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "cello"

	% 1
	<<{b4 c4. b8}\\{g,4 g2}\\{d'4 e2}>> 
	fis16( a b c) <<{b4\trill}\\{g,}\\{d'}>> a'8( g) |
	d' f, e8.[( e64 d c b] c8[) e] |
	fis!16 c'( b g) fis4^\trill e8( d) |
	% 5
	a'16 fis( d c) b8.\trill g16 b( d g a) |
	b g( e d) cis8.\trill a32( b cis16 d e fis) |
	g cis( d cis) d a g fis e( g) fis( d) |
	% 8
	a d( e cis) d4 d, | \bar ":|.|:"
	<<{fis'8 e16 d c'4. b16 a}\\{d,,4 d4. s8}\\{s4 fis'4. s8}\\{a,4 a4. s8}>> |
	<<{b'16 fis( g e)}\\{g,16 s8.}\\{d'16 s8.}>>  <<{dis8.\trill e16}\\{a,8. s16}>>  fis'16 g a b |
	% 11
	dis, a'( b c) b8\trill a16( g) fis( e) a( fis) | g( e) fis( dis) e4 e, |
	<<{d'!8. e32( f) e8. fis16}\\{b,8. s16 c,8 s8}\\{s4 g'8 s}>>  g'16( a b c) |
	% 14
	gis, d''(c b) <<{c8. b16}\\{a,8. s16}\\{e'8. s16}>> a16( g! fis e) |
	<<{d4~d16 e fis g} \\ {r16 b,[c a] b}>> a'( c) b( g) |
	d g( a fis) g4 g, | \bar ":|."
}
