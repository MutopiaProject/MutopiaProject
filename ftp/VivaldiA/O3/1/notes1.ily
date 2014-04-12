\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 4/4 \key d \major s1*85 \bar "||"}
incmidi = "midi1.ily"

violinI = \relative c''' {
	a4_"Solo" r8 a8 d d d d |
	d cis16 b a b g a fis4 r8 fis |
	b b b b b a16 g fis g e fis |
	d4 r8 e fis16 g e g fis g e g |
	fis g e g fis e fis d cis8 e_"Tutti" a4 ~|
	a8 g16 fis g8 g g\trill fis d' r |
	d r cis r cis r b r |
	b r a r a r g r |
	g r fis r e r e r |
	fis4 r4 r2 |
%11
	R1*5 |
	r4 d'8\p r d r cis r |
	cis r b r b r a r |
	a r g r g r fis r |
	e r e r fis4 r |
%20
	R1*3 |
	r2 r4 r8 fis |
	e16 d e fis g8 fis e16 d e fis g8 fis |
	e16 d e fis g8 fis e16 d cis b a4 |
	R1 |
	r2 r8 r16 e' a e cis a' |
	a(_"Solo" g e) g g( cis, a) g' g( fis d) fis b fis d b' |
	b( a fis) a a( dis, b) a' a( g e) b c( b c) e |
	ais( gis ais) fis b fis d b' cis,( b cis) b' cis,( b cis) ais' |
%31
	b_"Tutti" fis e fis d fis e fis cis fis e fis cis fis e fis |
	d fis\p e fis d fis e fis cis fis e fis cis fis e fis |
	d-"Solo e Forte" b' a b g a fis g e4 r4 |
	a8_"Tutti" a a a g4 r |
	g r g8 g g g |
	fis16_"Solo" a g a fis g e fis d4 r4 |
	g8_"Tutti" g g g g4 r4 |
	g4 r4 fis8 fis e e |
	d16(_"Solo" cis b cis d) g fis g e( d cis d e) a g a |
	fis( e d e fis) b a b g( fis g a g) a b a |
%41
	gis( fis gis a gis) a b gis a( gis a b a) b cis b |
	ais( gis ais b ais) b cis ais b8 b, r16 b'_"Tutti" b fis |
	g( fis) g8 r16 a a e fis( e) fis8 r16 g g d |
	e( d) e8 r16 fis fis cis d( cis) d8 r16 e e b |
	cis( b) cis8 r16 d d a b8 a gis4 |
	fis8\p fis fis fis eis eis eis eis |
	fis fis fis fis eis eis eis eis |
	fis fis fis fis eis4 r4 |
	R1*2 |
%51
	r2 r4 a'8 r |
	b r b r a r a r |
	gis r gis r fis r fis r |
	gis r a r a r gis r |
	a,16_"Solo" b a b a b a b a gis a b a b gis a |
	b cis b cis b cis b cis b a b cis b cis a b |
	cis d cis d cis d cis d cis b cis d cis d b cis |
	d e d e d e d e d cis d e d e cis d |
	e( d cis) d e( d cis) d e( d cis) d e fis e fis |
	d( cis b) cis d( cis b) cis d( cis b) cis d e d e |
%61
	cis4 r4 r2 |
	R1 |
	r8 e_"Tutti" e e a a a a |
	a\trill gis r gis gis\trill fis fis fis |
	fis\trill e r e e\trill d d d |
	d\trill cis r4 r2 |
	r2 r4 d'8 r |
	d r cis r cis r b r |
	b r a r a r g r |
	g r fis r fis r e r |
%71
	e r d r d r cis r |
	d16_"Solo" d cis d a d cis d a e' d e a, e' d e |
	a, fis' e fis a, fis' e fis a, g' fis g a, g' fis g |
	a, a' g a a, b' a b a, cis' b cis a, d' cis d |
	a4 r4 r2 |
	a16(_"Soli e Piano" g fis) g a g a fis b( a g) a b a b g |
	a4 r r2 |
	a16_"Soli e Piano" b a b a b a b g a g a g a g a |
	fis4 r16 a\f g a d,4 r |
	r r16 d cis d fis,4 r4 |
%81
	fis'16 e d e fis g a fis b8 e,16 d e fis g e |
	a8 d,16 cis d e fis d g8 cis,16 b cis d e cis |
	fis8 b,16 a b cis d b e8 a,16 g a b cis a |
	d8 g,16 fis g a b g cis8 fis,16 e fis g a fis |
	e d e fis g a b cis d2\fermata
}

violinII = \relative c''' {
	R1 |
	r2 a4_"Solo" r8 a |
	d d d d d cis16 b a b g a |
	fis4 r8 cis8 d16 e cis e d e cis e |
	d e cis e d cis d b a8 e'_"Tutti" a4 ~|
	a8 g16 fis g8 g g\trill fis d r |
	e r e r d r d r |
	cis r cis r b r b r |
	cis r d r d r cis r |
	d4 r4 r2 |
%11
	R1*5 |
	r4 d8\p r e r e r |
	d r d r cis r cis r |
	b r b r cis r d r |
	d r cis r d16_"Solo e Forte" d, e fis g a b cis |
	d a b cis d fis, g a a, a' g a fis g e fis |
%21
	d a' g a fis g e fis d fis e d a' cis b a |
	d fis e d a' fis g a d, a' g a fis g e fis |
	d a' g a fis g e fis d4 r8 d |
	cis16 b cis d e8 d cis16 b cis d e8 d |
	cis16 b cis d e8 d cis4 r |
	R1*5 |
%31
	r16 fis e fis d fis e fis cis fis e fis cis fis e fis |
	d fis\p e fis d fis e fis cis fis e fis cis fis e fis |
	d4 r4 e16_"Solo e Forte" g fis g e fis d e |
	cis8 e_"Tutti" e e e4 r |
	e r e8 e e e |
	d4 r d16_"Solo" fis e fis d e cis d |
	b8 d_"Tutti" d d e4 r |
	e r cis8 cis cis cis |
	r4 r r2 |
%40
	R1*3 |
	r16 b' b g e( d) e8 r16 a a e d( cis) d8 |
	r16 g g e cis( b) cis8 r16 fis fis d b( a) b8 |
	r16 e e cis a( gis) a8 r fis'4 eis8 |
	fis16_"Solo e Piano" cis cis fis fis cis cis fis gis cis, cis gis' gis cis, cis gis' |
	a cis, cis a' a cis, cis a' gis cis, cis gis' gis cis, cis gis' |
	a cis, cis a' a cis, cis a' gis8 cis, r4 |
	R1*2 |
%51
	r2 r4 a'8 r |
	a r gis r gis r fis r |
	fis r e r e r d r |
	d r cis r b r b r |
	cis4 r r2 |
	R1 |
	a16_"Solo" b a b a b a b a gis a b a b gis a |
	b cis b cis b cis b cis b a b cis b cis a b |
	cis( b a) b cis( b a) b cis( b a) b cis d cis d |
	b( a gis) a b( a gis) a b( a gis) a b cis b cis |
%61
	a4 r4 r2 |
	R1 |
	r2 r8 a_"Tutti" a a |
	e' e e e e\trill d r8 d |
	d\trill cis cis cis cis\trill b b b |
	b\trill a a16_"Solo" b cis d e( d cis) d e fis g a |
	g( fis e) fis g b a g fis( e d) e fis g a fis |
	b8 e,16 d e fis g e a8 d,16 cis d e fis d |
	g8 cis,16 b cis d e cis fis8 b,16 a b cis d b |
	e8 a,16 g a b cis a d8 g,16 fis g a b g |
%71
	cis8 fis,16 e fis g a fis e d e fis g a b cis |
	d4 r r2 |
	R1*3 |
	fis16(_"Soli e Piano" e d) e fis e fis d g( fis e) fis g fis g e |
	fis4 r r2 |
	fis16_"Soli e Piano" g fis g fis g fis g e fis e fis e fis e fis |
	d4 r r r16 fis\f e fis |
	a,4 r r r16 a g a |
%81
	d,4_"Tutti" d''8 r d r cis r |
	cis r b r b r a r |
	a r g r g r fis r |
	fis r e r e r d r |
	d r cis r d2\fermata
}

violinIII = \relative c'' {
	R1*4 |
	r2 r8 e a4 ~|
	a8 g16 fis g8 g g\trill fis d' r |
	d r cis r cis r b r |
	b r a r a r g r |
	g r fis r e r e r |
	d16_"Solo" e d e d e d e d cis d e d e cis d |
%11
	e fis e fis e fis e fis e d e fis e fis d e |
	fis g fis g fis g fis g fis e fis g fis g e fis |
	g a g a g a g a g fis g a g a fis g |
	a( g fis) g a( g fis) g a( g fis) g a b a b |
	g( fis) e fis g( fis e) fis g( fis e) fis g a g a |
	fis8 d d'\p r d r cis r |
	cis r b r b r a r |
	a r g r g r fis r |
	e r e r fis4 r |
%20
	R1*3 |
	r2 r4 r8 fis |
	e16 d e fis g8 fis e16 d e fis g8 fis |
	e16 d e fis g8 fis e16 d cis b a8_"Soli e Piano" fis' |
	e16 d e fis g8 fis e16 d e fis g8 fis |
	e16 d e fis g8 fis e16 d cis b a4 |
	R1*3 |
%31
	r16 fis' e fis d fis e fis cis fis e fis cis fis e fis |
	d fis\p e fis d fis e fis cis fis e fis cis fis e fis |
	d4 r b'\f r |
	a8 a a a g16 g_"Solo" fis g e fis d e |
	cis4 r g'8_"Tutti" g g g |
	fis4 r fis r |
	g8 g g g g16 g_"Solo" fis g e fis d e |
	cis4 r fis8 fis e e |
	d4 r r2 |
	R1*2 |
%42
	r2 r4 r16 fis fis d |
	e( d) d8 r16 e e cis d( cis) d8 r16 d d b |
	cis( b) cis8 r16 cis cis a b( a) b8 r16 b b gis |
	a( gis) a8 r16 a a fis b8 a gis4 |
	fis8\p fis fis fis eis eis eis eis |
	fis fis fis fis eis eis eis eis |
	fis fis fis fis eis16 cis'_"Solo e Forte" b cis gis cis b cis |
	a4 r4 r16 b' a b fis b a b |
	gis4 r r16 a gis a e a gis a |
%51
	fis b a b fis b a b gis8 e a r |
	b r b r a r a r |
	gis r gis r fis r fis r |
	gis r a r a r gis r |
	a4 r r2 |
	R1*5 |
%61
	e16(_"Soli e Piano" d cis) d e( d cis) d e( d cis) d e fis e fis |
	d( cis b) cis d( cis b) cis d( cis b) cis d e d e |
	cis8 e_"Tutti e Forte" e e a a a a |
	a\trill gis r gis gis\trill fis fis fis |
	fis\trill e r e e\trill d d d |
	d\trill cis r4 r2 |
	r r4 d'8 r |
	d r cis r cis r b r |
	b r a r a r g r |
	g r fis r fis r e r |
%71
	e r d r d r cis r |
	d4 r r2 |
	R1*2 |
	a'16(_"Soli" g fis) g a g a fis b( a g) a b a b g |
	a4 r r2 |
	a16_"Soli" b a b a b a b g a g a g a g a |
	fis4 r r2 |
	r16 a_"Solo" g a fis4 r2 |
	r16 d cis d a4 r2 |
%81
	r4 d8 r e r e r |
	d r d r cis r cis r |
	b r b r a r a r |
	g r g r fis r fis r |
	e r e r d2\fermata
}

violinIV = \relative c'' {
	R1*4 |
	r2 r8 e a4 ~|
	a8 g16 fis g8 g g\trill fis d r |
	e r e r d r d r |
	cis r cis r b r b r |
	cis r d r d r cis r |
	d4 r r2 |
%11
	R1 |
	d16_"Solo" e d e d e d e d cis d e d e cis d |
	e fis e fis e fis e fis e d e fis e fis d e |
	fis( e d) e fis( e d) e fis( e d) e fis g fis g |
	e( d cis) d e( d cis) d e( d cis) d e fis e fis |
	r4 d8\p r e r e r |
	d r d r cis r cis r |
	b r b r cis r d r |
	d r cis r d4 r |
%20
	R1*3 |
	r2 r4 r8 d |
	cis16 b cis d e8 d cis16 b cis d e8 d |
	cis16 b cis d e8 d cis4 r8 d_"Soli e Piano" |
	cis16 b cis d e8 d cis16 b cis d e8 d |
	cis16 b cis d e8 d cis4 r |
	R1*3 |
%31
	r16 fis e fis d fis e fis cis fis e fis cis fis e fis |
	d fis\p e fis d fis e fis cis fis e fis cis fis e fis |
	d4 r g\f r |
	e8 e e e e4 r |
	g16_"Solo" e d e cis d b cis a8 e'_"Tutti" e e |
	d4 r fis r |
	d8 d d d e4 r |
	g16_"Solo" e d e cis d b cis ais8 cis_"Tutti" cis cis |
	b4 r r2 |
	R1*3 |
%43
	r16 g' g e cis( b) cis8 r16 fis fis d b( a) b8 |
	r16 e e cis a( gis) a8 r16 d d b gis( fis) gis8 |
	r16 cis cis a fis( eis) fis8 r fis'4 eis8 |
	fis fis,\p fis fis eis eis eis eis |
	fis fis fis fis eis eis eis eis |
	fis fis fis fis eis4 r |
	r16 fis' e fis cis fis e fis d4 r |
	r16 e d e b e d e cis4 r |
%51
	r2 r4 a'8 r |
	a r gis r gis r fis r |
	fis r e r e r d r |
	d r cis r b r b r |
	cis4 r r2 |
	R1*5 |
%61
	cis16(_"Soli e Piano" b a) b cis( b a) b cis( b a) b cis d cis d |
	b( a gis) a b( a gis) a b( a gis) a b cis b cis |
	a4 r r8 a_"Tutti e Forte" a a |
	e' e e e e\trill d r d |
	d\trill cis cis cis cis\trill b b b |
	b\trill a r4 r2 |
	r2 r4 d8 r |
	e r e r d r d r |
	cis r cis r b r b r |
	a r a r g r g r |
%71
	fis r fis r e r e r |
	d4 r r2 |
	R1*2 |
	fis'16(_"Soli" e d) e fis e fis d g( fis e) fis g fis g e |
	fis4 r r2 |
	fis16_"Soli" g fis g fis g fis g e fis e fis e fis e fis |
	d4 r r2 |
	r2 r16 fis_"Solo" e fis d4 |
	r2 r16 a g a fis4 |
%81
	r4 d''8_"Tutti" r d r cis r |
	cis r b r b r a r |
	a r g r g r fis r |
	fis r e r e r d r |
	d r cis r d2\fermata
}

violaI = \relative c' {
	R1*4 |
	r2 cis8 d e cis |
	d cis d e a,4 a'8 r |
	b r a r a r g r |
	g r fis r fis r e r |
	e r d r e r a r |
	fis4 r r2 |
%11
	R1*5 |
	r4 a8\p r b r a r |
	a r g r g r fis r |
	fis r e r e r d r |
	e r a r fis4 r |
%20
	R1*3 |
	r2 r4 r8 a |
	a4 r8 a a4 r8 a |
	a4 r8 a a4 r |
	R1*5 |
%31
	fis8 fis fis fis fis fis fis fis |
	fis\p fis fis fis fis fis fis fis |
	fis4 r g\f r |
	a8 cis cis cis cis4 r |
	cis r cis8 cis cis cis |
	a4 r a r |
	b8 b b b cis4 r |
	cis r fis,8 fis fis fis |
	fis4 r r2 |
	R1*2 |
%42
	r2 r4 d' ~|
	d cis2 b4 ~|
	b a2 gis4 ~|
	gis fis eis8 fis cis cis |
	cis fis\p fis fis cis cis cis cis |
	fis fis fis fis cis cis cis cis |
	fis fis fis fis cis4 r |
	R1*2 |
%51
	r2 r4 cis'8 r |
	d r b r cis r a r |
	b r gis r a r fis r |
	e r e r fis r gis r |
	e4 r r2 |
	R1*8 |
	r8 b' b b a a b b |
	a a a a fis fis gis gis |
	e4 r r2 |
	r r4 a8 r |
	b r a r a r g r |
	g r fis r fis r e r |
	e r d r d r b r |
%71
	cis r d r b r a r |
	a4 r r2 |
	R1*8 |
%81
	r4 a'8 r b r a r |
	a r g r g r fis r |
	fis r e r e r d r |
	d r b r cis r d r |
	b r a r a2\fermata
}

violaII = \relative c' {
	R1*4 |
	r2 cis8 d e cis |
	d cis d e a,4 a'8 r |
	g r e r fis r d r |
	e r cis r d r b r |
	a r a r b r cis r |
	a4 r r2 |
%11
	R1*5 |
	r4 a'8\p r g r e r |
	fis r d r e r cis r |
	d r b r a r a r |
	b r cis r a4 r |
%20
	R1*3 |
	r2 r4 r8 a |
	a a a a a a a a |
	a a a a a4 r |
	R1*5 |
%31
	fis'8 fis fis fis fis fis fis fis |
	fis\p fis fis fis fis fis fis fis |
	fis4 r b,\f r |
	cis8 cis cis cis cis4 r |
	e r a8 a a a |
	a4 r a r |
	g8 g g g cis,4 r |
	e r fis8 fis fis fis |
	fis4 r r2 |
	R1*2 |
%42
	r2 r4 d' ~|
	d cis2 b4 ~|
	b a2 gis4 ~|
	gis fis4 eis8 fis cis8. b16 |
	a8 fis'\p fis fis cis cis cis cis |
	fis fis fis fis cis cis cis cis |
	fis fis fis fis cis4 r |
	R1*2 |
%51
	r2 r4 e8 r |
	fis r e r e r d r |
	d r cis r cis r b r |
	b r e r b r e r |
	cis4 r r2 |
	R1*8 |
	r8 b' b b a  a b b |
	a a a a fis fis gis gis |
	e4 r r2 |
	r2 r4 a8 r |
	b r a r a r g r |
	g r fis r fis r e r |
	e r d r d r b r |
%71
	cis r d r b r a r |
	fis4 r r2 |
	R1*8 |
%81
	r4 a'8 r b r a r |
	a r g r g r fis r |
	fis r e r e r d r |
	d r b r cis r d r |
	b r a r fis2\fermata
}

cello = \relative c {
	R1*4 |
	r2 a8 b cis a |
	b a b cis d d, fis'16_"Solo" e fis d |
	g fis g e a b a g fis e fis d g a g fis |
	e d e cis fis g fis e d cis d b e fis g e |
	a b cis a d, e fis d g fis g e a g a a, |
	d4 r r2 |
%11
	R1*5 |
	r4 fis16_"Solo e Piano" e fis d g fis g e a b a g |
	fis e fis d g a g fis e d e cis fis g fis e |
	d cis d b e fis g e a b cis a d, e fis d |
	g fis g e a g a a, d2_"Tutti" ~ |
	d1 ~|
%21
	d1 ~|
	d1 ~|
	d2 ~ d8 d16 e fis8 d |
	a' a, r d a' a, r d |
	a' a, r d_"Soli e Piano" a' a16 g fis8 d |
	a' a, r d a' a, r d |
	a' a, r d a' a, r4 |
	r8 cis'8\f a cis d d, r4 |
	r8 dis' b dis e e, r e |
	fis e d b e cis fis fis, |
%31
	b b b b ais ais ais ais |
	b\p b b b ais ais ais ais |
	b4 r e\f r |
	a,8 a a a a4 r |
	a r a8 a a a |
	d4 r d r |
	b8 b b b ais4 r |
	a r a8 a a a |
	b b b b cis cis cis cis |
	d d d d e e e e |
%41
	d d d d cis cis cis cis |
	fis fis e e d cis d b |
	e4 r8 a d,4 r8 g |
	cis,4 r8 fis8 b,4 r8 e |
	a,4 r8 d gis, a16 b cis8 cis, |
	fis'4 r r2 |
	R1 |
	r2 cis4 eis |
	fis ais, b dis |
	e gis, a cis |
%51
	d dis e a16_"Solo" b cis a |
	d cis d b e fis e d cis b cis a d e d cis |
	b a b gis cis d cis b a gis a fis b cis d b |
	e, fis gis e a b cis a d cis d b e d e e, |
	a,4 r a'_"Tutti" r |
	gis r e r |
	a, r a' r |
	b r e, r |
	a, r a' r |
	b r e, r |
%61
	a, r a' r |
	b r e, r |
	a, r r2 |
	r8 e' e e fis fis gis gis |
	a a, a a d d e e |
	a a, r4 a'8 a, r4 |
	a'8 a, r4 d'8 d, fis r |
	g r a r fis r g r |
	e r fis r d r e r |
	cis r d r b r e r |
%71
	a, r b r g r a r |
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
	d1 ~|
%81
	d4 fis8 r g r a r |
	fis r g r e r fis r |
	d r e r cis r d r |
	b r e r a, r b r |
	g r a r d,2\fermata
}

bass = <<

\relative c {
	R1*4 |
	r2 a8 b cis a |
	b a b cis d d, fis' r |
	g r a r fis r g r |
	e r fis r d r e r |
	a, r d r g, r a r |
	d,4 r r2 |
%11
	R1*5 |
	r4 fis'8\p r g r a r |
	fis r g r e r fis r |
	d r e r a, r d r |
	g, r a r d2_"Tasto Solo" ~|
	d1 ~|
%21
	d1 ~|
	d1 ~|
	d2 d8 d16 e fis8 d |
	a' a, r d a' a, r d |
	a' a, r d a' a, r4 |
	R1*2 |
	r8 cis' a cis d d, r4 |
	r8 dis' b dis e e, r e |
	fis e d b e cis fis fis, |
%31
	b b b b ais ais ais ais |
	b\p b b b ais ais ais ais |
	b4 r e\f r |
	a,8 a a a a4 r |
	a r a8 a a a |
	d4 r d r |
	b8 b b b ais4 r |
	a r a8 a a a |
	b b b b cis cis cis cis |
	d d d d e e e e |
%41
	d d d d cis cis cis cis |
	fis fis e e d cis d b |
	e4 r8 a d,4 r8 g |
	cis,4 r8 fis b,4 r8 e |
	a,4 r8 d' gis, a16 b cis8 cis, |
	fis4 r r2 |
	R1 |
	r2 cis4 eis |
	fis ais, b dis |
	e gis, a cis |
%51
	d dis e a8 r |
	d r e r cis r d r |
	b r cis r a r b r |
	e, r a, r d r e r |
	a,4 r a' r |
	gis r e r |
	a, r a' r |
	b r e, r |
	a, r a' r |
	b r e, r |
%61
	a, r a' r |
	b r e, r |
	a, r r2 |
	r8 e' e e fis fis gis gis |
	a a, a a d d e e |
	a a, r4 a'8 a, r4 |
	a'8 a, r4 d'8 d, fis r |
	g r a r fis r g r |
	e r fis r d r e r |
	cis r d r b r e r |
%71
	a, r b r g r a r |
	d1_"Tasto Solo" ~|
	d ~|
	d ~|
	d ~|
	d ~|
	d ~|
	d ~|
	d ~|
	d ~|
%81
	d4 fis8 r g r a r |
	fis r g r e r fis r |
	d r e r cis r d r |
	b r e r a, r b r |
	g r a r d,2\fermata
}

\figuremode {
	s1*5 |
	<7>8 s <6> <6 5> <5 4> <3> <6> s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	<7> s s s <6 5> s s s |
	s1*6 |
	s4 <6>8 s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s <7> s s s |
	<6 5> s s s s2 |
	s1*8 |
	s8 <6 5> <7> s <4> <3> s4 |
	s8 <6 5> <7> s <4> <3> s <6\!> |
	<_+> s <6> s <6 5> s <_+> s |
	s2 <6>8 s s s |
	s2 <6>8 s s s |
	s1 |
	s2 <7>4 s |
	<7> s <7>8 s s s |
	s1 |
	<6>8 s s s <7 5>4 s |
	<7> s <6>8 s <6 5> s |
	<5> s <6> s <5> s <6> s |
	<5> s <6> s s2 |
	<4\+ 2>8 s s s <6> s s s |
	<_+> s <4\+ 2> s <6> s s s |
	<7>4 s <7> s |
	<7> s <7> s8 <_+> |
	<7>4 s <6/>8 <6>16 s <5\+ 4>8 <_+> |
	s1*2 |
	s2 <_+>4 <6 5> |
	s <6> s <6> |
	<_+> <6> s <6> |
	<5> <6> <_+> s |
	<6 5>8 s <_+> s <6 5\+> s s s |
	<6/ 5> s s s <6 5> s s s |
	<7_+> s s s <6 5> s <_+> s |
	s1 |
	<6>4 s <_+> s |
	s s <6> s |
	s s <7_+> s |
	s1 |
	s2 <7_+>4 s |
	s1 |
	s2 <7_+>4 s |
	s1 |
	s8 <5 4> <_+> s <9 7> <8 6> <7 5> s |
	<6 4> <5 3> s s <9 7> <8 6> <7 5 +> s |
	<9 4> <8 3> s4 s2 |
	s1 |
	<6 5>8 s s s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	s1*9 |
	s2 <6 5>8 s s s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s <6 5> s s s |
	<6 5> s s s s2
}
>>
