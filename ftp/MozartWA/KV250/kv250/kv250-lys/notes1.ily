\version "2.18.0"

global = {\tempo "Allegro maestoso" s1*21 \mark A s1*14
	\time 2/2 \tempo "Allegro molto" \repeat volta 2 {s1*37 \mark B s1*30 \mark C s1*24}
	s1*32 \mark D s1*14 \mark E s1*39 \mark F s1*22 \mark G s1*31 \mark H s1*20 \bar "||"
	}
midiTempo = 120

oboeI = <<\global \relative c' { \key d \major
	d2\f r4 r8 a'32( g fis e) |
	d2 r4 r8 a'32( g fis e) |
	d2 r |
	r4 d'-.\p d-. d-. |
	d4. e8 fis4 r |
	d,2\f r |
	r4 fis'-.\p fis-. fis-. |
	fis4. g8 a4 r |
	d\f r r2 |
	R1 |
	b1\f ~|
	b |
	a4 r r2 |
	R1 |
	g1\f ~|
	g |
	fis4 r8. d16 g4 g |
	fis r8. d16 b'4 b |
	a r8. d,16 g4 g |
	fis r8. d16 b'4 b |
	c r r2\fermata |
%A
	R1*2 |
	d1\f ~|
	d |
	cis4 r r2 |
	r4 g(\p fis d) |
	cis\f r r2 |
	r4 g'(\p fis d') |
	cis\f r r2 |
	r4 g(\p fis d) |
	cis4 r r2 |
	g'1 |
	cis2\f ~ cis4 r |
	R1\fermataMarkup |
%B
\repeat volta 2 {
	d4\f r8 d,, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2 a' |
	b g4 e |
	g, g'2 a,4 |
	d r8 fis g e cis a |
	d2 a' |
	b g4 e |
	g, g'2 a,4 |
	d r8 fis g e cis a |
	d4 a'2 g4 |
	fis r8 fis g e cis a |
	d4 d-.\p d-. d-. |
	d4. e8 fis4 r |
	r fis-.\p fis-. fis-. |
	fis4. g8 a4 r |
	a\f r r2 |
	a4 r r2 |
	d1 ~|
	d2 gis, |
	a1 ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a |
	b |
	c2 cis |
	d d,4. e8 |
	f2 a |
	gis4 r e-. e-. |
	d'2 cis |
	b4 r e,-. e-. |
	d'2 cis |
	b4 r r2 |
%C
	R1*11 |
	e,1\p |
	d |
	cis |
	b |
	a4 r8 a\f d4 d |
	cis r8 a fis'4 fis |
	e r8 a, d4 d |
	cis r8 a fis'4 fis |
	e r8 e fis4 gis\trill |
	a r8 gis a4 b\trill |
	cis r8 d, cis4 b\trill |
	a r r2 |
	R1*3 |
	r2 gis'\f |
	a b |
	cis1 |
	b |
	
	a4 r8 e fis4 gis\trill |
	a r8 gis a4 b\trill |
	cis r8 d, cis4 b\trill |
	a r r2 |
	R1*3 |
	r2 gis'\f |
	a b |
	cis1 |
	b |
	cis |
	b |
	a4 r r2 |
	r4 e fis gis |
	a r r2 |
	r4 e fis gis |
	a r r2 |
	r4 a,-.\p a-. a-. |
	a4. b8 cis4 r |
	r cis-.\p cis-. cis-. |
	cis4. d8 e4 r |
	r e-.\p e( fis) |
	g( a) b( cis) |
}
	d1\f ~|
	d ~|
	d |
	R1 |
	c1\f ~|
	c ~|
	c |
	R1 |
	c1\f ~|
	c ~|
	c |
	R1 |
	b1\f ~|
	b ~|
	b |
	R1 |
	d1\f ~|
	d ~|
	d |
	R1 |
	c1\f ~|
	c ~|
	c |
	R1 |
	b1 ~|
	b ~|
	b |
	R1 |
	bes1 ~|
	bes ~|
	bes |
	R1 |
%D
	g4 r r2 |
	R1*3 |
	r2 e\f ~|
	e e4 e |
	a2 a |
	d gis, |
	a4 r r2 |
	R1 |
	g!8.(\f e16) cis4-. r2 |
	R1 |
	b'8.(\f g16) e4-. r2 |
	R1 |
%E
	d'4\f r8 d,, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2 a' |
	b g4 e |
	g, g'2 a,4 |
	d r8 fis g e cis a |
	d2 a' |
	b g4 e |
	g, g'2 a,4 |
	d r8 fis g e cis a |
	d4 a'2 g4 |
	fis r8 fis g e cis a |
	d4 d-.\p d-. d-. |
	d4. e8 fis4 r |
	r fis-.\p fis-. fis-. |
	fis4. g8 a4 r |
	fis\f r r2 |
	fis4 r r2 |
	g4 r r2 |
	gis4 r r2 |
	g!1 ~|
	g |
	fis2 d' ~|
	d1 ~|
	d ~|
	d ~|
	d ~|
	d ~|
	d2 e, |
	f fis |
	g4 b d2 ~|
	d1 |
	cis4 r a,-. a-. |
	g'2 fis |
	e4 r a,-. a-. |
	g'2 fis |
	e4 r r2 |
%F
	R1*11 |
	a1\p |
	g |
	fis |
	e |
	d4 r8 d\f g4 g |
	fis r8 d b'4 b |
	a r8 d, g4 g |
	fis r8 d b'4 b |
	a r8 cis, d4 e\trill |
	fis r8 e fis4 g\trill |
	a r8 a g4 e\trill |
%G
	d r r2 |
	R1*3 |
	r2 e\f |
	fis g |
	fis1 |
	e |
	d4 r8 cis d4 e\trill |
	fis r8 e fis4 g\trill |
	a r8 a g4 e\trill |
	d r r2 |
	R1*3 |
	r2 cis'\f |
	d g, |
	fis1 |
	e |
	d' ~|
	d2 cis |
	d4 r r2 |
	r4 d b cis |
	d r r2 |
	r4 d b cis |
	d r r2 |
	r4 d,-.\p d-. d-. |
	d4. e8 fis4 r |
	d,\f r r2 |
	r4 fis'-.\p fis-. fis-. |
	fis4. g8 a4 r |
%H
	d\f r8 d,, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d' cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1_\GP |
	cis'4-. r d-. r |
	R1_\GP |
	b1 |
	cis, |
	d |
	fis |
	a |
	d ~|
	d4 r r2 |
	r r4 r8 a,32( g fis e) |
	d2 r |
}>>

oboeII = <<\global \relative c' { \key d \major
	d2\f r4 r8 a'32( g fis e) |
	d2 r4 r8 a'32( g fis e) |
	d2 r |
	r4 a'-.\p a-. a-. |
	a4. cis8 d4 r |
	d,2\f r |
	r4 d'-.\p d-. d-. |
	d4. e8 fis4 r |
	fis\f r r2 |
	R1 |
	g1\f ~|
	g |
	fis4 r r2 |
	R1 |
	cis1\f ~|
	cis |
	d4 r8. d16 g4 g |
	fis r8. d16 b'4 b |
	a r8. d,16 g4 g |
	fis r8. d16 b'4 b |
	a r r2\fermata |
%A
	R1*2 |
	f1\f ~|
	f |
	e4 r r2 |
	r4 e(\p d a) |
	a\f r r2 |
	r4 e'(\p d fis) |
	e\f r r2 |
	r4 e(\p d a) |
	g r r2 |
	e'1 |
	g2\f ~ g4 r |
	R1\fermataMarkup |
%B
\repeat volta 2 {
	fis4\f r8 d, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d1 ~|
	d2 b4 g |
	e e'2 a,4 |
	d r8 fis g e cis a |
	d1 ~|
	d2 b4 g |
	e e'2 a,4 |
	d r8 fis g e cis a |
	d4 a2 e'4 |
	d r8 fis g e cis a |
	d4 a-.\p a-. a-. |
	a4. cis8 d4 r |
	r d-.\p d-. d-. |
	d4. e8 fis4 r |
	a,\f r r2 |
	a4 r r2 |
	gis'1 ~|
	gis2 d |
	cis1 ~|
	cis |
	d ~|
	d2. dis4 |
	e1 ~|
	e2. eis4 |
	fis1 |
	e2 g |
	a1 ~|
	a2 dis, |
	e4 r e-. e-. |
	b'2 a |
	gis4 r e-. e-. |
	b'2 a |
	gis4 r r2 |
%C
	R1*11 |
	cis,1\p |
	b |
	a ~|
	a2( gis) |
	a4 r8 a\f d4 d |
	cis r8 a fis'4 fis |
	e r8 a, d4 d |
	cis r8 a fis'4 fis |
	e r8 e d4 b\trill |
	a r8 b a4 e' |
	e r8 b a4 gis\trill |
	a r r2 |
	R1*3 |
	r2 d\f |
	cis gis |
	a a' ~|
	a( gis) |
	
	a4 r8 e d4 b\trill |
	a r8 b a4 e' |
	e r8 b a4 gis\trill |
	a r r2 |
	R1*3 |
	r2 d\f |
	cis gis |
	a a' ~|
	a gis |
	a1 ~|
	a2 gis |
	a4 r r2 |
	r4 cis, d b |
	cis r r2 |
	r4 cis d b |
	cis r r2 |
	r4 a-.\p a-. a-. |
	a4. gis8 a4 r |
	r a-.\p a-. a-. |
	a4. b8 cis4 r |
	r cis-.\p cis( d) |
	e( fis) g2 |
}
	fis1\f ~|
	fis ~|
	fis |
	R1 |
	dis1\f ~|
	dis ~|
	dis |
	R1 |
	a'1\f ~|
	a ~|
	a |
	R1 |
	gis1\f ~|
	gis ~|
	gis |
	R1 |
	b1\f ~|
	b ~|
	b |
	R1 |
	fis\f ~|
	fis ~|
	fis |
	R1 |
	g1 ~|
	g ~|
	g |
	R1 |
	g1 ~|
	g ~|
	g |
	R1 |
%D
	e4 r r2 |
	R1*3 |
	r2 cis2\f ~|
	cis cis4 cis |
	d2 g |
	f d |
	cis4 r r2 |
	R1 |
	g'8.(\f e16) cis4-. r2 |
	R1 |
	b'8.(\f g16) e4-. r2 |
	R1 |
%E
	fis4\f r8 d, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d1 ~|
	d2 b4 g |
	e e'2 a,4 |
	d r8 fis g e cis a |
	d1 ~|
	d2 b4 g |
	e e'2 a,4 |
	d r8 fis g e cis a |
	d4 a2 e'4 |
	d r8 fis g e cis a |
	d4 a-.\p a-. a-. |
	a4. cis8 d4 r |
	r d-.\p d-. d-. |
	d4. e8 fis4 r |
	a,\f r r2 |
	a4 r r2 |
	b4 r r2 |
	d4 r r2 |
	cis1 ~|
	cis |
	d2 fis ~|
	fis1 |
	g ~|
	g2. gis4 |
	a1 ~|
	a2. ais4 |
	b2 b, |
	a c |
	d g4. fis8 |
	g2 gis |
	a4 r a,-. a-. |
	e'2 d |
	cis4 r a-. a-. |
	e'2 d |
	cis4 r r2 |
%F
	R1*11 |
	fis1\p |
	e |
	d ~|
	d2( cis) |
	d4 r8 d\f g4 g |
	fis r8 d b'4 b |
	a r8 d, g4 g |
	fis r8 d b'4 b |
	a r8 e, a4 a |
	a r8 g fis4 e\trill |
	d r8 a' b4 cis\trill |
%G
	d4 r r2 |
	R1*3 |
	r2 cis\f |
	d cis |
	d1 ~|
	d2( cis) |
	d4 r8 e, a4 a |
	a r8 g fis4 e\trill |
	d r8 a' b4 cis\trill |
	d r r2 |
	R1*3 |
	r2 g2\f |
	fis cis |
	d1 ~|
	d2 cis |
	fis1 |
	e |
	fis4 r r2 |
	r4 fis g e |
	fis r r2 |
	r4 fis g e |
	fis r r2 |
	r4 a,-.\p a-. a-. |
	a4. cis8 d4 r |
	d,\f r r2 |
	r4 d'-.\p d-. d-. |
	d4. e8 fis4 r |
%H
	fis\f r8 d, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d' cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1 |
	g'4-. r fis-. r |
	R1 |
	d1 |
	g, |
	fis |
	a |
	fis' ~|
	fis ~|
	fis4 r r2 |
	r2 r4 r8 a,32( g fis e) |
	d2 r |
}>>

fagotti = \relative c { \key d \major
	d2\f r4 r8 a'32( g fis e) |
	d2 r4 r8 a'32( g fis e) |
	d2 r |
	R1*2 |
	d2\f r |
	R1*2 |
	d4\f r r2 |
	R1 |
	d2:8 d: |
	d: d: |
	d4 r r2 |
	R1 |
	a'2: a: |
	a: a: |
	d,8 d' cis d b d cis d |
	a d cis d g d cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis,4 r r2\fermata |
%A
	R1*2 |
	gis2:\f b: |
	d: gis,: |
	a4 r r2 |
	r4 cis,(\p d fis) |
	a\f r r2 |
	r4 cis(\p d fis,) |
	a\f r r2 |
	r4 cis,(\p d fis) |
	a( bes a bes) |
	a( bes a bes) |
	a2\f ~ a4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	d,4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2: fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4\f r r2 |
	R1 |
	fis4\f r r2 |
	f4 r r2 |
	e8 e f f e e f f |
	e2: e: |
	a,8-. cis-. e-. gis-. a4-. r |
	R1 |
	b,8-. d-. fis-. ais-. b4-. r |
	R1 |
	cis,8-. e-. a-. bis-. cis4-. r |
	R1 |
	d2: dis: |
	e: e: |
	fis: fis: |
	f: f: |
	e4 e4. e,8-. gis-. b-. |
	gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e' dis' e dis e e, gis b |
	gis e fis gis a e cis a |
	e'4 e' r2 |
%B
	R1 |
	r4 cis(\p b a) |
	r a( gis fis) |
	e( fis) d( e) |
	a, r cis' r |
	b r e, r |
	a r cis, r |
	d r e r |
	a, r a' r |
	b r e, r |
	fis r cis r |
	d r e r |
	a,8\f a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, e a cis d b e d |
	cis b a d cis a gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 e,8\f e' e e |
	e2: e: |
	a, b cis eis, fis gis a cis, |
	d2: e: |
%C
	a8 b cis a d b e d |
	cis b a d cis a gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 e,8\f e' e e |
	e2: e: |
	a,8 b cis eis, fis gis a cis, |
	d2: e: |
	a8 b cis eis, fis gis a cis, |
	d d dis dis e2: |
	a4 r a,8 b16 cis d e fis gis |
	a4 a d, e |
	a, r a8 b16 cis d e fis gis |
	a4 a d, e |
	a, r r2 |
	R1*2 |
	a'4\f r r2 |
	R1 |
	a4\f r r2 |
	R1 |
}
	s1*20 |
	r4 a16(\f g fis e d4) r |
	r c'16( b a g fis4) r |
	R1 |
	d'4 d8 d d4 d |
	d d,16( c b a g4) r |
	r d''16( c b a g4) r |
	R1 |
	d'4 d8 d d4 d |
	d d,16( c bes a g4) r |
	r d''16( c bes a g4) r |
	R1 |
	d'4 d8 d d4 d |
%D
	cis4 r r2 |
	R1 |
	d4\p r r2 |
	R1 |
	e4 r a,8(\f bes a gis) |
	a( bes a gis) g( f g e) |
	f( g f d) e( d e cis) |
	d( e d cis) d( c d bes) |
	a4 r a(\p b) |
	cis( d e fis) |
	g8.(\f e16) cis4-. cis(\p d) |
	e( fis g a) |
	b8.(\f g16) e4-. r2 |
	R1 |
%E
	d4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2: fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4\f r r2 |
	R1 |
	d'4\f r r2 |
	c4 r r2 |
	b4 r r2 |
	bes4 r r2 |
	a8 a bes bes a a bes bes |
	a2: a: |
	d,8-. fis-. a-. cis-. d4-. r |
	R1 |
	e,8-. g-. b-. dis-. e4-. r |
	R1 |
	fis,8-. a-. d-. eis-. fis4-. r |
	R1 |
	g,2: gis: |
	a: a: |
	b: b: |
	bes: bes: |
	a4 a4. a,8-. cis-. e-. |
	cis-. a-. b-. cis-. d-. fis-. a-. d-. |
	a gis a gis a a cis e |
	cis a b cis d a fis d |
	a'4 a, r2 |
%F
	R1*4 |
	r4 fis''(\p e d) |
	r d( cis b) |
	a( b) g( a) |
	d, r fis' r |
	e r a, r |
	d r fis, r |
	g r a r |
	d, r d' r |
	e r a, r |
	b r fis r |
	g r a r |
	d,8\f d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, e d g fis d cis a |
	d fis a cis d a e' a, |
	fis' d a fis g e a g |
%G
	fis4 r r2 |
	R1*3 |
	r2 a2:\f |
	a: a: |
	d8 e fis ais, b cis d fis, |
	g2: a: |
	d,8 e fis g fis d cis a |
	d fis a cis d a e' a, |
	fis' d a fis g e a g |
	fis4 r r2 |
	R1*3 |
	r2 a2:\f |
	a: a: |
	d8 e fis ais, b cis d fis, |
	g2: a: |
	d8 e fis ais, b cis d fis, |
	g g gis gis a2: |
	d,4 r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r r2 |
	R1*2 |
	d4\f r r2 |
	R1*2 |
%H
	d4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1 |
	a'4-. r b-. r |
	R1 |
	g2: g: |
	a: a: |
	d,4 r r d' |
	a fis a fis |
	d2 r4 d'4 |
	a fis a fis |
	d r r2 |
	r r4 r8 a'32( g fis e) |
	d2 r |
}

fagottoI = <<\global \fagotti \relative c { \clef "bass"
	s1*21 s1*14
	\repeat volta 2 {s1*37 s1*30 s1*24}
%127
	d1 ~|
	d ~|
	d |
	R1 |
	dis1 ~|
	dis ~|
	dis |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	f1 ~|
	f ~|
	f |
	R1 |
	fis1 ~|
	fis ~|
	fis |
	R1 |
}>>

fagottoII = <<\global \fagotti \relative c, { \clef "bass"
	s1*21 s1*14
	\repeat volta 2 {s1*37 s1*30 s1*24}
%127
	d1 ~|
	d ~|
	d |
	R1 |
	dis1 ~|
	dis ~|
	dis |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	f1 ~|
	f ~|
	f |
	R1 |
	fis1 ~|
	fis ~|
	fis |
	R1 |
}>>

cornodI = <<\global \relative c'' {
	c2\f r |
	c r |
	c r |
	r4 c\p c c |
	c4. d8 e4 r |
	c2\f r |
	r4 e\p e e |
	e4. f8 g4 r |
	e\f r r2 |
	R1 |
	c1 ~|
	c ~|
	c4 r r2 |
	R1 |
	d1 ~|
	d1 |
	c1 ~|
	c ~|
	c4 r8. c16 c4 c |
	c r8. c16 c4 c |
	c4 r r2\fermata |
%A
	R1*2 |
	c1 ~|
	c |
	g4 r r2 |
	r4 d'\p e2 |
	d4\f r r2 |
	r4 d\p e2 |
	d4\f r r2 |
	r4 d\p e2 |
	f4 r r2 |
	R1 |
	d2\f ~ d4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c2 d4 d |
	d2 d4 g, |
	c c d d |
	e2 c ~|
	c d4 d |
	d2 d4 g, |
	c c8 c d4 d |
	e2 d4 d |
	e e8 e d4 d |
	c4 c\p c c |
	c4. d8 e4 r |
	r e e e |
	e4. f8 g4 r |
	c,\f r r2 |
	c4 r r2 |
	R1 |
	d1 |
	d4 d8 d d4 r |
	g1 |
	c,4 c8 c c4 r |
	g'1 |
	d4 d8 d d4 r |
	g1 |
	e |
	d2 f |
	c4 e g2 ~|
	g g |
	d4 r r2 |
	d2 d |
	d4 r r2 |
	d2 d |
	d4 r r2 |
%B
	R1*11 |
	r4 d\p r d |
	r d r d |
	r g, r d' |
	r e r d |
	g,1\f ~|
	g ~|
	g4 r8 g g4 g |
	g4 r8 g g4 g |
	g r8 d' e4 d |
	d r8 d d4 d |
	d r8 d d4 d |
	d r r2 |
	R1*3 |
	r2 d4 d8 d |
	d4 d8 d d4 d8 d |
	d2 e ~|
	e d |
%C
	d4 r8 d8 e4 d |
	d r8 d d4 d |
	d4 r8 d d4 d |
	d4 r r2 |
	R1*3 |
	r2 d4 d8 d |
	d4 d8 d d4 d8 d |
	d2 e ~|
	e2 d |
	d e ~|
	e d |
	d4 r r2 |
	r4 d e d |
	d r r2 |
	r4 d e d |
	d r r2 |
	r4 d\p d d |
	d4. d8 d4 r |
	r d d d |
	d4. e8 d4 r |
	r d d( e) |
	f( g) f( d) |
}
	c1\f ~|
	c ~|
	c |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	d1 ~|
	d ~|
	d |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c ~|
	c |
	c |
	R1 |
%D
	d4 r r2 |
	R1*3 |
	r2 d ~|
	d d4 d |
	c2 f |
	c c |
	d4 r r2 |
	R1*3 |
	r2 g,2\p ~|
	g1 |
%E
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c2 d4 d |
	d2 d4 g, |
	c c d d |
	e2 c ~|
	c d4 d |
	d2 d4 g, |
	c c8 c d4 d |
	e2 d4 d |
	e e8 e d4 d |
	c c\p c c |
	c4. d8 e4 r |
	r4 e e e |
	e4. f8 g4 r |
	c,\f r r2 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	f1 ~|
	f2 d4 f |
	e c8 c c4 r |
	c1 |
	f4 f8 f f4 r |
	c1 |
	g'4 g8 g g4 r |
	c,1 ~|
	c ~|
	c ~|
	c ~|
	c |
	d4 r r2 |
	d e |
	d4 r r2 |
	d e |
	d4 r r2 |
%F
	R1*11 |
	r4 c\p r g |
	r g r d' |
	r e r e |
	r d r d |
	c1\f ~|
	c ~|
	c4 r8 c c4 c |
	c r8 c c4 c |
	c r8 d e4 d |
	c r8 d e4 f |
	g r8 g f4 d |
%G
	c r r2 |
	R1*3 |
	r2 g4 g8 g |
	g4 g8 g g4 g8 g |
	c2 e |
	d1 |
	c4 r8 d e4 d |
	c r8 d e4 f |
	g r8 g f4 d |
	c r r2 |
	R1*3 |
	r2 g4 g8 g |
	g4 g8 g g4 g8 g |
	c2 e |
	d1 |
	e2 e4 e |
	d2 d4 d |
	c r r2 |
	r4 e f d |
	e r r2 |
	r4 e f d |
	e r r2 |
	r4 c\p c c |
	c4. d8 e4 r c\f r r2 |
	r4 e e e |
	e4. f8 g4 r |
%H
	c,\f r r2 |
	R1 |
	c4 r r2 |
	R1*2 |
	g'1 |
	c, |
	c, |
	R1 |
	d'4-. r e-. r |
	R1 |
	f4 f f2 |
	d4 d d2 |
	c4 r r c |
	g e g e |
	c2 r4 c' |
	g e g e |
	c r r2 |
	R1 |
	c'2 r |
}>>

cornodII = <<\global \relative c' {
	c2\f r |
	c r |
	c r |
	r4 e\p e e |
	e4. g8 c4 r |
	c,2\f r |
	r4 c'\p c c |
	c4. d8 e4 r |
	c\f r r2 |
	R1 |
	c,1 ~|
	c ~|
	c4 r r2 |
	R1 |
	g'1 ~|
	g1 |
	c,1 ~|
	c ~|
	c4 r8. c16 c4 c |
	c r8. c16 c4 c |
	c4 r r2\fermata |
%A
	R1*2 |
	c1 ~|
	c |
	g4 r r2 |
	r4 g'\p c2 |
	g4\f r r2 |
	r4 g\p c2 |
	g4\f r r2 |
	r4 g\p c2 |
	d4 r r2 |
	R1 |
	g,2\f ~ g4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	c,4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c2 c'4 c |
	g2 g4 g |
	e e g g |
	c2 c, ~|
	c c'4 c |
	g2 g4 g |
	e e8 e g4 g |
	c2 g4 g |
	c c8 c g4 g |
	e4 e\p e e |
	e4. g8 c4 r |
	r c c c |
	c4. d8 e4 r |
	c,\f r r2 |
	c4 r r2 |
	R1 |
	d'1 |
	g,4 g8 g g4 r |
	g1 |
	g4 g8 g g4 r |
	g1 |
	g4 g8 g g4 r |
	g1 |
	g1 ~|
	g1 |
	g ~|
	g2 g |
	d'4 r r2 |
	d2 g, |
	d'4 r r2 |
	d2 g, |
	d'4 r r2 |
%B
	R1*11 |
	r4 g,\p r g |
	r c r c |
	r e, r g |
	r c r d |
	g,1\f ~|
	g ~|
	g4 r8 g g4 g |
	g4 r8 g g4 g |
	g r8 g c4 d |
	g, r8 d' g,4 d' |
	g, r8 d' g,4 d' |
	g, r r2 |
	R1*3 |
	r2 d'4 d8 d |
	d4 d8 d d4 d8 d |
	g,1 |
	c2 d |
%C
	g,4 r8 g8 c4 d |
	g, r8 d' g,4 d' |
	g,4 r8 d' g,4 d' |
	g,4 r r2 |
	R1*3 |
	r2 d'4 d8 d |
	d4 d8 d d4 d8 d |
	g,1 |
	c2 d |
	g,1 ~|
	g2 d' |
	g,4 r r2 |
	r4 g c d |
	g, r r2 |
	r4 g c d |
	g,4 r r2 |
	r4 g\p g g |
	g4. g8 g4 r |
	r g g g |
	g4. c8 g4 r |
	r g g( c) |
	d( e) d( g,) |
}
	c,1\f ~|
	c ~|
	c |
	R1 |
	g'1 ~|
	g ~|
	g |
	R1 |
	d'1 ~|
	d ~|
	d |
	R1 |
	c,1 ~|
	c ~|
	c |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c ~|
	c |
	c |
	R1 |
%D
	g'4 r r2 |
	R1*3 |
	r2 g ~|
	g g4 g |
	g2 d' |
	c c, |
	g'4 r r2 |
	R1*3 |
	r2 g\p ~|
	g1 |
%E
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c2 c4 c |
	g2 g4 g |
	e e g g |
	c2 c, ~|
	c c'4 c |
	g2 g4 g |
	e e8 e g4 g |
	c2 g4 g |
	c4 c8 c g4 g |
	e e\p e e |
	e4. g8 c4 r |
	r4 c c c |
	c4. d8 e4 r |
	c,\f r r2 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	d'1 ~|
	d2 g,4 d' |
	c c,8 c c4 r |
	c1 |
	c4 c8 c c4 r |
	c1 |
	c4 c8 c c4 r |
	c1 ~|
	c ~|
	c ~|
	c ~|
	c |
	g'4 r r2 |
	g c |
	g4 r r2 |
	g c |
	g4 r r2 |
%F
	R1*11 |
	r4 g\p r c, |
	r g r g' |
	r c r c |
	r c r g |
	c,1\f ~|
	c ~|
	c4 r8 c c4 c |
	c r8 c c4 c |
	c r8 g' c4 g |
	e r8 g c4 d |
	e r8 e d4 g, |
%G
	e r r2 |
	R1*3 |
	r2 g4 g8 g |
	g4 g8 g g4 g8 g |
	e2 c' ~|
	c g |
	e4 r8 g c4 g |
	e r8 g c4 d |
	e r8 e d4 g, |
	e r r2 |
	R1*3 |
	r2 g4 g8 g |
	g4 g8 g g4 g8 g |
	e2 c' ~|
	c g |
	c2 c4 c |
	c2 g4 g |
	c, r r2 |
	r4 c' c g |
	c r r2 |
	r4 c c g |
	c r r2 |
	r4 e,\p e e |
	e4. g8 c4 r |
	c,\f r r2 |
	r4 c'\p c c |
	c4. d8 e4 r |
%H
	c,\f r r2 |
	R1 |
	c4 r r2 |
	R1*2 |
	g'1 |
	c |
	c, |
	R1 |
	g'4-. r c-. r |
	R1 |
	d4 d d2 |
	g,4 g g2 |
	e4 r r c' |
	g e g e |
	c2 r4 c' |
	g e g e |
	c r r2 |
	R1 |
	c'2 r |
}>>

trombeI = <<\global \relative c' {
	c2\f r |
	c r |
	c r |
	R1*2 |
	c2 r |
	R1*2 |
	c'4 r r2 |
	R1 |
	c1 ~|
	c ~|
	c4 r r2 |
	R1 |
	g1 ~|
	g1 |
	c1 ~|
	c ~|
	c4 r r c |
	c r r c |
	c4 r r2\fermata |
%A
	R1*2 |
	c1 ~|
	c |
	g4 r r2 |
	R1 |
	g4 r r2 |
	R1 |
	g4 r r2 |
	R1*2 |
	R1 |
	g2\f ~ g4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c4 r r2 |
	g4 r r g |
	c c d d |
	e r r2 |
	c4 r r2 |
	g4 r r g |
	c c8 c d4 d |
	e r r d |
	e e8 e d4 d |
	c4 r r r |
	R1 |
	c,4 r r2 |
	R1 |
	c'4 r r2 |
	c4 r r2 |
	R1 |
	d1 |
	g,4 g8 g g4 r |
	R1 |
	g4 g8 g g4 r |
	R1 |
	g4 g8 g g4 r |
	R1 |
	g1 ~|
	g1 ~|
	g ~|
	g |
	d'4 r r2 |
	d1 ~|
	d4 r r2 |
	d1 ~|
	d4 r r2 |
%B
	R1*15 |
	g,1 ~|
	g ~|
	g4 r8 g g4 g |
	g r r g |
	g r r2 |
	R1*6 |
	r2 d'2 ~|
	d1 |
	d2 e ~|
	e d |
%C
	g,4 r r2 |
	R1*6 |
	r2 d'2 ~|
	d1 |
	d2 e ~|
	e2 d |
	d e ~|
	e d |
	d4 r r2 |
	r4 d e d |
	d r r2 |
	r4 d e d |
	d4 r r2 |
	R1*2 |
	g,4 r r2 |
	R1 |
	g4 r r2 |
	R1 |
}
	c1\f ~|
	c ~|
	c |
	R1 |
	g1 ~|
	g ~|
	g |
	R1 |
	d'1 ~|
	d ~|
	d |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	e,1 ~|
	e ~|
	e |
	R1 |
	g1 ~|
	g ~|
	g |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c ~|
	c |
	c |
	R1 |
%D
	g4 r r2 |
	R1*3 |
	r2 g ~|
	g g ~|
	g g |
	c1 |
	g4 r r2 |
	R1*3 |
	r2 g2\p ~|
	g1 |
%E
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c4 r r2 |
	c4 r r2 |
	g4 r r g |
	c c d d |
	e4 r r2 |
	c4 r r2 |
	g4 r r g |
	c c8 c d4 d |
	e2 d4 d |
	e e8 e d4 d |
	c r r2 |
	R1 |
	c,4 r r2 |
	R1 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	R1 |
	d'1 |
	c4 c8 c c4 r |
	R1 |
	c4 c8 c c4 r |
	R1 |
	c4 c8 c c4 r |
	R1 |
	c ~|
	c ~|
	c ~|
	c |
	g4 r r2 |
	g1 ~|
	g4 r r2 |
	g1 ~|
	g4 r r2 |
%F
	R1*15 |
	c1 ~|
	c ~|
	c4 r r c |
	c r r c |
	c r r2 |
	c4 r r2 |
	e4 r r d |
%G
	c r r2 |
	R1*3 |
	r2 g2 ~|
	g1 |
	c2 e |
	d1 |
	c4 r r2 |
	c4 r r2 |
	e4 r r d |
	c r r2 |
	R1*3 |
	r2 g2 ~|
	g1 |
	c2 e |
	d1 |
	e1 |
	d |
	c4 r r2 |
	r4 c c d |
	c r r2 |
	r4 c c d |
	c4 r r2 |
	R1*2 |
	c,4 r r2 |
	R1*2 |
%H
	c'4 r r2 |
	R1 |
	c4 r r2 |
	R1*2 |
	g'1 |
	c, |
	c, |
	R1 |
	d'4-. r c-. r |
	R1 |
	d1 |
	d1 |
	c4 r r c |
	g e g e |
	c2 r4 c' |
	g e g e |
	c r r2 |
	R1 |
	c'2 r |
}>>

trombeII = <<\global \relative c' {
	c2\f r |
	c r |
	c r |
	R1*2 |
	c2 r |
	R1*2 |
	c4 r r2 |
	R1 |
	c1 ~|
	c ~|
	c4 r r2 |
	R1 |
	g'1 ~|
	g1 |
	c,1 ~|
	c ~|
	c4 r r c |
	c r r c |
	c4 r r2\fermata |
%A
	R1*2 |
	c1 ~|
	c |
	g'4 r r2 |
	R1 |
	g4 r r2 |
	R1 |
	g4 r r2 |
	R1*2 |
	R1 |
	g,2\f ~ g4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c1 ~|
	c4 r r2 |
	g'4 r r g |
	e e g g |
	c r r2 |
	c,4 r r2 |
	g'4 r r g |
	e e8 e g4 g |
	c r r g |
	c c8 c g4 g |
	e4 r r r |
	R1 |
	c4 r r2 |
	R1 |
	c4 r r2 |
	c4 r r2 |
	R1 |
	d'1 |
	g,4 g8 g g4 r |
	R1 |
	g4 g8 g g4 r |
	R1 |
	g4 g8 g g4 r |
	R1 |
	g1 ~|
	g1 ~|
	g ~|
	g |
	d'4 r r2 |
	d1 ~|
	d4 r r2 |
	d1 ~|
	d4 r r2 |
%B
	R1*15 |
	g,1 ~|
	g ~|
	g4 r8 g g4 g |
	g r r g |
	g r r2 |
	R1*6 |
	r2 d'2 ~|
	d1 |
	g, |
	c2 d |
%C
	g,4 r r2 |
	R1*6 |
	r2 d'2 ~|
	d1 |
	g, |
	c2 d |
	g,2 g ~|
	g2 d' |
	g,4 r r2 |
	r4 g c d |
	g, r r2 |
	r4 g c d |
	g,4 r r2 |
	R1*2 |
	g,4 r r2 |
	R1 |
	g4 r r2 |
	R1 |
}
	c1\f ~|
	c ~|
	c |
	R1 |
	g'1 ~|
	g ~|
	g |
	R1 |
	g1 ~|
	g ~|
	g |
	R1 |
	c,1 ~|
	c ~|
	c |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	e1 ~|
	e ~|
	e |
	R1 |
	c1 ~|
	c ~|
	c |
	R1 |
	c ~|
	c |
	c |
	R1 |
%D
	g'4 r r2 |
	R1*3 |
	r2 g ~|
	g g ~|
	g g |
	c,1 |
	g'4 r r2 |
	R1*3 |
	r2 g2\p ~|
	g1 |
%E
	c4\f r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c4 r r2 |
	c4 r r2 |
	g4 r r g |
	e e g g |
	c4 r r2 |
	c4 r r2 |
	g4 r r g |
	e e8 e g4 g |
	c2 g4 g |
	c4 c8 c g4 g |
	e r r2 |
	R1 |
	c4 r r2 |
	R1 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	c4 r r2 |
	R1 |
	g'1 |
	e4 e8 e e4 r |
	R1 |
	c4 c8 c c4 r |
	R1 |
	c4 c8 c c4 r |
	R1 |
	c ~|
	c ~|
	c ~|
	c |
	g'4 r r2 |
	g1 ~|
	g4 r r2 |
	g1 ~|
	g4 r r2 |
%F
	R1*15 |
	c,1 ~|
	c ~|
	c4 r r c |
	c r r c |
	c r r2 |
	e4 r r2 |
	c'4 r r g |
%G
	c, r r2 |
	R1*3 |
	r2 g'2 ~|
	g1 |
	e2 c' ~|
	c g |
	e4 r r2 |
	e4 r r2 |
	c'4 r r g |
	c, r r2 |
	R1*3 |
	r2 g'2 ~|
	g1 |
	e2 c' ~|
	c g |
	c1 ~|
	c2 g |
	e4 r r2 |
	r4 c c g' |
	e r r2 |
	r4 c c g' |
	e4 r r2 |
	R1*2 |
	c4 r r2 |
	R1*2 |
%H
	c4 r r2 |
	R1 |
	c4 r r2 |
	R1*2 |
	g'1 |
	c |
	c, |
	R1 |
	g'4-. r e-. r |
	R1 |
	c'1 |
	g1 |
	e4 r r c' |
	g e g e |
	c2 r4 c' |
	g e g e |
	c r r2 |
	R1 |
	c'2 r |
}>>

violinI = <<\global \relative c' { \key d \major
	<<d2 \\ d\f>> r4 r8 a'32( g fis e) |
	<<d2 \\ d>> r4 r8 a'32( g fis e) |
	\repeat unfold 2 {<<d2 \\ d>> r |
	R1*2} |
	<d d' d'>4 r8. d'16 \repeat unfold 6 {e( d) cis-. d-.} |
	<d, d' b'>4 b4:16 d: g: |
	b: d: g: b: |
	<a a, d,>4 r8. d,16 \repeat unfold 6 {e( d) cis-. d-.} |
	<a g'>4 a,4:16 cis: e: |
	a: cis: e: g: |
	fis r8. d16 g4 <g b, d,> |
	<fis a, d,> r8. d16 b'4 <b b, d,> |
	<a a, d,> r8. d,16 g4 <g b, d,> |
	<fis a, d,> r8. d16 b'4 <b d, d,> |
	<c d, d,> r r2\fermata |
%A
	b4.(\p ais8) b4.( ais8) |
	b-. ais-. b-. ais-. b-. cis-. d4-. |
	gis,,,2:16\f b: |
	d: gis,: |
	a4 r r2 |
	R1 |
	<e' cis' a'>4 r r2 |
	R1 |
	<a e' cis'>4 r r2 |
	R1 |
	cis8-.\p cis4( e8) d( cis) r e-. |
	d( cis) r e-. d( cis) r e-. |
	<g a,>2\f ~ g4. \tuplet 3/2 {fis16(\p e d} |
	cis8) r r4 r2\fermata |
\repeat volta 2 {
	<d, d' d'>4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d4. fis16 a d4 d |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d4. fis16 a d4 d' |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	<<d4 \\ d>> r r2 |
	R1 |
	<<d4 \\ d>> r r2 |
	R1 |
	\repeat unfold 2 {<d d' d'>4 r8 d' \appoggiatura {e32[ d cis]} d4 d8 d} |
	d' d4 d d d8 ~|
	d4 b gis d |
	cis r r8 a,-. cis-. e-. |
	a cis e gis \appoggiatura {b32[ a gis]} a4 a8 a |
	<d, d,>4 r r8 b,-. d-. fis-. |
	a d fis gis \appoggiatura {b32[ a gis]} a4 a8 a |
	<e a,>4 r r8 a,,-. cis-. e-. |
	a cis e gis \appoggiatura {b32[ a gis]} a4 a8 a |
	\appoggiatura {cis32[ b a]} b4 b8 b b4. b8 |
	\appoggiatura {d32[ c b]} c4 c8 c \appoggiatura {d32[ cis b]} cis4 cis8 cis |
	\appoggiatura {e32[ d cis]} d4 d8 d d4. cis8 |
	\appoggiatura {e32[ d cis]} d4 d8 d \appoggiatura {e32[ dis cis]} dis4 dis8 dis |
	e4 e,4. e,8-. gis-. b-. |
	gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e' dis' e dis e e, gis b |
	gis e fis gis a e cis a |
	e'4 e' r e-.\p |
%B
	a2( gis4) a-. |
	fis2( eis4) fis-. |
	d2( cis4) d-. |
	\appoggiatura cis16 b4 gis8-. b-. e,4 e'-. |
	a2( gis4) a-. |
	fis2( eis4) fis-. |
	d-. cis-. b2\trill |
	\repeat unfold 2 {a8-. b-. cis-. d-. e-. e-. e-. e-. |
	gis,-. a-. b-. cis-. d-. d-. d-. d-. |
	a-. b-. cis-. d-. e-. e-. e-. e-. |
	fis-. a-. gis-. fis-. e-. d-. cis-. b-.} |
	a4 r8 a\f d4 <d, d'> |
	<a e' cis'> r8 a' fis'4 <fis a, d,> |
	<e a,>8 a4 a a a8 ~|
	a a4 a a a8 |
	a4 r8 e fis4 gis\trill |
	a r8 gis a4 b\trill |
	cis r8 b cis4 d\trill |
	e4.( cis8) e4.( cis8) |
	e-.\p cis-. e-. cis-. e-. cis-. e-. cis-. |
	a-. fis-. a-. fis-. d'-. b-. d-. b-. |
	gis-. e-. gis-. e-. cis'-. a-. cis-. a-. |
	fis-. d-. fis-. d-. <gis b, e,>4\f r |
	<a cis, e,> r <b b, e,> r |
	<cis a,> r8 cis \appoggiatura {d32[ cis b]} cis4 cis8 cis |
	b4 r8 b \appoggiatura {cis32[ b a]} b4 b8 b |
%C
	a4 r8 e fis4 gis\trill |
	a r8 gis8 a4 b\trill |
	cis r8 b cis4 d\trill |
	e4.( cis8) e4.( cis8) |
	e-.\p cis-. e-. cis-. e-. cis-. e-. cis-. |
	a-. fis-. a-. fis-. d'-. b-. d-. b-. |
	gis-. e-. gis-. e-. cis'-. a-. cis-. a-. |
	fis-. d-. fis-. d-. <gis b, e,>4\f r |
	<a cis, e,> r <b b, e,> r |
	<cis a,> r8 cis \appoggiatura {d32[ cis b]} cis4 cis8 cis |
	b4 r8 b \appoggiatura {cis32[ b a]} b4 b8 b |
	cis4 r8 cis \appoggiatura {d32[ cis b]} cis4 cis8 cis |
	b4 r8 b \appoggiatura {cis32[ b a]} b4 b8 b |
	a4 r a,,8 b16 cis d e fis gis |
	a4 <e cis' a'> <d d' fis> <e b' gis'> |
	<e cis' a'> r a,8 b16 cis d e fis gis |
	a4 <e cis' a'> <d d' fis> <e b' gis'> |
	<e cis' a'> r r2 |
	R1*2 |
	<a cis e>4 r r2 |
	R1 <e cis' a'>4 r r2 |
	R1 |
}
	<d d' d'>4 a''16( g fis e d4) r |
	r a16( g fis e d4) r |
	r d'16( e fis g a4) r |
	a(\p fis) d( a) |
	c'\f a16( g fis e dis4) r |
	r a16( g fis e dis4) r |
	r dis'16( e fis g a4) r |
	a(\p fis) dis( c) |
	<e, c' a'>\f e'16( d! cis b a4) r |
	r e16( d c b a4) r |
	r a''16( b c d e4) r |
	a,(\p e) c( a) |
	<d, b' gis'>\f f'16( e d c b4) r r d,16( c b a gis4) r |
	r gis''16( a b c d4) r |
	b(\p gis) f( d) |
	<fis, d' b'>\f fis'16( e d cis b4) r |
	r fis16( e d cis b4) r |
	r d'16( fis gis ais b4) r |
	b(\p fis) d( b) |
	<d, a' c'>\f r r c'-. |
	fis-. a-. r fis-. |
	a-. c-. r d,-. |
	c' c8 c \appoggiatura d16 cis4 b8 cis |
	b4 r r b,-. |
	d-. g-. r d-. |
	g-. b-. r d,-. |
	b' b8 b \appoggiatura c16 b4 a8 b |
	bes4 r r d,-. |
	g-. bes-. r g-. |
	bes-. d-. r d,-. |
	bes'4 bes8 bes \appoggiatura c16 b4 a8 b |
%D
	a4 r a8(\p bes a gis) |
	a( bes a gis) d( f g e) |
	f4 r f8( g f e) |
	f( g f e) f( e f d) |
	cis4 r a8(\f bes a gis) |
	a( bes a gis) g( f g e) |
	f( g f d) e( d e cis) |
	d( e d cis) d( c d bes) |
	a4 r a(\p b!) |
	cis!( d e fis!) |
	g8.(\f e16) cis4-. cis(\p d) |
	e( fis g a) |
	b8.(\f g16) e4-. e'8-. e-. fis-. fis-. |
	g-. g-. a-. a-. b-. b-. cis-. cis-. |
%E
	<d d, d,>4\f r8 d,, e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d4. fis16 a d4 d |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d4. fis16 a d4 d' |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	<<d4 \\ d>> r r2 |
	R1 |
	<<d4 \\ d>> r r2 |
	R1 |
	\repeat unfold 4 {<d d' d'>4 r8 d' \appoggiatura {e32[ d cis]} d4 d8 d} |
	e e'4 e e e8 |
	e4 g, a, g' |
	fis r r8 d,-. fis-. a-. |
	d-. fis-. a-. cis-. \appoggiatura {e32[ d cis]} d4 d8 d |
	<g, d d,>4 r r8 e,-. g-. b-. |
	d-. g-. b-. cis-. \appoggiatura {e32[ d cis]} d4 d8 d |
	<a a, d,>4 r r8 d,,-. fis-. a-. |
	d-. fis-. a-. cis-. \appoggiatura {e32[ d cis]} d4 d8 d |
	\appoggiatura d16 e,4 e8 e e4. e8 |
	\appoggiatura {g32[ f e]} f4 f8 f \appoggiatura {g32[ fis e]} fis4 fis8 fis |
	\appoggiatura {a32[ g fis]} g4 g8 g g4. fis8 |
	\appoggiatura {a32[ g fis]} g4 g8 g \appoggiatura {a32[ gis fis]} gis4 gis8 gis |
	a4 a,4. a,8-. cis-. e-. |
	cis-. a-. b-. cis-. d-. fis-. a-. d-. |
	a gis' a gis a a, cis e |
	cis a b cis d a fis d |
	a'4 a' r a,\p |
%F
	d2( cis4) d-. |
	b2( ais4) b-. |
	g2( fis4) g-. |
	\appoggiatura fis16 e4 cis8-. e-. a,4 a''-. |
	d2( cis4) d-. |
	b2( ais4) b-. |
	g-. fis-. e2\trill |
	d8-. e-. fis-. g-. a-. a-. a-. a-. |
	cis,-. d-. e-. fis-. g-. g-. g-. g-. |
	d-. e-. fis-. g-. a-. a-. a-. a-. |
	b-. d-. cis-. b-. a-. g-. fis-. e-. |
	d-. e-. fis-. g-. a-. a-. a-. a-. |
	cis,-. d-. e-. fis-. g-. g-. g-. g-. |
	d-. e-. fis-. g-. a-. a-. a-. a-. |
	b-. d-. cis-. b-. a-. g-. fis-. e-. |
	d4 r8 d\f g4 <g b, d,> |
	<fis a, d,> r8 d b'4 <b b, d,> |
	<a a,>8 d4 d d d8 ~|
	d d4 d d d8 |
	d4 r8 cis, d4 e\trill |
	fis r8 e fis4 g\trill |
	a r8 a b4 cis\trill |
%G
	d4.( a8) d4.( a8) |
	fis-.\p a-. fis-. a-. fis-. a-. fis-. a-. |
	d-. b-. d-. b-. g-. e-. g-. e-. |
	cis'-. a-. cis-. a-. fis-. d-. fis-. d-. |
	b'-. g-. b-. g-. <e e,>4\f r |
	<fis a, d,> r <g a,> r |
	<fis a, d,> r8 fis \appoggiatura {g32[ fis e]} fis4 fis8 fis |
	e4 r8 e \appoggiatura {fis32[ e d]} e4 e8 e |
	<d d,>4 r8 cis d4 e\trill |
	fis r8 e fis4 g\trill |
	a r8 a b4 cis\trill |
	d4.( a8) d4.( a8) |
	fis-.\p a-. fis-. a-. fis-. a-. fis-. a-. |
	d-. b-. d-. b-. g-. e-. g-. e-. |
	cis'-. a-. cis-. a-. fis-. d-. fis-. d-. |
	b'-. g-. b-. g-. <cis a,>4\f r |
	<d a,> r <g, a,> r |
	<fis a, d,> r8 fis \appoggiatura {g32[ fis e]} fis4 fis8 fis |
	e4 r8 e \appoggiatura {fis32[ e d]} e4 e8 e |
	fis4 r8 d' \appoggiatura {e32[ d cis]} d4 d8 d |
	d4 r8 d \appoggiatura {d32[ cis b]} cis4 cis8 cis |
	d4 r d,,8 e16 fis g a b cis |
	d4 <d, d' d'> <d d' b'> <a' cis'> |
	<d, a' d'> r d8 e16 fis g a b cis |
	d4 <d, d' d'> <d d' b'> <a' cis'> |
	<d, d' d'> r r2 |
	R1*2 |
	<<d4 \\ d>> r r2 |
	R1*2 |
%H
	<d d' d'>4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1_\GP |
	<e'' cis'>4-. r <d, d' d'>-. r |
	R1_\GP |
	<d b' b'>4 r r2 |
	<a e' cis'>4 r r2 |
	d'8 d, fis a d d d d |
	d fis, a d fis fis fis fis |
	fis a, d fis a a a a |
	a d, fis a d d d d |
	d4 r r2 |
	r r4 r8 a,32( g fis e) |
	<<d2 \\ d>> r |
}>>

violinII = <<\global \relative c' { \key d \major
	<<d2 \\ d\f>> r4 r8 a'32( g fis e |
	<<{\voiceOne d2)} \new Voice {\voiceTwo d}>> \oneVoice r4 r8 a'32( g fis e |
	<<{\voiceOne d8) d16 d} \new Voice {\voiceTwo d8 d16 d}>> \oneVoice
	<<\repeat unfold 23 {<<{d8 d16 d} \\ {d8 d16 d}>>}
	  {s4 s2 | s8\p s s4 s2 | s1 | s8\f s s4 s2 | s8\p s s4 s2 |}>> |
	<d a' fis'>4\f r8. d'16 e( d) cis-. d-. e( d) cis-. d-. |
	e( d) cis-. d-. e( d) cis-. d-. e( d) cis-. d-. e( d) cis-. d-. |
	<b g'> q q q q8 r q16 q q q q8 r |
	q16 q q q q8 r q16 q q q q8 r |
	<d, a' fis'>4 r8. d'16 e( d) cis-. d-. e( d) cis-. d-. |
	e( d) cis-. d-. e( d) cis-. d-. e( d) cis-. d-. e( d) cis-. d-. |
	<cis e>16 q q q q8 r q16 q q q q8 r |
	q16 q q q q8 r q16 q q q q8 r |
	d d, d d e16( d) cis-. d-. e( d) cis-. d-. |
	d8 d' d d e16( d) cis-. d-. e( d) cis-. d-. |
	d8 d, d d e16( d) cis-. d-. e( d) cis-. d-. |
	d8 d' d d e16( d) cis-. d-. e( d) cis-. d-. |
	<d, a' a'>4 r r2\fermata |
%A
	b'4.(\p ais8) b4.( ais8) |
	b-. ais-. b-. ais-. b-. cis-. d4-. |
	gis,,2:16\f b: |
	d: gis,: |
	<<\repeat unfold 24 {a8 a16 a}
	{s1 |
	s8\p s8*7 |
	s8\f s8*7 |
	s8\p s8*7 |
	s8\f s8*7 |
	s8\p}>> |
	g' g4 g g g8 ~|
	g g4 g g g8 |
	cis,2\f ~ cis4. \tuplet 3/2 {d16(\p e fis} |
	g4) r4 r2\fermata |
\repeat volta 2 {
	<d a' fis'>4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d4. fis16 a d4 d |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d4. fis16 a d4 d' |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d-. a-. fis-. d-. g-. e-. cis-. a-. |
	d-. fis-. a-. d-. cis-. e-. cis-. a-. |
	d-. a-. fis-. d-. g-. e-. cis-. a-. |
	\repeat unfold 2 {<<d2: \\ d:\fp>> <<d: \\ d:>> |
	<<d: \\ d:>> <<d: \\ d:>>} |
	<d d' d'>4\f r8 d' \appoggiatura {e32[ d cis]} d4 d8 d |
	<d, d' d'>4 r8 d' \appoggiatura {e32[ d cis]} d4 d8 d |
	<b gis'> q4 q q q8 ~|
	q q4 q q-- ~ q8-. |
	<a a'>4 <<{a8 a16 a a4} \\ {a8 a16 a a4}>> r4 |
	cis,4 cis8 cis16 cis cis4 cis |
	d <<{a'8 a16 a a4} \\ {a8 a16 a a4}>> r4 |
	d,4 d8 d16 d d4 dis |
	e <<{a8 a16 a a4} \\ {a8 a16 a a4}>> r4 |
	e4 e8 e16 e e4 eis |
	fis8 a'4 a a a8 ~|
	a a4 a a(-- a8)-. |
	<a a,>8 q4 q q q8 ~|
	q q4 q q4(-- q8)-. |
	<gis b,>4 e4. e,8-. gis-. b-. |
	gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e'-. dis'-. e-. dis-. e-. e,-. gis-. b-. |
	gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e'4-. e'-. r2 |
%B
	r4 e(\p\upbow d cis) |
	r cis( b a) |
	r a( g fis) |
	gis r r e-. |
	a2( gis4) a-. |
	fis2( eis4) fis-. |
	gis-. a2( gis4) |
	a e r e |
	r e r gis |
	r a r a |
	r a r gis |
	a,8-. b-. cis-. d-. e-. e-. e-. e-. |
	gis,-. a-. b-. cis-. d-. d-. d-. d-. |
	a-. b-. cis-. d-. e-. e-. e-. e-. |
	fis-. a-. gis-. fis-. e-. d-. cis-. b-. |
	a a'4\f a a(-- a8)-. ~ |
	a a4 a a a8 |
	a4 r8 a d4 <d d,> |
	<cis e, a,> r8 a fis'4 <fis a, d,>\upbow |
	<e a,> r8 e, fis4 \afterGrace gis4(\trill {fis16[ gis])} |
	a4 r8 gis a4 \afterGrace b(\trill {a16[ b])} |
	cis4 r8 b cis4 \afterGrace d(\trill {cis16[ d])} |
	cis4.( a8) cis4.( a8) |
	cis-.\p a-. cis-. a-. cis-. a-. cis-. a-. |
	fis-. d-. fis-. d-. b'-. gis-. b-. gis-. |
	e-. cis-. e-. cis-. a'-. fis-. a-. fis-. |
	d-. b-. d-. b-. \appoggiatura {e'32[ d cis]} d4\f d8 d |
	\appoggiatura {d32[ cis b]} cis4 cis8 cis \appoggiatura {cis32[ b a]} b4 b8 b |
	a4 r8 a'\downbow \appoggiatura {b32[ a gis]} a4 a8 a |
	a2:16 gis: |
%C
	<a a,>4 r8 e, fis4 \afterGrace gis4(\trill {fis16[ gis])} |
	a4 r8 gis a4 \afterGrace b(\trill {a16[ b])} |
	cis4 r8 b cis4 \afterGrace d(\trill {cis16[ d])} |
	cis4.( a8) cis4.( a8) |
	cis-.\p a-. cis-. a-. cis-. a-. cis-. a-. |
	fis-. d-. fis-. d-. b'-. gis-. b-. gis-. |
	e-. cis-. e-. cis-. a'-. fis-. a-. fis-. |
	d-. b-. d-. b-. \appoggiatura {e'32[ d cis]} d4\f d8 d |
	\appoggiatura {d32[ cis b]} cis4 cis8 cis \appoggiatura {cis32[ b a]} b4 b8 b |
	a4 r8 a'\downbow \appoggiatura {b32[ a gis]} a4 a8 a |
	a2:16 gis: |
	a4 r8 a\downbow \appoggiatura {b32[ a gis]} a4 a8 a |
	a2:16 gis: |
	a4 r a,,8\downbow b16 cis d e fis gis |
	a4 <e cis' a'> <d d' fis> <e b' gis'> |
	<e cis' a'> r a,8\downbow b16 cis d e fis gis |
	a4 <e cis' a'> <d d' fis> <e b' gis'> |
	<<\repeat unfold 14 a,2: {s1 | s2\p s | s1 | s2\fp s | s1 | s2\fp}>>
}
	d8\f <fis a> q q q2: |
	q: q: |
	q: q: |
	q:\p q: |
	<dis a'>:\f q: |
	q: q: |
	q: q: |
	q:\p q: |
	<c a'>:\f q: |
	q: q: |
	q: q: |
	q:\p q: |
	<f d'>:\f q: |
	q: q: |
	q: q: |
	<d b'>:\p q: |
	<fis d'>:\f q: |
	q: q: |
	q: q: |
	<d b'>:\p q: |
	<d c'>:\f q: |
	q: q: |
	q4: d16( e fis g a4) d-.\downbow |
	<a fis'>4 q8 q q4 q |
	<b g'> <g b>8\downbow q q2: |
	q: q: |
	q4 g16( a b c d4) d-. |
	<b g'> q8 q q4 q |
	<bes g'>2: q: |
	q: q: |
	q4 g16( a b c d4) d-. |
	q4 q8 q q4 q |
%D
	<a g'>4 r r2 |
	R1 |
	<f d'>4\p r r2 |
	R1 |
	<g a>4 r a8(\p bes a gis) |
	a( bes a gis)  g( f g e) |
	f( g f d) e( d e cis) |
	d( e d cis) d( c d bes) |
	a4 r a(\p\downbow b) |
	cis( d e fis) |
	g8.(\f e16) cis4-. cis4(\p d) |
	e( fis g a) |
	b8.(\f g16) e4-. cis8-.\p cis-. d-. d-. |
	e-. e-. fis-. fis-. g-. g-. e-. e-. |
%E
	<d a' fis'>4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d4. fis16 a d4 d |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d a fis d g e cis a |
	d4. fis16 a d4 d' |
	d8( e,) e2 g8( b) |
	d,( cis) cis4. e8-. cis-. a-. |
	d-. a-. fis-. d-. g-. e-. cis-. a-. |
	d-. fis-. a-. d-. cis-. e-. cis-. a-. |
	d-. a-. fis-. d-. g-. e-. cis-. a-. |
	\repeat unfold 2 {<<d2: \\ d:\fp>> <<d: \\ d:>> |
	<<d2: \\ d:\fp>> <<d: \\ d:>>} |
	<d a' fis'>4\f r8 d'\downbow \appoggiatura {e32[ d cis]} d4 d8-. d-. |
	<d, a' fis'>4\f r8 d'\downbow \appoggiatura {e32[ d cis]} d4 d8 d |
	<d, b' g'>4\f r8 d'\downbow \appoggiatura {e32[ d cis]} d4 d8 d |
	gis4 r8 d\downbow \appoggiatura {e32[ d cis]} d4 d8 d |
	<cis e>8 q4 q q q8 ~|
	q q4 q q-- ~ q8-. |
	d4 <<{d,8 d16 d d4} \\ {d8 d16 d d4}>> r4 |
	fis4 fis8 fis16 fis fis4 fis |
	g <d d'>8 q16 q q4 r |
	g4 g8 g16 g g4 gis |
	<d a'>4 <d d'>8 q16 q16 q4 r |
	a' a8 a16 a a4 ais |
	b8 d4 d d d8 ~|
	d d4 d d-- ~ d8-. |
	<d d,> q4 q q q8 ~|
	q q4 q q-- ~ q8-. |
	<cis e,>4 a4.\downbow a,8-. cis-. e-. |
	cis-. a-. b-. cis-. d-. fis-. a-. d-. |
	a-. gis'-. a-. gis-. a-. a,-. cis-. e-. |
	cis-. a-. b-. cis-. d-. a-. fis-. d-. |
	a'4-. a'-. r2 |
%E
	r4 a,(\p\upbow g fis) |
	r fis( e d) |
	r d( c b) |
	cis r r a'-. |
	d2( cis4) d-. |
	b2( ais4) b-. |
	cis-. d2( cis4) |
	d a r a |
	r a r cis |
	r d r d |
	r d r cis |
	d,8-. e-. fis-. g-. a-. a-. a-. a-. |
	cis,-. d-. e-. fis-. g-. g-. g-. g-. |
	d-. e-. fis-. g-. a-. a-. a-. a-. |
	b-. d-. cis-. b-. a-. g-. fis-. e-. |
	d <d d'>4\f q q q8 ~|
	q q4 q q(-- q8)-. |
	q4 r8 d' g4 <g b, d,> |
	<fis a, d,> r8 d b'4 <b b, d,> |
	<a a, d,> r8 cis,, d4 \afterGrace e(\trill {d16[ e])} |
	fis4 r8 e fis4 \afterGrace g(\trill {fis16[ g])} |
	a4 r8 a b4 \afterGrace cis(\trill {b16[ cis])} |
%G
	d4.( a8) d4.( a8) |
	d,8-.\p fis-. d-. fis-. d-. fis-. d-. fis-. |
	b-. g-. b-. g-. e-. cis-. e-. cis-. |
	a'-. fis-. a-. fis-. d-. b-. d-. b-. |
	g'-. e-. g-. e-. \appoggiatura {a32[ g fis]} g4\f g8 g |
	\appoggiatura {g32[ fis e]} fis4 fis8 fis \appoggiatura {fis32[ e d]} e4 e8 e |
	d4 r8 d'\downbow \appoggiatura {e32[ d cis]} d4 d8 d |
	d2: cis: |
	<d, d'>4 r8 cis d4 \afterGrace e(\trill {d16[ e])} |
	fis4 r8 e fis4 \afterGrace g(\trill {fis16[ g])} |
	a4 r8 a b4 \afterGrace cis(\trill {b16[ cis])} |
	d4.( a8) d4.( a8) |
	d,-.\p fis-. d-. fis-. d-. fis-. d-. fis-. |
	b-. g-. b-. g-. e-. cis-. e-. cis-. |
	a'-. fis-. a-. fis-. d-. b-. d-. b-. |
	g'-. e-. g-. e-. \appoggiatura {a'32[ g fis]} g4\f g8 g |
	\appoggiatura {g32[ fis e]} fis4 fis8 fis \appoggiatura {fis32[ e d]} e4 e8 e |
	<d d,>4 r8 d\downbow \appoggiatura {e32[ d cis]} d4 d8 d |
	d2: cis: |
	<d d,>4 r8 fis\downbow \appoggiatura {g32[ fis e]} fis4 fis8 fis |
	e2: e: |
	fis4 r d,8\downbow e16 fis g a b cis |
	d4 <fis a, d,> <g b, d,> <e a,> |
	<fis a, d,> r d,8\downbow e16 fis g a b cis |
	d4 <fis a, d,> <g b, d,> <e a,> |
	<fis a, d,> \repeat unfold 6 {<<d,8 \\ d>>} |
	<<
	\repeat unfold 10 <<d2: \\ d2:>>
	{s2\p s |
	s1 |
	s2\f s |
	s\p s}
	>> |
%H
	<d a' fis'>4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1 |
	<g'' a,>4-.\downbow r <fis d d,>-.\downbow r |
	R1 |
	<d e,>2: q: |
	<g, a,>: q: |
	<fis a,>4 r r2 |
	d'8 d, fis a d d d d |
	d fis, a d fis fis fis fis |
	fis d fis a fis fis fis fis |
	fis4 r r2 |
	r r4 r8 a,32(\downbow g fis e |
	<< \new Voice {\voiceOne d2} {\voiceTwo d2)}>> \oneVoice r2 |
}>>

viola = <<\global \relative c' { \key d \major \clef alto
	d2\f r4 r8 a'32( fis e d) |
	d2 r4 r8 a'32( g fis e) |
	d2 r |
	R1*2 |
	d2 r |
	R1*2 |
	d4 r r2 |
	R1 |
	d2:8 d: |
	d: d: |
	d4 r r2 |
	R1 |
	a'2: a: |
	a: a: |
	d,8 d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis,4 r r2\fermata |
%A
	R1*2 |
	gis,2:16\f b: |
	d: gis,: |
	a4 r r2 |
	R1 |
	<a e' a>4 r r2 |
	R1 |
	q4 r r2 |
	R1 |
	e'8\p e4 e e e8 ~|
	e e4 e e e8 |
	e2\f ~ e4 r |
	R1\fermataMarkup |
\repeat volta 2 {
	d4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2:8 fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' d cis |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4 r r2 |
	R1 |
	fis4 r r2 |
	f4 r r2 |
	e8 e f f e e f f |
	e2: e: |
	e4 r r2 |
	a,4 a8 a16 a a4 a |
	b r r2 |
	b4 b8 b16 b b4 b |
	cis r r2 |
	cis4 cis8 cis16 cis cis4 cis |
	d2: dis: |
	e: e: |
	fis: fis: |
	f: f: |
	e4 e4. e8-. gis-. b-. |
	gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e' dis' e dis e e, gis b |
	gis e fis gis a e cis a e'4 e, r2 |
%B
	r4 cis''(\p b a) |
	r a( gis fis) |
	r fis( e d) |
	e e, e r |
	r e'( d cis) |
	r cis( b a) |
	b( a) fis'( e) |
	e a, r a |
	r d r b |
	r cis r e |
	r fis r d |
	cis cis r cis |
	r gis r gis |
	r a r cis |
	r a r e |
	a8\f a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, e a cis, d b e d |
	cis b a d cis a' gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 b4\f b8 b |
	a4 a8 a gis4 gis8 gis |
	a b cis eis, fis gis a cis, |
	d d fis fis e! e e e |
%C
	e d cis a d b e d |
	cis b a d cis a' gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 b4 b8 b |
	a4 a8 a gis4 gis8 gis |
	a b cis eis, fis gis a cis, |
	d d fis fis e! e e e |
	a b cis eis, fis gis a cis, |
	d d fis fis e! e e e |
	e4 r a,8 b16 cis d e fis gis |
	a4 a d, e |
	a, r a8 b16 cis d e fis gis |
	a4 a d, e |
	a, r r2 |
	R1*2 |
	<a e' a>4 r r2 |
	R1 |
	q4 r r2 |
	R1
}
	<a d>2:8 q: |
	q: q: |
	q: q: |
	q:\p q: |
	<c fis>:\f q: |
	q: q: |
	q: q: |
	q:\p q: |
	<a e'>:\f q: |
	q: q: |
	q: q: |
	q:\p q: |
	<gis' b>:\f q: |
	q: q: |
	q: q: |
	eis,:\p eis: |
	fis8\f <b d> q q q2: |
	<d b'>: q: |
	q: q: |
	fis,:\p fis |
	<fis' a>:\f q: |
	q: q: |
	q4 d16( e fis g a4) d-. |
	d, d8 d d4 d |
	<d b>2: q: |
	q: q: |
	q4 g16( a b c d4) d-. |
	d, d8 d d4 d |
	<g bes>2: q: |
	q: q: |
	q4 g16( a bes c d4) d-. |
	d, d8 d d4 d |
%D
	e4 r r2 |
	R1 |
	<d a'>4\p r r2 |
	R1 |
	e4 r a8(\f bes a gis) |
	a( bes a gis) g( f g e) |
	f( g f d) e( d e cis) |
	d( e d cis) cis( b cis bes) |
	a4 r a(\p b) |
	cis( d e fis) |
	g8.(\f e16) cis4-. cis(\p d) |
	e( fis g a) |
	b8.(\f g16) e4-. r2 |
	R1 |
%E
	d4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2:8 fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' d cis |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4 r r2 |
	R1 |
	d4 r r2 |
	c4 r r2 |
	b4 r r2 |
	bes4 r r2 |
	a8 a bes bes a a bes bes |
	a2: a': |
	a4 r r2 |
	d,4 d8 d16 d d4 d |
	e r r2 |
	e4 e8 e16 e e4 e |
	fis r r2 |
	fis4 fis8 fis16 fis fis4 fis |
	g2: b: |
	a: c: |
	b: b: |
	bes: bes: |
	a4 a4. a,8-. cis-. e-. |
	cis-. a-. b-. cis-. d-. fis-. a-. d-. |
	a gis a gis a a cis e |
	cis a b cis d a fis d |
	a'4 a, r2 |
%F
	r4 fis'(\p e d) |
	r d( cis b) |
	r b( a g) |
	a a a r |
	r a'( g fis) |
	r fis( e d) |
	e( d) b'( a) |
	a d, r d |
	r g r e |
	r fis r a |
	r b r g |
	fis fis r fis |
	r cis r cis |
	r b r a |
	r b r cis |
	d8\f d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, e d g fis d cis a |
	d fis a cis, d a e' a, |
	fis' d a' fis g e a g |
%G
	fis4 r r2 |
	R1*3 |
	r2 e4\f e8 e |
	d4 d8 d cis4 cis8 cis |
	d e fis ais, b cis d fis, |
	g g b b a a a a |
	d e fis g fis d cis a |
	d fis a cis, d a e' a, |
	fis' d a' fis g e a g |
	fis4 r r2 |
	R1*3 |
	r2 e'4 e8 e |
	d4 d8 d cis4 cis8 cis |
	e4 e,8 ais, b cis d fis, |
	g g b b a! a a a |
	d e fis ais b cis d fis, |
	g g b b a! a a a |
	<d, a'>4 r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r r2 |
	R1*2 |
	d4 r r2 |
	R1*2 |
%H
	d4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e d cis a fis' e |
	d b g' fis e d' cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1 |
	a'4-. r b-. r |
	R1 |
	b2: b: |
	e,: e: |
	d4 r fis8 fis fis fis |
	fis4 r a8 a a a |
	a4 r d8 d d d |
	d4 r a8 a a a |
	a4 r r2 |
	r r4 r8 a32( g fis e) |
	d2 r |
}>>

cello = <<\global \relative c { \key d \major \clef "bass"
	d2\f r4 r8 a'32( g fis e) |
	d2 r4 r8 a'32( g fis e) |
	d2 r |
	R1*2 |
	d2 r |
	R1*2 |
	d4 r r2 |
	R1 |
	d2:8 d: |
	d: d: |
	d4 r r2 |
	R1 |
	a'2: a: |
	a: a: |
	d,8 d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis,4 r r2\fermata |
%A
	R1*2 |
	gis2: b: |
	d: gis,: |
	a4 r r2 |
	r4 cis,(\p d fis) |
	a\f r r2 |
	r4 cis(\p d fis,) |
	a\f r r2 |
	r4 cis,(\p d fis) |
	a( bes a bes) |
	a( bes a bes) |
	a2\f ~ a4 r |
	R1 |
\repeat volta 2 {
	d,4\f r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2: fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4 r r2 |
	R1 |
	fis4 r r2 |
	f4 r r2 |
	e8 e f f e e f f |
	e e e e e e e e |
	a,-. cis-. e-. gis-. a4-. r |
	R1 |
	b,8-. d-. fis-. ais-. b4-. r |
	R1 |
	cis,8-. e-. a-. bis-. cis4-. r |
	R1 |
	d2: dis: |
	e: e: |
	fis: fis: |
	f: f: |
	e4 e4. e,8-. gis-. b-. gis-. e-. fis-. gis-. a-. e-. cis-. a-. |
	e' dis' e dis e e, gis b |
	gis e fis gis a e cis a |
	e'4 e' r2 |
%B
	R1*4 |
	r4 cis(\p b a) |
	r a( gis fis) |
	e( fis) d( e) |
	a, r cis' r |
	b r e, r |
	a r cis, r |
	d r e r |
	a, r a' r |
	b r e, r |
	fis r cis r |
	d r e r |
	a,8\f a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, a' gis a fis a gis a |
	e a gis a d, a' gis a |
	cis, e a cis d b e d |
	cis b a d cis a gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 e,8 e' e e |
	e e e e e e e e |
	a, b cis eis, fis gis a cis, |
	d d d d e! e e e |
%C
	a b cis a d b e d |
	cis b a d cis a gis e |
	a b cis gis a e b' e, |
	cis'4 r r2 |
	R1*3 |
	r2 e,8 e' e e |
	e e e e e e e e |
	a, b cis eis, fis gis a cis, |
	d d d d e! e e e |
	a b cis eis, fis gis a cis, |
	d d dis dis e! e e e |
	a4 r a,8 b16 cis d e fis gis |
	a4 a d, e |
	a, r a8 b16 cis d e fis gis |
	a4 a d, e |
	a, r r2 |
	R1*2 |
	a'4 r r2 |
	R1 |
	a4 r r2 |
	R1 |
}
	d,4 r r d-. |
	fis-. a-. r fis-. |
	a-. d-. r2 |
	R1 |
	dis,4-. r r dis-. |
	fis-. a-. r fis-. |
	a-. c-. r2 |
	R1 |
	e,4-. r r e-. |
	a-. c-. r a-. |
	c-. e-. r2 |
	R1 |
	f,4-. r r f-. |
	gis-. b-. r gis-. |
	b-. d-. r2 |
	R1 |
	fis,4-. r r fis-. |
	b-. d-. r b-. |
	d-. fis-. r2 |
	R1 |
	r4 a,16( g fis e d4) r |
	r c'16( b a g fis4) r |
	R1 |
	d'4 d8 d d4 d |
	d d,16( c b a g4) r |
	r d''16( c b a g4) r |
	R1 |
	d'4 d8 d d4 d |
	d d,16( c bes a g4) r |
	r d''16( c bes a g4) r |
	R1 |
	d'4 d8 d d4 d |
%D
	cis4 r r2 |
	R1 |
	d4\p r r2 |
	R1 |
	e4 r a,8(\f bes a gis) |
	a( bes a gis) g( f g e) |
	f( g f d) e( d e cis) |
	d( e d cis) d( c d bes) |
	a4 r a(\p b) |
	cis( d e fis) |
	g8.(\f e16) cis4-. cis4(\p d) |
	e( fis g a) |
	b8.(\f g16) e4-. r2 |
	R1 |
%E
	d4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a b cis |
	d2: fis,: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d2: fis: |
	g: g: |
	a: a8 e' cis a |
	d a fis d g e cis a |
	d fis a d cis e cis a |
	d a fis d g e cis a |
	d4 r r2 |
	R1 |
	d4 r r2 |
	R1 |
	d'4 r r2 |
	c4 r r2 |
	b4 r r2 |
	bes4 r r2 |
	a8 a bes bes a a bes bes |
	a a a a a a a a |
	d,-. fis-. a-. cis-. d4-. r |
	R1 |
	e,8-. g-. b-. dis-. e4-. r |
	R1 |
	fis,8-. a-. d-. cis-. d4-. r |
	R1 |
	g,2: gis: |
	a: a: |
	b: b: |
	bes: bes: |
	a4 a4. a,8-. cis-. e-. |
	cis-. a-. b-. cis-. d-. fis-. a-. d-. |
	a gis a gis a a cis e |
	cis a b cis d a fis d |
	a'4 a, r2 |
%F
	R1*4 |
	r4 fis''(\p e d) |
	r d( cis b) |
	a( b) g( a) |
	d, r fis' r |
	e r a, r |
	d r fis, r |
	g r a r |
	d, r d' r |
	e r a, r |
	b r fis r |
	g r a r |
	d,8\f d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, d' cis d b d cis d |
	a d cis d g, d' cis d |
	fis, e d g fis d cis a |
	d fis a cis d a e' a, |
	fis' d a fis g e a g |
%G
	fis4 r r2 |
	R1*3 |
	r2 a: |
	a: a: |
	d8 e fis ais, b cis d fis, |
	g g g g a! a a a |
	d, e fis g fis d cis a |
	d fis a cis d a e' a, |
	fis' d a fis g e a g |
	fis4 r r2 |
	R1*3 |
	r2 a: |
	a: a: |
	d8 e fis ais, b cis d fis, |
	g g g g a! a a a |
	d e fis ais, b cis d fis, |
	g g gis gis a! a a a |
	d,4 r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r d8 e16 fis g a b cis |
	d4 d g, a |
	d, r r2 |
	R1*2 |
	d4 r r2 |
	R1*2 |
%H
	d4 r8 d e fis g a |
	b g e' d cis a b cis |
	d4 r8 d, e fis g a |
	b g e' d cis a fis' e |
	d b g' fis e d cis b |
	a gis a b a g fis e |
	d e fis e d cis b a |
	gis1 |
	R1 |
	a'4-. r b-. r |
	R1 |
	g2: g: |
	a: a: |
	d,4 r r d' |
	a fis a fis |
	d2 r4 d' |
	a fis a fis |
	d r r2 |
	r r4 r8 a'32( g fis e) |
	d2 r |
}>>
