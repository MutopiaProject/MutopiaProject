\version "2.18.2"

courante = \context Staff \relative c'' {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "cello"

	\partial 8 g8 |
	% 1
	g d g,[b'16( c] d c b a) |
	b8 d, g,[g'16( a]) b8 g | 
	e c c,[a''16( b] c b a g) |
	% 4
	fis8 d d,[d'16( e] fis g a b) | 
	c( b c) a c( b c) a d, c' b a |
	b( a b) g b( a b) g c, b' a g | 
	fis a d d, g8[ b,] d,[ fis'] |
	% 8
	<g g,>4. b16( a g fis e d) | 
	e'8 cis a[ b16( cis)] d fis,( e d) |
	a8 d' cis[\trill b16 a] d a b fis | 
	g( fis g) e g( fis g) e a, g' fis e |
	% 12
	fis( e fis) d fis( e fis) d g, fis' e d |
	d'( cis b a) d8 cis16( b) a( g fis e) | 
	d( e d) fis d( e d) g d( e d) a' |
	% 15
	d,( e d) b' d,( e d) cis' d,( e d) d' |
	g,( fis e d cis b a) g' fis8.(\trill e16) |
	a g b( a g fis e d) a8 cis | 
	d,2 r8 \bar ":|.|:" \break a''8 | 
	% 19
	a fis d[e16( fis] g fis e d) | 
	d'8 fis, c[ b16( c] d c b a) |
	b g'( a b c b a g) fis8 d' | 
	b g g,[ b'16( a]) c( b a g) |
	% 23
	a8 fis dis16 a'( b c b a g fis) | 
	g8 e e,[ g'16( fis)] a( g fis e) |
	f( e f) a f(e f) a c( b c) a | 
	dis4~ dis16 c!( b a) g( fis) a( dis,!) |
	% 27
	g,8 b' a16( g) fis( e) b8 dis | 
	e,4. e'16( fis g a b c) |
	d8 f, b,[ e16( f] g f e d) | 
	e8 c c, [c'16( d] e fis! g e) |
	% 31
	cis( g' a) g a g cis, g' cis,( g' a) g |
	c,!( fis a) fis a fis c fis c( fis a) fis |
	b, d( e f) g, f'( e d) e d'( c b) | 
	fis! a( b c) d, c'( b a) b8( g,) |
	% 35
	c, b''16( a) c( b a g) d8 fis | 
	g,16( a g) b g( a g) c g( a g) d' |
	g,( a g) e' g,( a g) fis' g,( a g) g' |
	c( b a g fis e d) c' b8.(\trill a16) |
	% 39
	d( c d) b d( c d) b e, d' c b | 
	c( b c) a c( b c) a d, c' b a |
	b( a b) g c, b' a g d8 fis | 
	<<{g2}\\{g,}>>  r8 \bar ":|."
}
