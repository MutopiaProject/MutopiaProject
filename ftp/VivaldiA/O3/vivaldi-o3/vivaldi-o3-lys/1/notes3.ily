\version "2.18.0"

pMarkings = {\tempo "Allegro" \time 3/4 \key d \major s2.*104 \bar "|."}
incmidi = "midi3.ily"

violinI = \relative c''' {
	\tupletSpan 4
	R2.*3 |
	\tuplet 3/2 {r8 a g fis g e d e cis |
	b b' a g a fis e fis d |
	cis cis' b a b g fis g e |
	d d' cis b cis a g a fis |
	e a, b cis d e fis g a |
	e a,\p b cis d e fis g a |
	e a,\f b cis d e fis g a |
%11
	fis e d cis a d e, d' cis |
	d a'_"Solo" g fis( e) d b'( a) g |
	a fis e d a' g fis( g) a |
	g e d cis a' g a e g |
	fis4. r4 r8 r4 r8} |
	R2.*4 |
	\tuplet 3/2 {r8 e d cis d b a b gis |
%21
	fis fis' e d e cis b cis a |
	gis gis' fis e fis d cis d b |
	a a' gis fis gis e d e cis |
	b e, fis gis a b cis d e |
	b e,\p fis gis a b cis d e |
	b e,_"Forte" fis gis a b cis d e |
	cis b a gis e a b, a' gis |
	a a'_"Solo" b fis( g a) fis( g a) |
	c,( b c) a'( g a) c,( b c) |
	b b' a g( a b) g( a b) |
%31
	d, cis d b' a b d, cis d |
	cis cis' b a b cis a b cis |
	e, d e cis' b cis e, d e |
	d b' a g a b g fis g |
	e b e e fis e d cis d |
	cis a' gis a cis, a' a cis, a' |
	a d, a' a d, a' a d, a' |
	a e a a e a a e a |
	a fis a a fis a a fis a |
	a cis, a' a cis, a' a cis, a' |
%41
	a b, a' a b, a' a b, a' |
	gis b, gis' gis b, gis' gis b, gis' |
	a e a cis, e cis a cis a |
	e cis' a e a e cis e cis} |
	a4\trill r r |
	a''_"Tutti e Piano" r r |
	a r r |
	a r r |
	a r r |
	a r r |
%51
	gis r r |
	a r r |
	a r r |
	\tuplet 3/2 {a4\f a8 a4 a8 a4 a8 |
	a b g fis g e d e cis |
	b4 b'8 b4 b8 b4 b8 |
	b cis a gis a fis e fis d |
	cis4 cis'8 cis4 cis8 cis4 cis8 |
	cis d b ais b g fis g e |
	d4 d'8 d4 d8 d4 d8} |
%61
	d4( \tuplet 3/2 {d4) d8} cis4 |
	\tuplet 3/2 {b4 a8} gis4(\trill \tuplet 3/2 {g4) fis8} |
	fis4 r r |
	R2.*10 |
	\tuplet 3/2 {fis8(_"Solo" d) e fis( g) a b( a) b |
	e,( cis) d e( fis) g a( g) a |
	d,( b) cis d( e) fis g( fis) g |
	cis,( a) b cis( d) e fis( e) fis |
	b,( g) a b( cis) d e( d) e |
	cis b cis} a4 r |
%80
	R2.*8 |
	\tuplet 3/2 {r8 a' g fis g e d e cis |
	b b' a g a fis e fis d |
	cis e_"Solo" d cis( b a) g( fis g) |
%91
	g( e' d) cis( b a) g( fis g) |
	g( e' d) cis( b a) g'( f e)} |
	f4 ~ \tuplet 3/2 {f8( e d) es( d cis)} |
	g'4 ~ \tuplet 3/2 {g8( f e) a( g f)} |
	b4 ~ \tuplet 3/2 {b8( a gis) a( g fis) |
	g( f e) f( e d) es( d cis) |
	d( c b) c( bes a) bes( a g) |
	a( g f) d( f e) f( e d) |
	a4 e''8_"Tutti" a e d cis d e |
	cis a b cis d e fis g a |
%101
	e a, b cis d e fis g a |
	fis e d cis a d e, d' cis |
	d d, e fis e d a'4 a,8} |
	d2.\fermata
}

violinII = \relative c''' {
	\tupletSpan 4
	R2.*3 |
	\tuplet 3/2 {r8 a g fis g e d e cis |
	b b' a g a fis e fis d |
	cis cis' b a b g fis g e |
	d d' cis b cis a g a fis |
	e a, b cis d e fis g a |
	e a,\p b cis d e fis g a |
	e a,\f b cis d e fis g a |
%11
	fis e d cis a d e, d' cis} |
	d4 r r |
	R2.*2 |
	\tuplet 3/2 {a'8(_"Soli" g a) a( g a) a( b a) |
	g( fis g) g( fis g) g( a g) |
	fis( e fis) fis( e fis) fis( g fis) |
	e( d e) e( d e) e( fis e) |
	d( cis d) d( cis d) d( e d) |
	cis e_"Tutti" d cis d b a b gis |
%21
	fis fis' e d e cis b cis a |
	gis gis' fis e fis d cis d b |
	a a' gis fis gis e d e cis |
	b e, fis gis a b cis d e |
	b e,\p fis gis a b cis d e |
	b e,\f fis gis a b cis d e |
	cis b a gis e a b, a' gis} |
	a4 r r |
	R2.*7 |
	\repeat unfold 6 {a'4 r r} |
%42
	gis r r |
	a r r |
	a r r |
	a r r |
	d, r r |
	e r r |
	fis r r |
	cis r r |
	b r r |
%51
	b r r |
	cis r r |
	cis r r |
	cis r r |
	\tuplet 3/2 {r4 d8\f d4 d8 d4 d8 |
	d e cis b cis a g a fis |
	e4 e'8 e4 e8 e4 e8 |
	e fis d cis d b a b g |
	fis4 fis'8 fis4 fis8 fis4 fis8 |
	b4 b8 b4 b8 b4 b8} |
%61
	b4 ~ \tuplet 3/2 {b4 b8} a4 |
	\tuplet 3/2 {gis4 fis8} eis4\trill ~ \tuplet 3/2 {eis4 fis8} |
	\tuplet 3/2 {fis(_"Solo" g a) fis( e fis) e( dis e) |
	dis( e fis) dis( e fis) dis( e fis) |
	g( a b) e,( fis e) d( cis d) |
	cis( d e) cis( d e) cis( d e) |
	fis( g a) d,( e d) c( b c) |
	b b' a g a fis e fis d |
	cis( d) e} a,4 \tuplet 3/2 {r4 fis'8 |
	d cis b} g'4 \tuplet 3/2 {r4 gis8 |
%71
	e d cis} a'4 \tuplet 3/2 {r4 ais8 |
	fis e d} b'4 \tuplet 3/2 {r4 b8 |
	g fis e} cis'4 \tuplet 3/2 {r4 cis8 |
	d4. d, r} |
	R2.*13 |
	\tuplet 3/2 {r8 a' g fis g e d e cis |
	b b' a g a fis e fis d} |
	cis4 r r |
%91
	R2.*8 |
	\tuplet 3/2 {r8 r e a e d cis d e |
	cis a b cis d e fis g a |
%101
	e a, b cis d e fis g a |
	fis e d cis a d e, d' cis |
	d d, e fis e d a'4 a,8} |
	d2.\fermata
}

violinIII = \relative c''' {
	\tupletSpan 4
	\tuplet 3/2 {r8 a_"Solo" g fis( e) d b'( a) g |
	a fis e d a' g fis( g) a |
	g e d cis a' g a( e) g |
	fis a_"Tutti" g fis g e d e cis |
	b b' a g a fis e fis d |
	cis cis' b a b g fis g e |
	d d' cis b cis a g a fis |
	e a, b cis d e fis g a |
	e a,\p b cis d e fis g a |
	e a,\f b cis d e fis g a |
%11
	fis e d cis a d e, d' cis} |
	d4 r r |
	R2.*2 |
	\tuplet 3/2 {fis8(_"Soli" e fis) fis( e fis) fis( g fis) |
	e( d e) e( d e) e( fis e) |
	d( cis d) d( cis d) d( e d) |
	cis( b cis) cis( b cis) cis( d cis) |
	b( a b) b( a b) b( cis b) |
	a e'_"Tutti" d cis d b a b gis |
%21
	fis fis' e d e cis b cis a |
	gis gis' fis e fis d cis d b |
	a a' gis fis gis e d e cis |
	b e, fis gis a b cis d e |
	b e,\p fis gis a b cis d e |
	b e,\f fis gis a b cis d e |
	cis b a gis e a b, a' gis} |
	a4 r r |
	R2.*7 |
	cis4 r r |
	d r r |
	e r r |
	fis r r |
	cis r r |
%41
	b r r |
	b r r |
	b r r |
	cis r r |
	cis r r |
	cis r r |
	d\p r r |
	e r r |
	fis r r |
	cis r r |
%51
	b r r |
	b r r |
	cis r r |
	cis r r |
	\tuplet 3/2 {cis4 a'8\f a4 a8 a4 a8 |
	a b g fis g e d e cis |
	b4 b'8 b4 b8 b4 b8 |
	b cis a gis a fis e fis d |
	cis4 cis'8 cis4 cis8 cis4 cis8 |
	cis d b ais b g fis g e |
%61
	d4 d'8 d4 d8 d4 d8} |
	d4 ~ \tuplet 3/2{d4 d8} cis4 |
	\tuplet 3/2 {b4 a8} gis4\trill ~ \tuplet 3/2 {gis4 fis8} |
	fis4 r r |
	R2.*5 |
	\tuplet 3/2 {a,8_"Solo" b cis d a d d a d |
%71
	b cis d e b e e b e |
	cis d e fis cis fis fis cis fis |
	d e fis g d g g d g |
	e fis g a e cis a a' g} |
	fis4 r \tuplet 3/2 {r4 fis8 |
	g( e) fis} g4 \tuplet 3/2 {r4 e8 |
	fis( d) e} fis4 \tuplet 3/2 {r4 d8 |
	e( b) cis} d4 b |
	e, r r |
%80
	R2.*8 |
	\tuplet 3/2 {r8 a' g fis g e d e cis |
	b b' a g a fis e fis d} |
	cis4 r r |
%91
	R2.*8 |
	\tuplet 3/2 {r8 r e a e d cis d e |
	cis a b cis d e fis g a |
%101
	e a, b cis d e fis g a |
	fis e d cis a d e, d' cis |
	d d, e fis e d a'4 a,8} |
	d2.\fermata
}

violinIV = \relative c''' {
	\tupletSpan 4
	R2.*3 |
	\tuplet 3/2 {r8 a g fis g e d e cis |
	b b' a g a fis e fis d |
	cis cis' b a b g fis g e |
	d d' cis b cis a g a fis |
	e a, b cis d e fis g a |
	e a,\p b cis d e fis g a |
	e a,\f b cis d e fis g a |
%11
	fis e d cis a d e, d' cis} |
	d4 r r |
	R2.*7 |
	\tuplet 3/2 {r8 e d cis d b a b gis |
%21
	fis fis' e d e cis b cis a |
	gis gis' fis e fis d cis d b |
	a a' gis fis gis e d e cis |
	b e, fis gis a b cis d e |
	b e,\p fis gis a b cis d e |
	b e,\f fis gis a b cis d e |
	cis b a gis e a b, a' gis} |
	a4 r r |
	R2.*7 |
	cis4 r r |
	d r r |
	e r r |
	fis r r |
	cis r r |
%41
	b r r |
	b r r |
	cis r r |
	cis r r |
	\tuplet 3/2 {cis8_"Solo e Piano" a' gis a cis, a' a cis, a' |
	a d, a' a d, a' a d, a' |
	a e a a e a a e a |
	a fis a a fis a a fis a |
	a cis, a' a cis, a' a cis, a' |
	a b, a' a b, a' a b, a' |
%51
	gis b, gis' gis b, gis' gis b, gis' |
	a e a cis, e cis a cis a |
	e cis' a e a e cis e cis} |
	a4\trill r r |
	\tuplet 3/2 {r4 d'8_"Tutti e Forte" d4 d8 d4 d8 |
	d e cis b cis a g a fis |
	e4 e'8 e4 e8 e4 e8 |
	e fis d cis d b a b g |
	fis4 fis'8 fis4 fis8 fis4 fis8 |
	b4 b8 b4 b8 b4 b8} |
%61
	b4 ~ \tuplet 3/2 {b4 b8} a4 |
	\tuplet 3/2 {gis4 fis8} eis4\trill ~ \tuplet 3/2 {eis4 fis8} |
	fis4 r r |
	R2.*15 |
	\tuplet 3/2 {r8 e_"Solo" d cis( b a) g'( fis e) |
	fis( g a) a( g fis) e( fis d) |
%81
	cis( e d) cis( b a) g'( fis e) |
	fis( g a) a( g fis) e( fis d) |
	cis a cis cis a cis cis a cis |
	d fis, d' d fis, d' d fis, d' |
	d f, d' d f, d' d f, d' |
	d e, d' d e, d' d e, d' |
	cis e, cis' cis e, cis' cis e, cis' |
	d a'_"Tutti" g fis g e d e cis |
	b b' a g a fis e fis d} |
	cis4 r r |
%91
	R2.*8 |
	\tuplet 3/2 {r4 e8 a e d cis d e |
	cis a b cis d e fis g a |
%101
	e a, b cis d e fis g a |
	fis e d cis a d e, d' cis |
	d d, e fis e d a'4 a,8} |
	d2.\fermata
}

violaI = \relative c'' {
	\tupletSpan 4
	R2.*3 |
	a4 r a |
	d, r b' |
	e, r cis' |
	fis, r d' |
	cis a r |
	cis\p a r |
	cis\f a r |
%11
	a8 fis e fis e a |
	fis4 r r |
	R2.*7 |
	e4 r e |
%21
	a, r fis' |
	b, r gis' |
	cis, r a' |
	gis e r |
	gis\p e r |
	gis\f e r |
	e e fis8 e |
	e4 r r |
	R2.*7 |
	a4 r r |
	fis r r |
	e r r |
	d r r |
	e r r |
%41
	fis r r |
	e r r |
	e r r |
	e r r |
	e r r |
	d\p r r |
	cis r r |
	a r r |
	cis r r |
	d r r |
%51
	b r r |
	a r r |
	a r r |
	a r r |
	fis'\f fis fis |
	d d d |
	e e e |
	e e e |
	fis fis fis |
	fis fis fis |
%61
	gis4. gis8 a4 |
	b8 d gis,4. cis8 |
	a4 r r |
	R2.*24 |
	a4 r a |
	d, r b' |
	e, r r |
%91
	R2.*9 |
	cis'4 a r |
%101
	cis a r |
	a8 fis e fis e a |
	\tuplet 3/2 {e8 d e fis e d a'4 a,8} |
	d2.\fermata
}

violaII = \relative c' {
	\tupletSpan 4
	R2.*3 |
	fis4 r d |
	d r e |
	e r fis |
	fis r b |
	e,2 r4 |
	e2\p r4 |
	e2\f r4 |
%11
	a,4 a b8 a |
	a4 r r |
	R2.*7 |
	cis4 r a |
%21
	a r b |
	b r cis |
	cis r fis |
	b,2 r4 |
	b2\p r4 |
	b2\f r4 |
	cis4 b8 cis b e |
	cis4 r r |
	R2.*7 |
	e4 r r |
	d r r |
	cis r r |
	a r r |
	cis r r |
%41
	d r r |
	b r r |
	a r r |
	a r r |
	a' r r |
	fis\p r r |
	e r r |
	d r r |
	e r r |
	fis r r |
%51
	e r r |
	e r r |
	e r r |
	e r r |
	d\f a' a |
	b, b b |
	b b b |
	cis cis cis |
	cis cis cis |
	d d fis |
%61
	eis4. eis8 cis4 |
	d8 b' eis,4 cis |
	cis r r |
	R2.*24 |
	fis4 r d |
	d r e |
	e r r |
%91
	R2.*9 |
	e2 r4 |
%101
	e2 r4 |
	a,4 a b8 a |
	\tuplet 3/2 {a d e fis e d a'4 a,8} |
	d2.\fermata
}

cello = \relative c {
	\tupletSpan 4
	d2 g4 |
	fis2 d4 |
	e a, cis |
	d r fis |
	g r gis |
	a r ais |
	b r g |
	a a, r |
	a'\p a, r |
	a'\f a, r |
%11
	d16 e fis g a8 fis g a |
	d,2 g4 |
	fis2 d4 |
	e a, cis |
	d d' d, |
	e cis a |
	d d' d, |
	a' a, a' |
	b gis e |
	a, r cis |
%21
	d r dis |
	e r eis |
	fis r d |
	e e, r |
	e'\p e, r |
	e'\f e, r |
	a16 b cis d e8 cis d e |
	a,4 r r |
	a' fis d |
	g r r |
%31
	b gis e |
	a r r |
	cis ais fis |
	b r r |
	g gis e |
	a a, a |
	b b b |
	cis cis cis |
	d d d |
	a a a |
%41
	d d d |
	e e e |
	a, r r |
	a r r |
	a a\p a |
	b b b |
	cis cis cis |
	d d d |
	a a a |
	d d d |
%51
	e e e |
	a, r r |
	a r r |
	a r r |
	d'\f d, d' |
	g, g, r |
	gis' gis, gis' |
	a a, r |
	ais' ais, ais' |
	b b, b' |
%61
	eis,4. eis8 fis4 |
	b cis cis, |
	fis fis fis |
	b b b |
	e, e e |
	a a a |
	d, d d |
	g g gis |
	a fis d |
	g r e |
%71
	a r fis |
	b r g |
	cis, r a' |
	d, r d' |
	cis cis, cis' |
	b b, b' |
	a a, a' |
	g g, gis |
	a a' a |
	d d gis, |
%81
	a a a |
	d d gis, |
	a a g |
	fis fis fis |
	gis gis gis |
	a a a |
	a, a a |
	d r fis |
	g r gis |
	a a,2 ~|
%91
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a4 r r |
	a' a, r |
%101
	a' a, r |
	d16 e fis g a8 fis g a |
	\tuplet 3/2 {d, d e fis e d a'4 a,8} |
	d2.\fermata
}

bass = <<

\relative c {
	\tupletSpan 4
	d2 g4 |
	fis2 d4 |
	e a, cis |
	d r fis |
	g r gis |
	a r ais |
	b r g |
	a a, r |
	a'\p a, r |
	a'\f a, r |
%11
	d16 e fis g a8 fis g a |
	d,2 g4 |
	fis2 d4 |
	e a, cis |
	d d' d, |
	e cis a |
	d d' d, |
	a' a, a' |
	b gis e |
	a, r cis |
%21
	d r dis |
	e r eis |
	fis r d |
	e e, r |
	e'\p e, r |
	e'\f e, r |
	a16 b cis d e8 cis d e |
	a,4 r r |
	a' fis d |
	g r r |
%31
	b gis e |
	a r r |
	cis ais fis |
	b r r |
	g gis e |
	a a, a |
	b b b |
	cis cis cis |
	d d d |
	a a a |
%41
	d d d |
	e e e |
	a, r r |
	a r r |
	a a\p a |
	b b b |
	cis cis cis |
	d d d |
	a a a |
	d d d |
%51
	e e e |
	a, r r |
	a r r |
	a r r |
	d'\f d, d' |
	g, g, r |
	gis' gis, gis' |
	a a, r |
	ais' ais, ais' |
	b b, b' |
%61
	eis,4. eis8 fis4 |
	b cis cis, |
	fis fis fis |
	b b b |
	e, e e |
	a a a |
	d, d d |
	g g gis |
	a fis d |
	g r e |
%71
	a r fis |
	b r g |
	cis, r a' |
	d, r d' |
	cis cis, cis' |
	b b, b' |
	a a, a' |
	g g, gis |
	a a' a |
	d d gis, |
%81
	a a a |
	d d gis, |
	a a g |
	fis fis fis |
	gis gis gis |
	a a a |
	a, a a |
	d r fis |
	g r gis |
	a a,2 ~|
%91
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a2. ~|
	a4 r r |
	a' a, r |
%101
	a' a, r |
	d16 e fis g a8 fis g a |
	\tuplet 3/2 {d, d e fis e d a'4 a,8} |
	d,2.\fermata
}

\figuremode {
	s2. |
	<6>2 s4 |
	s <7> <6 5> |
	s2 <6>4 |
	s2 <6>4 |
	s2 <6>4 |
	s2. |
	<7>4 s2 |
	<7>4 s2 |
	<7>4 s2 |
	s4 s8 <6> <6 5> s |
	s2. |
	<6>2 s4 |
	<7> <7> <6 5> |
	s2. |
	<7>4 <5> <7> |
	s1*6/4 |
	s4 <5> <7_+> |
	s2. |
	s2 <6>4 |
	<_+> s <6 5> |
	s2. |
	<7_+>4 s2 |
	<7_+>4 s2 |
	<7_+>4 s2 |
	s4 s8 <6> <6 5> <_+> |
	s2. |
	<_->4 <6> <7!> |
	s2. |
	s4 <6> <7_+> |
	s2. |
	s4 <6> <7_+> |
	s2. |
	<6>4 s <7_+> |
	s2. |
	<7>4 s s |
	<6> s s |
	<5> s s |
	s2. |
	<6 5>4 s s |
	<_+> s s |
	s1*9/4 |
	<7>4 s s |
	<6> s s |
	<5> s s |
	s2. |
	<6 5>4 s s |
	<_+> s s |
	s1*12/4 |
	<5>4 s s |
	<6> s s |
	s2. |
	<6>4 s s |
	s2. |
	<7 5>4. s8 s4 |
	<6\\ 5> <5\+ 4> <_+> |
	s s <7_+> |
	<7_+> s s |
	s s <7_+> |
	<7!> s s |
	s s <7!> |
	s s <6 5> |
	s <6> s |
	s s <_+> |
	s s <_+> |
	s2. |
	<5>4 s <7> |
	s s <6> |
	<7> s <6> |
	<7> s <6> |
	<7> s <6> |
	<7> s <6 5> |
	s s <7> |
	s s <6 5> |
	s s <7> |
	s s <6 5> |
	s s <4 2> |
	<6> s s |
	<7! 5> s s |
	<5 4> s s |
	<3> s s |
	s s <6> |
	s s <6 5> |
	s1*36/4 |
	s4 s8 <6> <6 5> s |
	\bassFigureStaffAlignmentDown
	s2 \tuplet 3/2 {<5 4>4 <3>8} |
	s2.
}
>>
