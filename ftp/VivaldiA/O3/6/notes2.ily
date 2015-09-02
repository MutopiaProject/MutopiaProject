\version "2.18.0"

pMarkings = {\tempo "Largo" \time 4/4 \key d \minor s1*14 \bar "||"}
incmidi = "midi2.ily"

violinI = \relative c'' {
	d16( e f e) d( f e d) e8 a, r4 |
	e'16( d e f) e( f g a) f e d8 r16 f g a |
	bes( a g f) (bes a g f) e( d e f) e( f g e) |
	a( g f e) a( g f e) d( cis d e) d( e f d) |
	g( f e d) g( f e d) cis b a8 r16 e' f g |
	f8 e16 d cis8. d16 d4 r16 d e f |
	e16.( f32) e16.( f32) e16.( f32) e16.( f32) e8 d16 c b8.\trill a16 |
	a4 r16 a b cis d32( cis d e) d( cis d e) d( cis d e) cis( b cis d) |
	b4\trill r16 b c d e32( d e f) e( d e f) e( d e f) d( cis d e) |
	cis4\trill r16 cis d e f32( e f g) f( e f g) f( e f g) e( d e f) |
%11
	d4\trill r16 d e f g32( a bes a g f e d) g( a bes a g f e d) |
	\tuplet 3/2 {cis16( b a) f'( e d)} cis8.\trill d16 d4 r16 d f d |
	es16.( f32) es16.( f32) es16.( f32) es16.( fis32) g4. a16 g |
	f8 e16 d cis8.\trill d16 d2\fermata |
}

violinII = \relative c''' {
	a1\p ~|
	a |
	bes |
	a |
	g |
	f4 r8 e f2 |
	e4. e8 e d16 c b8.\trill c16 |
	c4 cis d2 ~|
	d e ~|
	e f ~|
%11
	f g ~|
	g8 f e8.\trill f16 f4 r |
	r2 r4 r8 a16 g |
	f8 e16 d cis8.\trill d16 d2\fermata |
}

violinIII = \relative c'' {
	f2 e2 ~|
	e f ~|
	f g |
	e f |
	bes,4. d8 e4 cis |
	a r8 cis d2 ~|
	d4. d8 c b16 a gis8.\trill a16 |
	a1 |
	b |
	cis2 c |
%11
	d1 |
	cis8 d cis8.\trill d16 d4 r |
	r2 r4 r8 e |
	d e16 f e8.\trill d16 d2\fermata |
}

violinIV = \relative c'' {
	d2 cis ~|
	cis d ~|
	d e ~|
	e d ~|
	d cis |
	d8 a r a a2 |
	b4. b8 e, f16 a e8 e |
	e2 f4 d' |
	b2 gis |
	cis a |
%11
	d1 |
	e8 a, a a a4 r |
	r2 r4 r8 a |
	a bes e, a f2\fermata |
}

violaI = \relative c' {
	d2 a' ~|
	a d ~|
	d cis |
	c! b |
	bes! a4 a, |
	d r8 a d2 |
	gis,4. gis8 a d e e, |
	a4. g8 f4 fis' |
	g2 gis |
	a1 |
%11
	bes2 bes, |
	a8 d a' a, d4 r |
	r2 r4 r8 cis |
	d g, a4 d2\fermata |
}

violaII = \violaI

cello = R1*14

bass = R1*14
