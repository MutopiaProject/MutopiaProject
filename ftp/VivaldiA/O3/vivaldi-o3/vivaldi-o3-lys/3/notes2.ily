\version "2.18.0"

pMarkings = {\tempo "Largo" \time 3/4 \key g \major s2.*32 \bar "||"}
incmidi = "midi2.ily"

violinI = \relative c'' {
	e4-! e-! e-! |
	e16(_"Solo" b a b) g'( e dis e) b'( g fis e) |
	dis4_"Tutti" dis dis |
	dis16(_"Solo" b a b) fis'( b, a b) a'( b, a b) |
	e4_"Tutti" e e |
	e16(_"Solo" g fis e) b'( g fis e) b'( gis fis e) |
	d4_"Tutti" d d |
	d16( cis d b') gis( d cis d) b'( d, c b) |
	c4_"Tutti" c c |
	c16(_"Solo" e c b a e a c) e( a, c e) |
%11
	ais4_"Tutti" ais ais |
	b16(_"Solo" fis d cis b d cis b) fis'( d cis b) |
	b'( g fis e) b'( g fis e) b'( g fis e) |
	ais( fis e cis ais fis e fis) ais( cis e ais) |
	b4_"Tutti" b b |
	a a a |
	gis16(_"Solo" d) d( b') b( d,) d( gis) gis( b) a( gis) |
	a4_"Tutti" a a |
	g g g |
	fis16(_"Solo" d) d( a') a( d,) d( fis) fis( a) g( fis) |
%21
	b( dis,) dis( fis) fis( b,) b( fis') fis( a) a( fis) |
	g( e) e( f) f( gis) gis( a) a( ais) ais( b) |
	b4 ~ b16( b, a b) a'( b, a b) |
	g'8 fis16 e dis4.\trill e8 |
	e4_"Tutti" e e |
	gis8 b_"Solo" b16( a gis fis e d c b) |
	c8 e e16( d c b a g fis e) |
	dis'( b a b) fis'( b, a b) a'( b, a b) |
	g'8 fis16 e dis4.\trill e8 |
	e4_"Tutti" g g |
%31
	fis fis fis |
	e2.\fermata |
}

tutti = \relative c''' {
	g4-! g-! g-! |
	g-! r r |
	fis fis fis |
	a r r |
	g g g |
	g r r |
	e e e |
	e r r |
	e e e |
	e r r |
%11
	e e e |
	d r r |
	cis r r |
	cis? r r |
	d d d |
	dis dis dis |
	d! r r |
	c c c |
	cis cis cis |
	d r r |
%21
	R2.*4 |
}

violinII = \relative c'' {
	\tutti
%25
	e4 e e |
	d r r |
	R2.*3 |
	r4 e e |
%31
	e dis dis |
	e2.\fermata |
}

violinIII = \relative c''' {
	\tutti
%25
	g4 g g |
	gis r r |
	R2.*3 |
	r4 g g |
%31
	fis fis fis |
	e2.\fermata |
}

violinIV = \relative c'' {
	e4-! e-! e-! |
	e-! r r |
	dis dis dis |
	dis r r |
	e e e |
	e r r |
	d d d |
	d r r |
	c c c |
	c r r |
%11
	ais' ais ais |
	b r r |
	b r r |
	ais r r |
	b b b |
	a a a |
	gis r r |
	a a a |
	g g g |
	fis r r |
%21
	R2.*4 |
	g4 g g |
	d r r |
	R2.*3 |
	r4 e e |
%31
	e dis dis |
	e2.\fermata |
}

violaI = \relative c'' {
	b4-! b-! b-! |
	b-! r r |
	b b b |
	b r r |
	b b b |
	b r r |
	b b b |
	b r r |
	a a a |
	a r r |
%11
	cis cis cis |
	b r r |
	g r r |
	fis r r |
	fis fis fis |
	fis fis fis |
	e r r |
	e e e |
	e e e |
	d r r |
%21
	R2.*4 |
	b'4 b b |
	b r r |
	R2.*3 |
	r4 b b |
%31
	c b b |
	b2.\fermata |
}

violaII = \relative c'' {
	b4-! b-! b-! |
	b-! r r |
	b b b |
	fis r r |
	g b, b |
	b r r |
	gis' gis gis |
	gis? r r |
	e e e |
	e r r |
%11
	fis fis fis |
	fis r r |
	g r r |
	fis r r |
	fis fis fis |
	b, b b |
	b r r |
	a a a |
	a a a |
	a r r |
%21
	R2.*4 |
	b'4 b b |
	e, r r |
	R2.*3 |
	r4 g g |
%31
	a fis b |
	g2.\fermata |
}

bassi = \relative c {
	e4-! e-! e-! |
	e-! r r |
	b b b |
	b r r |
	e e e |
	e r r |
	gis gis gis |
	gis r r |
	a a a |
	a r r |
%11
	fis fis fis |
	b, r r |
	e r r |
	fis r r |
	b, b b |
	b b b |
	e r r |
	a, a a |
	a a a |
	d d d |
%21
	dis dis dis |
	e r r |
	dis dis dis |
	e8 a b4 b, |
	e e e |
	e2. |
	a, |
	b4 b b |
	e8 a b4 b, |
	e e e |
%31
	a b b, |
}

cello = \relative c {
	\bassi
	e2.\fermata |
}

bass = <<

{\bassi
e,2.\fermata |}

\figuremode {
	s2.*2 |
	<_+>4 s s |
	<7 _+> s s |
	s2.*2 |
	<6 5>4 s s |
	s2.*3 |
%11
	<7 _+>4 s s |
	s2. |
	<6\\ 5>4 s s |
	<_+> s s |
	s2. |
	<7 _+>4 s s |
	<5 _+> s s |
	s2. |
	<7 _+>4 s s |
	s2. |
%21
	<6>4 s <6 5> |
	s2. |
	<6>4 s <6 5> |
	s <_+> s |
	s2. |
	<7 _+> |
	s |
	<7 _+>4 s s |
	s <_+> s |
	s2. |
%31
	<6 5>4 <_+> s |
}
>>
