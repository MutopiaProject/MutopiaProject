\version "2.18.0"

global = {\tempo "Andante" \time 2/4 \partial 8 s8 s2*33 \mark A
          s2*27 \mark B s2*30 \mark C s2*18 \mark D s2*32 \mark E
          s2*22 \mark F s2*18 \mark G s2*17 \mark H s2*19 \bar "|."}
midiTempo = 70

oboeI = <<\global \relative c'' { \key a \major
	\tupletSpan 8
	\partial 8 r8 |
	R2*7 |
	r4 r8 a16(\f b) |
	cis4 e |
	cis e8 a16( gis) |
	fis8-. d( b) e-. |
	d( cis) r cis16( b) |
	a8.( b32 cis) d8-. d16( cis) |
	b8.( cis32 d) e8-. e16( d) |
	cis8.( d32 e) fis8-. d-. |
	cis4( b8) fis'-.\p |
	cis4( b8) r |
	R2*5 |
	d'8(\f cis) r4 |
	R2*2 |
	r8 e,(\p b cis) |
	d r r4 |
	cis8 r r4 |
	d8 r d r |
	cis-. e-. e-. r |
	R2 |
	d'8(\f cis) r4 |
	R2 |
%A
	R2*4 |
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 r |
	R2*3 |
	d4\f ~ d16(\p cis) d( b) |
	a8.( b16) a8-. gis-. |
	fis4 fis8( cis') |
	b( e,) fis-. fis16( gis) |
	e4 r |
	R2*3 |
	b'8.(\p^"solo" cis16) b8( ais) |
	b4( fis8) gis\trill |
	a e16.\trill dis32 e8 fis |
	fisis( gis) dis eis |
	fis! cis16.\trill b32 cis8 dis |
	fis16( e) gis( fis) a( gis) b( a) |
	cis( b) a( gis) gis( fis) a( cis) |
	\appoggiatura cis e,4( dis8) r |
%B
	b'4\f ~ \tuplet 3/2 {b16( ais b cis b ais)} |
	b4( fis8) gis\trill |
	a16.-. b32-. cis16.-. a32-. e8-. fisis-. |
	gis8.\trill fisis32 gis dis8 r |
	R2*3 |
	b'2\f |
	R2*2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2*5 |
	d8(\f cis) r4 |
	R2*2 |
	r8 e,(\p b cis) |
	d r r4 |
	cis8 r r4 |
	d8 r d r |
	cis-. e-. e-. r |
	R2 |
	d'8(\f cis) r4 |
	R2 |
	bis8(\f cis) r4 |
%C
	R2*7 |
	cis,2\p ~|
	cis |
	e16( d) d4. ~|
	d2 |
	cis |
	R2*3 |
	r8 e(\p a\f dis,8) |
	r e(\p a\f dis,) |
	r b(\p e) r |
%D
	R2*7 |
	r4 r8 e\f |
	e2 |
	e8 ~ \tuplet 3/2 {e16( fis gis)} a8 r |
	fis b,4 e8 |
	d( cis) r \tuplet 3/2 {cis16( b cis)} |
	a8 ~ \tuplet 3/2 {a16( b cis)} d8 ~ \tuplet 3/2 {d16( cis d)} |
	b8 ~ \tuplet 3/2 {b16( cis d)} e8 ~ \tuplet 3/2 {e16( d e)} |
	cis8 cis'( a fis) |
	cis( b) r \tuplet 3/2 {fis16-.\p fis-. fis-.} |
	cis4( b8) r |
	R2 |
	e2 ~|
	e ~|
	e8 e-. e-. r |
	R2 |
	d'8(\f cis) r4 |
	R2 |
	e8.(\p^"solo" fis16) e8( dis) |
	e4( b'8) cis,-. |
	d!16.( e32) fis16.( gis32) a8( bis,) |
	cis4( gis'8) ais,-. |
	b b'( fis) gis\trill |
	b16( a) gis-. fis-. dis( e) b( d) |
	cis( d dis e) eis( fis) gis( a) |
	cis,8.( e16) b8-. r |
%E
	cis'4(\f c) |
	b4.( bes8) |
	a a16.\trill gis32 a8-. bis-. |
	cis8.\trill bis32 cis gis8 r |
	R2*3 |
	e8(\f fis gis a) |
	R2*3 |
	r4 gis(\p |
	a8) r gis4( |
	a8) gis( fis e) |
	dis( cis b a) |
	gis r r4 |
	a8 r r4 |
	d2 |
	cis4( e8) r |
	R2 |
	d'8(\f cis) r4 |
	R2 |
%F
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 r |
	R2*3 |
	d4\f ~ d16(\p cis d b) |
	d4\f ~ d16(\p cis d b) |
	a8.( b16) a8-. gis-. |
	fis4 fis8( cis') |
	b( e,) fis-. fis16( gis) |
	e4 r |
	R2 |
	gis(\p |
	a |
	gis8) r r4 |
	R2 |
%G
	e2\p ~|
	e8.( cis16) e8-. r |
	R2 |
	r4 cis |
	fis2 |
	gis |
	a4 fis8( d) |
	cis4( b8) e16.-.\f e32-. |
	a8-. a16.-. a32-. b8-. b16.-. b32-. |
	cis8-. cis-. r a16. a32 |
	fis8 d16. d32 b8 e16. e32 |
	d8( cis) a'4 ~|
	a8 gis( b4) ~|
	b8 a( cis4) |
	b8 b16. b32 b8 b16. b32 |
	a4 r |
	r8 e(\p b cis) |
%H
	d r r4 |
	cis8 r r4 |
	r8 d'-. r d-. |
	cis-. cis-. cis-. r |
	R2 |
	d8(\f cis) r4 |
	R2 |
	d8(\f cis) r4 |
	R2*5 |
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 b8-.\p b16( cis) |
	a4 b8-. b16( cis) |
	a8 r r4 |
}>>

oboeII = <<\global \relative c'' { \key a \major
	\tupletSpan 8
	\partial 8 r8 |
	R2*7 |
	r4 r8 a16(\f gis) |
	a4 gis |
	a cis |
	d8-. fis,( gis) gis-. |
	a4 r8 a16( gis) |
	fis8.( gis32 a) b8-. b16( a) |
	a8( gis) b-. b-. |
	a8.( b32 cis) d8-. b-. |
	a4( gis8) a-.\p |
	a4( gis8) r |
	R2*5 |
	gis'8(\f a) r4 |
	R2*2 |
	r8 cis,(\p gis ais) |
	b r r4 |
	a8 r r4 |
	gis8 r gis r |
	a-. cis-. cis-. r |
	R2 |
	gis'8(\f a) r4 |
	R2 |
%A
	R2*4 |
	cis,2\f |
	d ~|
	d8( cis) fis( gis) |
	a4 r |
	R2*3 |
	gis4\f ~ gis8\p r |
	R2*15 |
%B
	gis4(\f g) |
	fis4.( f8) |
	e2 |
	dis4 r |
	R2*3 |
	b8(\f cis dis e) |
	R2*2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2*5 |
	gis'8(\f a) r4 |
	R2*2 |
	r8 cis,(\p gis ais) |
	b r r4 |
	a8 r r4 |
	gis8 r gis r |
	a-. cis-. cis-. r |
	R2 |
	gis'8(\f a) r4 |
	R2 |
	gis8(\f eis) r4 |
%C
	R2*7 |
	a,2\p ~|
	a |
	ais16( b) b4. |
	gis2 |
	a |
	R2*3 |
	r8 gis(\p fis\f a) |
	r gis(\p fis\f a) |
	r gis(\p e) r |
%D
	R2*7 |
	r4 r8 e'\f |
	cis4 gis |
	a8 ~ \tuplet 3/2 {a16( e' d)} cis8 r |
	fis,4 gis |
	gis8( a) r \tuplet 3/2 {a16( gis a)} |
	fis8 ~ \tuplet 3/2 {fis16( gis a)} b8 ~ \tuplet 3/2 {b16( a b)} |
	gis8 ~ \tuplet 3/2 {gis16( a b)} cis8 ~ \tuplet 3/2 {cis16( b cis)} |
	a8 a'( fis d) |
	a( gis) r \tuplet 3/2 {a16-.\p a-. a-.} |
	a4( gis8) r |
	R2*2 |
	d'2 |
	cis8-. cis-. cis-. r |
	R2 |
	gis'8(\f a) r4 |
	R2*9 |
%E
	e4\f ~ \tuplet 3/2 {e16( dis e fis e dis)} |
	e4( b8) cis\trill |
	d!4 a' |
	gis r |
	R2*3 |
	e2\f |
	R2*3 |
	r4 d(\p |
	cis8) r d4( |
	cis8) e( d cis) |
	b( a gis fis) |
	e r r4 |
	e8 r r4 |
	gis2 |
	a4( cis8) r |
	R2 |
	gis'8(\f a) r4 |
	R2 |
%F
	cis,2\f |
	d ~|
	d8( cis) fis( gis) |
	a4 r |
	R2*3 |
	a4(\f gis8)\p r |
	a4(\f gis8)\p r |
	R2*5 |
	b,4(\p d) |
	cis( dis) |
	e8 r r4 |
	R2 |
%G
	cis4(\p gis) |
	a( cis8) r |
	R2 |
	r4 a ~|
	a b ~|
	b cis ~|
	cis d8( b) |
	a4( gis8) e'16.-.\f e32-. |
	e8-. e16.-. e32-. gis8-. gis16.-. gis32-. |
	a8-. a-. r e16. e32 |
	d8 b16. b32 gis8 gis16. gis32 |
	gis8( a) cis4 |
	d2 |
	e |
	fis8 fis16. fis32 gis8 gis16. gis32 |
	a4 r |
	r8 cis,(\p gis ais) |
%H
	b r r4 |
	a8 r r4 |
	r8 gis'-. r gis-. |
	a-. a-. a-. r |
	R2 |
	gis8(\f a) r4 |
	R2 |
	gis8(\f a) r4 |
	R2*5 |
	cis,4\f e |
	d2 ~|
	d8( cis) fis( gis) |
	a4 r |
	e2\p ~|
	e8 r r4 |
}>>

fagottoI = <<\global \relative c' { \key a \major \clef "bass"
	\tupletSpan 8
	\partial 8 r8 |
	a\p r gis r |
	r a( cis) r |
	d, r e r |
	r cis( a) r |
	r d'( cis) b-. |
	r e( d) cis-. |
	r fis,( b,) d-. |
	r dis( e) r |
	a4\f e |
	a, a' |
	d, e |
	a8 e a, r |
	d4. b8 |
	e4 gis8 gis |
	a4 d, |
	e8 e' e, dis\p |
	e e e r |
	e r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 a' a, r |
	R2 |
	eis'8(\f fis) r e |
	d d e e |
	a, cis'-.\f a-. cis-. |
	e4-. r |
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
%A
	a, r a r |
	d r d r |
	e fis d e |
	a, a' a, r |
	a'\f r a r |
	d, r b' r |
	gis a d, e |
	a, a' a, r |
	a'\p r a, e' |
	a r e r |
	fis( e d cis) |
	b-.\f b'-. e,-.\p r |
	a-. r cis( b) |
	ais4( a) |
	gis8 cis, a b |
	e r b' r |
	gis r e r |
	b r fis' r |
	dis r b r |
	e4 r |
	R2*6 |
	r4 r16 a(\f gis fis) |
%B
	e4:16 e': |
	dis: d: |
	cis2: |
	bis4: b: |
	a2\p |
	gis8( fis) b,( e) |
	a r b r |
	gis(\f fis) b( e,) |
	a\p r r ais( |
	b c) b4 |
	e,8 r b' r |
	e r b r |
	e, r r4 |
	e8 r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 r r4 |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	a, cis'-.\f a-. cis-. |
	e4-. r |
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r4 |
	d\p r |
	cis r |
%C
	fis8\p r fis r |
	eis r cis r |
	d r b r |
	cis r b' r |
	a r a r |
	b r b r |
	cis r cis, r |
	fis r fis r |
	fis r fis r |
	b, r b r |
	e r e r |
	a, r a r |
	cis r cis r |
	d r e r |
	fis r fis r |
	e r b\f r |
	e\p r b\f r |
	e r r4 |
%D
	a8\p r gis r |
	a r cis, r |
	d r e r |
	a r a, r |
	d r b r |
	e r cis r |
	fis r d r |
	e r16. dis'32( e8) r |
	a,4\f e |
	a,8 ~ \tuplet 3/2 {a16( cis' b)} a8 r |
	d,4 e |
	a,8 ~ \tuplet 3/2 {a16( cis e)} a8 r |
	\tuplet 3/2 {fis16( e fis)} d8 ~ \tuplet 3/2 {d16( cis d)} b8 ~|
	\tuplet 3/2 {b16( cis dis)} e8 ~ \tuplet 3/2 {e16( d e)} cis8 ~|
	\tuplet 3/2 {cis16( d e)} fis8-. r d |
	e e' r \tuplet 3/2 {dis,16-.\p dis-. dis-.} |
	e8-. e-. e-. r |
	e r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	a, r r4 |
	R2*6 |
	r4 r16 d'(\f cis b) |
%E
	a2: |
	gis4: g: |
	fis: fis': |
	eis: e: |
	dis(\p d) |
	cis8( b) e,( a) |
	d, r e r |
	cis'(\f b) e( a,) |
	cis,(\p b) gis( a) |
	d r r dis( |
	e f) e4 |
	a,8 r e' r |
	a r e r |
	a, r r4 |
	R2 |
	e'8 r r4 |
	a,8 r r4 |
	e'8 r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
%F
	a\f r a r |
	d, r b' r |
	gis a d, e |
	a, a' a, r |
	a'\p r a, e' |
	a r e r |
	b'( a gis fis) |
	f-.\f f-. e-.\p r |
	f-.\f f-. e-.\p r |
	a r cis( b) |
	ais4( a) |
	g8 cis, a b |
	e r e r |
	e r e r |
	e r e r |
	e r e r |
	e r r4 |
	R2 |
%G
	a8 r e r |
	a,4 r |
	d8 r e r |
	a,4 r |
	d2 |
	e |
	fis4( d) |
	e8-. e'-. e,-. cis'16.-.\f b32-. |
	a8 r e r |
	a, a'16.-. a32-. cis8-. cis,-. |
	d r e r |
	r a16.-. a32-. a,8 a' |
	b, b'16.-. b32-. d8-. b, |
	cis cis'16.-. cis32-. e8-. cis,16.-. cis32-. |
	d8-. d16.-. d32-. e8-. e16.-. e32-. |
	a,8 cis'-. a-. cis-. |
	e4-. r |
%H
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	eis(\f fis) r e\p |
	d d e e |
	a, r a r |
	d r d r |
	e fis d e |
	a, a' a, r |
	a'\f r a r |
	d r b r |
	gis a d, e |
	a, r e'\p r |
	a r e r |
	a, r r4 |
}>>

fagottoII = \fagottoI

cornoaI = <<\global \relative c'' {
	\partial 8 r8 |
	R2*7 |
	r4 r8 c16(\f d) |
	e4 d |
	c2 |
	c4 g |
	g ~ g8 r |
	R2 |
	g4. d'8 |
	e4. a8 |
	g4( f8) r |
	R2*2 |
	r8 g\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*3 |
	r8 e\f c e |
	g2 ~|
	g8 r r4 |
	g8 r r4 |
	d'8 r d r |
	c c c r |
	R2*3 |
%A
	R2*4 |
	e2\f ~|
	e4 r |
	d8 e d d16 e |
	c4 r |
	R2*3 |
	d4\f ~ d8\p r |
	R2*15 |
%B
	g,2\f |
	d' |
	g4 r |
	R2*4 |
	d2\f |
	R2*6 |
	r8 g\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*3 |
	r8 e\f c e |
	g2\p ~|
	g8 r r4 |
	g8 r r4 |
	d'8 r d r |
	c c c r |
	R2*3 |
	e,4\f r |
%C
	R2*10 |
	d'2\p |
	c ~|
	c ~|
	c4 r |
	R2 |
	d2 ~|
	d ~|
	d4 r |
%D
	R2*7 |
	r4 r8 g,\f |
	c4 d |
	e8 ~ \tuplet 3/2 {e16 c c} c8 r |
	c4 g |
	g8 ~ \tuplet 3/2 {g16 g g} g8 r |
	c4 r |
	g r |
	c4. c8 |
	g4 r |
	R2*2 |
	r8 g'\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*10 |
	r4 r16 g\f g g |
%E
	c2 |
	d4 g8 r |
	c,4. c8 |
	e4 r |
	R2*3 |
	g,2\f |
	R2*3 |
	g2\p ~|
	g ~|
	g8 r r4 |
	R2*3 |
	d'2 |
	c4 c8 r |
	R2*3 |
%F
	c2\f ~|
	c4 r |
	d8 e d d16 e |
	c4 r |
	R2*3 |
	c4(\f d8)\p r |
	c4(\f d8)\p r |
	R2*5 |
	g,2\p ~|
	g ~|
	g8 r r4 |
	R2 |
%G
	c4 d |
	e r |
	R2 |
	c,8-.( c-. c-. c-.) |
	R2*3 |
	r4 r8 c'16.\f d32 |
	e8 e16. e32 d8 d16. d32 |
	c8 c r c16. c32 |
	c8 r g d'16. d32 |
	d8( e) r4 |
	R2 |
	r4 r8 c16. c32 |
	c8 d16. d32 d8 d16. d32 |
	c8 e,-. c-. e-. |
	g2\p ~|
%H
	g ~|
	g |
	r8 d' r d |
	c c c r |
	R2*9 |
	c2\f ~|
	c4 r |
	d8 e d d16 e |
	c4 r |
	r d8-.\p d16( e) |
	c8 r r4 |
}>>

cornoaII = <<\global \relative c' {
	\partial 8 r8 |
	R2*7 |
	r4 r8 e16(\f g) |
	c4 g |
	c,2 |
	c4 g' |
	c, ~ c8 r |
	R2 |
	g'4. g8 |
	c,4. d'8 |
	c4( g8) r |
	R2*2 |
	r8 g\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*3 |
	r8 e'\f c e |
	g2\p ~|
	g8 r r4 |
	c,8 r r4 |
	g'8 r g r |
	e c c r |
	R2*3 |
%A
	R2*4 |
	c2\f ~|
	c4 r |
	g'8 c c g |
	e4 r |
	R2*3 |
	g,4\f ~ g8\p r |
	R2*15 |
%B
	g2\f |
	d' |
	g4 r |
	R2*4 |
	d'2\f |
	R2*6 |
	r8 g,\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*3 |
	r8 e'\f c e |
	g2\p ~|
	g8 r r4 |
	c,8 r r4 |
	g'8 r g r |
	e c c r |
	R2*3 |
	e4\f r |
%C
	R2*10 |
	g2\p |
	c, ~|
	c ~|
	c4 r |
	R2 |
	d'2 ~|
	d |
	g,4 r |
%D
	R2*7 |
	r4 r8 g\f |
	e4 g |
	c8 ~ \tuplet 3/2 {c16 c, c} c8 r |
	c4 g' |
	c,8 ~ \tuplet 3/2 {c16 c c} c8 r |
	c4 r |
	g' r |
	c,4. c8 |
	g'4 r |
	R2*2 |
	r8 g\p e c |
	g2 ~|
	g4 ~ g8 r |
	R2*10 |
	r4 r16 g'\f g g |
%E
	c,2 |
	g'4 g8 r |
	c,4. c8 |
	e4 r |
	R2*3 |
	g,2\f |
	R2*3 |
	g'2\p ~|
	g |
	c,8 r r4 |
	R2*3 |
	g'2 |
	e4 e8 r |
	R2*3 |
%F
	c2\f ~|
	c4 r |
	g'8 c4 g8 |
	e4 r |
	R2*3 |
	c4(\f g'8)\p r |
	c,4(\f g'8)\p r |
	R2*5 |
	g,2\p ~|
	g ~|
	g8 r r4 |
	R2 |
%G
	e'4 g |
	c r |
	R2 |
	c,8-.( c-. c-. c-.) |
	R2*3 |
	r4 r8 e16.\f g32 |
	c8 c16. c32 g8 g16. g32 |
	e8 e r c16. c32 |
	c8 r g'8 g16. g32 |
	g8( c) r4 |
	R2 |
	r4 r8 c,16. c32 |
	c8 c'16. c32 g8 g16. g32 |
	e8 e-. c-. e-. |
	g2\p ~|
%H
	g ~|
	g |
	r8 g r g |
	c, c c r |
	R2*9 |
	c2\f ~|
	c4 r |
	g'8 c c g |
	e4 r |
	r g8\p g |
	e r r4 |
}>>

violinI = <<\global \relative c'' { \key a \major
	\tupletSpan 8
	\partial 8 a8(\p |
	cis) cis( e) e( |
	cis) r r a'( |
	fis) d( b) e-. |
	d( cis) r cis( |
	b) a-. r d( |
	cis) b-. r e( |
	d) cis( fis) d-. |
	cis4( b8) a16(\f b) |
	cis8-. cis( e) e( |
	cis) r r a'16( gis) |
	fis8-. d( b) e |
	d( cis) r cis16( b) |
	a8.( b32 cis) d8-. d16( cis) |
	b8.( cis32 d) e8-. e16( d) |
	cis8.( d32 e) fis8 d-. |
	cis4( b8) fis-.\p |
	cis4( b8) e-. |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d!(\f cis) r cis |
	d8.(\trill e32 fis) cis8-. b\trill |
	a cis,-.\f a-. cis-. |
	e4-. r |
	d'32(\p cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
%A
	a8.( b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a8.(\cresc b16) cis( d) e( cis) |
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 ~ a16 gis(\p a b) |
	cis8.( d16) cis8-. b-. |
	cis4 b |
	d8( cis b a) |
	d4\f ~ d16(\p cis) d( b) |
	a8.( b16) a8-. gis-. |
	fis4 fis8( cis') |
	b( e,) fis-. fis16( gis) |
	e8 r16 b'( gis') gis-. r b,( |
	b') b-. r b,( gis') gis-. gis16.\trill fis64 gis |
	a8 r16 b,( dis) dis-. r b( |
	a') a-. r b,( fis') fis-. fis16.\trill e64 fis |
	gis16 gis, gis gis gis gis g g |
	fis fis fis fis fis fis f f |
	e e e e e e e e |
	e e dis dis gis gis d d |
	cis cis cis cis fis fis c c |
	b8 b'4 dis8 |
	e16 e e e cis cis cis cis |
	gis gis gis gis fis fis'(\f gis a) |
%B
	b4 ~ \tuplet 3/2 { b16( ais b cis b ais)} |
	b4( fis8) gis\trill |
	a!16.-. b32 cis16.-. a32-. e8-. fisis-. |
	gis8.\trill fisis32 gis dis8 eis |
	fis!16(\p gis a b) c( a fis dis) |
	r b'8( ais a gis16) ~|
	gis16.( fis32) a16.( fis32) e16.( dis32) fis16.( dis32) |
	r16 b'8(\f ais a gis16) ~|
	gis16.(\p fis32) a16.( cis,32) e4( ~|
	e4. gis16 fis) |
	e8-. gis16( e) r8 a16( fis) |
	r16 gis-. gis( e) r a-. a( fis) |
	r e(\f dis e) fis( e) dis( e) |
	d!32(\p cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d!(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
	a cis,-.\f a-. cis-. |
	e4-. r |
	d'32(\p cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d(\f cis) r4 |
	a'8(\p bis,) r4 |
	bis8(\f cis) r cis\p |
%C
	cis4( a'8) fis-. |
	gis4( cis8) cis, |
	fis8.( gis32 a gis8) fis-. |
	\appoggiatura gis16 fis8( eis) r cis-. |
	cis'4( a8) fis-. |
	d'4( b8) gis-. |
	a8.( b32 cis) fis,8-. eis-. |
	\appoggiatura eis16 fis8 fis, r fis'-. |
	a4( fis8) cis-. |
	cis16( d) d8-. r d-. |
	b'4( gis8) d-. |
	bis16( cis) cis8 r e-. |
	a( gis g fis) |
	eis( fis) r gis-. |
	gis( a) r dis,-. |
	fis( e) r a16(\f dis,) |
	fis8(\p e) r cis'16(\f dis,) |
	fis8( e) r a,\p ~|
%D
	a16. a32( cis8) ~ cis16. cis32( e8) ~|
	e16. e32( cis8) r16. a32( a'8) ~|
	a16. fis32( d8) ~ d16. b32( e8) ~|
	e16. d32( cis8) r16. e,32( cis'8) ~|
	cis16. b32( a8) r16. fis32( d'8) ~|
	d16. cis32( b8) r16. e,32( e'8) ~|
	e16. d32( cis8) ~ cis16. d32( fis8) ~|
	fis16. cis32( b8) r \tuplet 3/2 {gis16(\f a b)} |
	cis8 ~ \tuplet 3/2 {cis16( d cis)} e8 ~ \tuplet 3/2 {e16( d e)} |
	cis8-. cis-. r \tuplet 3/2 {a'16( gis a)} |
	fis8 ~ \tuplet 3/2 {fis16( d cis)} b8 ~ \tuplet 3/2 {b16( a b)} |
	d8( cis) r \tuplet 3/2 {cis16( b cis)} |
	a8 ~ \tuplet 3/2 {a16( b cis)} d8 ~ \tuplet 3/2 {d16( cis d)} |
	b8 ~ \tuplet 3/2 {b16( cis d)} e8 ~ \tuplet 3/2 {e16( d e)} |
	cis8 ~ \tuplet 3/2 {cis16( d e) fis( gis a) a( fis d)} |
	cis8( b) r \tuplet 3/2 {fis16-.\p fis-. fis-.} |
	cis4( b8) e-. |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
	a16 cis cis cis cis cis c c |
	b b b b b b bes bes |
	a a a a a a a a |
	gis gis gis gis cis cis g g |
	fis fis fis fis b b f f |
	e8 cis'( b gis) |
	a a4 b16( cis) |
	a a a a gis b(\trill cis d) |
%E
	e4 ~ \tuplet 3/2 {e16( dis e fis e dis)} |
	e4( e'8) cis\trill |
	d a16.\trill gis32 a8-. bis-. |
	cis8.\trill bis32 cis gis8-. ais-. |
	ais16(\p b) cis( b) d( b) a( gis) |
	r e8( dis d cis16) ~|
	cis16.( b32) d16.( b32) a16.( gis32) b16.( gis32) |
	r16 e''8(\f dis d cis16) |
	r e,,8(\p dis d cis16) ~|
	cis16.( b32) d'16.( fis,32) a4( ~|
	a4. cis16 b) |
	a8-. cis16( a) r8 d16( b) |
	r cis-. cis( a) r d-. d( b) |
	a4.( a'8) ~|
	a16( gis8 fis e dis16) |
	d!32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
%F
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 ~ a16 gis(\p a b) |
	cis8.( d16) cis8 b |
	cis4 b |
	d8( cis b a) |
	d4\f ~ d16(\p cis d b) |
	d4\f ~ d16(\p cis d b) |
	a8.( b16) a8-. gis-. |
	fis4 fis8( cis') |
	b( e,) fis fis16( gis) |
	e8 r16 e( d') d-. r e,( |
	cis') cis-. r a( a') fis-. dis16.\trill cis64 dis |
	e8 r16 e,( d'!) d-. r e,( |
	cis') cis-. r a( a') fis-. dis16.\trill cis64 dis |
	e8.( dis16) d(\cresc cis b a) |
	gis(\f fis e dis) d(\p cis) d( b) |
%G
	cis8-. cis-. e-. e-. |
	cis4-. r8 a'-. |
	fis-. d-. b-. e-. |
	d16( cis) cis8-. r cis-. |
	b16( a)-. a8-. r d-. |
	cis16( b)-. b8-. r e-. |
	d16( cis)-. cis8-. eis16( fis)-. fis8-. |
	cis4( b8) a'16.-.\f b32-.  |
	cis8-. cis16.-. cis32-. e8-. e16.-. e32-. |
	cis8-. cis-. r a'16.-. a32-. |
	fis8 d16. d32 b8 e16. e32 |
	d8( cis) r cis16.-. cis32-. |
	d8-. b-. r d16.-. d32-. |
	e8-. cis-. r e16. e32 |
	fis8 d16. d32 b8 e16. e32 |
	a,8 cis,-. a-. cis-. |
	e4-. r |
%H
	d'32(\p cis b a gis8) d'32( cis b a gis8) |
	a32( b cis d) e( fis e fis) e8 e, |
	d'32( cis b a gis16) gis-. d'32( cis b a gis16) gis-. |
	a32( b cis d) e( fis e fis) e8 a(\p |
	gis fis e dis) |
	d(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
	d(\f cis) r cis\p |
	d8.(\trill e32 fis) cis8-. b\trill |
	a8.( b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a8.(\cresc b16) cis( d) e( cis) |
	a8.(\f b16) a8-. gis-. |
	fis4-. fis8-. gis-. |
	e a b b16( cis) |
	a4 b8\p b16( cis) |
	a4 b8 b16( cis) |
	a8 r r4 |
}>>

violinII = <<\global \relative c' { \key a \major
	\tupletSpan 8
	\partial 8 a8(\p |
	cis) cis( e) e( |
	cis) r r a'(\upbow |
	fis) d( b) e-. |
	d( cis) r a'(\downbow |
	gis) fis-. r b( |
	a) gis-. r cis( |
	b) a\(( d) b-.\) |
	a4( gis8) e16(\f d) |
	cis( d e cis) b( cis d b) |
	cis( d e cis) cis'\(( b) a( gis)\) |
	fis( gis a fis) gis( a b gis) |
	a( gis a) e-. d( cis) a'( gis) |
	fis( e) d( cis) b( fis') b( a) |
	a( b) gis( fis) e( gis) b-. b-. |
	a( e d cis) d( fis) fis( b) |
	a( e) cis( a') gis8 a,-.\p |
	a4( gis8) r |
	<d' e>4:16 q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d!(\f cis) r a'\p |
	a( b) a-. gis\trill |
	a cis,-.\f\upbow a-. cis-. |
	e4-. r |
	<d e>:\p q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d(\f cis) r a'\p |
	a( b) a-. gis\trill |
%A
	a16 e\upbow e e r e e e |
	r d d d r d d d |
	r d( cis) cis-. r fis( e) e-. |
	e( d) cis(\cresc b) cis( d) e( cis) |
	a\f e' e e r e e e |
	r d d d r d d d |
	r d( cis) cis-. r fis( e) e-. |
	r <e cis> q q q8 r |
	r16 a\p a a r a( gis) gis-. |
	r a a a r gis gis gis |
	r a r gis r fis r e |
	<d e>\f q q q q8\p r |
	r16 e e e r e e e |
	r e e e r dis dis dis |
	r e( cis) cis-. r cis( dis) dis-. |
	\repeat unfold 4 {e32( fis gis a b a gis fis)} |
	dis( e fis gis fis e dis cis) b( cis dis e fis e dis cis) |
	b( cis dis e fis e dis cis) b( cis dis e fis dis cis b) |
	e4: e: |
	dis: d: |
	cis: cis: |
	cis16 cis bis bis bis bis b b |
	ais4: a: |
	gis8 dis' e fis |
	gis16 gis gis gis a a a, a |
	b b b b b fis'(\f gis a) |
%B
	b4 ~ \tuplet 3/2 {b16( ais\upbow b cis b a)} |
	b4( fis8) \afterGrace gis(\trill {fis16 gis)} |
	a16.-.( b32-.) cis16.-.( a32-.) e8-. fisis-. |
	gis8.(\trill fisis32 gis) dis8-.( eis-.) |
	fis!16(\p gis a b) c( a fis dis) |
	b'8( cis dis e) |
	cis( a) r fis-.\upbow |
	r16 b8(\f ais a gis16) |
	r4 r8 cis8(\p\downbow |
	b ais) b( dis) |
	e r dis r |
	e r dis r |
	e r r4 |
	<d, e>:\p q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d(\f cis) r a'\p |
	a( b) a-. gis\trill |
	a cis,-.\f\upbow a-. cis-. |
	e4-. r |
	<d e>:\p q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d!(\f cis) r4 |
	fis8(\p a) r4 |
	a8(\f gis) r4 |
%C
	r16 \appoggiatura b32\downbow a(\p gis a16) cis-. r \appoggiatura gis32 fis( eis fis16) a-. |
	r \appoggiatura dis32 cis( bis cis16) gis-. r \appoggiatura fis32 eis( dis eis16) cis-. |
	r \appoggiatura b'32 a( gis a16) fis-. r \appoggiatura e'32 d!( cis d16) b-. |
	r \appoggiatura a32 gis( fis gis16) cis-. r \appoggiatura dis,32 cis( bis cis16) eis-. |
	\repeat unfold 2 {r \appoggiatura gis32 fis( eis fis16) fis-. r \appoggiatura gis32 fis( eis fis16) fis-.} |
	r \appoggiatura gis32 fis( eis fis16) a-. r \appoggiatura a32 gis( fis gis16) b-. |
	r \appoggiatura b32 a( gis a16) fis-. r \appoggiatura d32 cis( b cis16) a-. |
	r \appoggiatura gis'32 fis( eis fis16) a-. r \appoggiatura b32 a( gis a16) cis-. |
	r \appoggiatura cis,32 b( ais b16) d-. r \appoggiatura gis32 fis( e fis16) b-. |
	r \appoggiatura a32 gis( fis gis16) b-. r \appoggiatura fis32 e( dis e16) gis-. |
	r \appoggiatura b32 a( gis a16) cis-. r \appoggiatura d,32 cis( b cis16) e-. |
	r \appoggiatura b'32 a( gis a16) a-. r \appoggiatura b,32 a( gis a16) a-. |
	r \appoggiatura b'32 a( gis a16) a-. r \appoggiatura e'32 d( cis d16) d-. |
	r \appoggiatura d32 cis( b cis16) cis-. r \appoggiatura b32 a( gis a16) a-. |
	\repeat unfold 2 {r \appoggiatura a32 gis(\p fis gis16) gis-. r \appoggiatura b32 a(\f gis a16) a-.} |
	dis8( e) r a,,\p\downbow ~|
%D
	a16. a32( cis8) ~ cis16. cis32( e8) ~|
	e16. e32( cis8) r16. a32( a'8) ~|
	a16. fis32( d8) ~ d16. b32( e8) ~|
	e16. d32( cis8) r16. cis32( a'8) ~|
	a16. gis32( fis8) r16. d32( b'8) ~|
	b16. a32( gis8) r16. e32 cis'8 ~|
	cis16. b32( a8) ~ a16. b32( d8) ~|
	d16. a32( gis8) r \tuplet 3/2 {e16(\f fis gis) |
	a( e cis) a( b a) gis( b e) gis( fis gis) |
	a( cis b) a( e d) cis( e d) cis( b a) |
	a( a' gis) fis( b a) gis( b a) gis( fis gis) |
	e( fis gis) a( e cis) a( cis e) a( gis a)} |
	fis8 ~ \tuplet 3/2 {fis16( gis a)} b8 ~ \tuplet 3/2 {b16( a b)} |
	gis8 ~ \tuplet 3/2 {gis16( a b)} cis8 ~ \tuplet 3/2 {cis16( b cis)} |
	a8 ~ \tuplet 3/2 {a16( b cis) d( e fis) fis( d b)} |
	a8( gis) r \tuplet 3/2 {a,16-.\p\upbow a-. a-.} |
	a4( gis8) r |
	<d' e>4: q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d!(\f cis) r a'\p |
	a( b) a-. gis\trill |
	a4: a: |
	gis: g: |
	fis: fis: |
	eis: e: |
	dis: d: |
	cis8-. a'( gis e) |
	a, cis( d dis) |
	e16 e e e e b(\f cis d) |
%E
	e4 ~ \tuplet 3/2 {e16( dis\upbow e fis e d)} |
	e4( e'8) \afterGrace cis(\trill {b16 cis)} |
	d8 a16.(\trill gis32) a8-. bis-. |
	cis8.(\trill bis32 cis) gis8(-. ais)-. |
	ais16(\p b) cis( b) d( b) a( gis) |
	e8( fis gis a) |
	fis( d) r d-.\upbow |
	r16 e'8(\f\downbow dis d cis16) |
	e,2\p |
	r4 r8 fis( |
	e dis) e( gis) |
	a r gis r |
	a r gis r |
	a r r4 |
	R2 |
	<e d>4: q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: <cis e>8 a'(\p |
	gis fis e dis) |
	d(\f cis) r a'\p |
	a( b) a-. gis\trill |
%F
	a16\f e\upbow e e r e e e |
	r d d d r d d d |
	r d( cis) cis-. r a'( gis) gis-. |
	r <e cis> q q q8 r |
	r16 a\p a a r a( gis) gis-. |
	r a a a r gis gis gis |
	r gis r a r e r b |
	<a d>\f q q q <b d>8\p r |
	<a d>16\f q q q <b d>8\p r |
	r16 e e e r e e e |
	r e e e r dis dis dis |
	r e( cis) cis-. r cis( dis) dis-. |
	e32( fis gis a b a gis fis) e( fis gis a b a gis b) |
	a( b cis b a gis fis e) dis( e fis gis a gis a fis) |
	e( fis gis a b a gis fis) e( fis gis a b a gis b) |
	a( b cis b a gis fis e) dis( e fis gis a gis a fis) |
	gis8 r r4 |
	R2 |
%G
	cis16\p^"pizz." e d cis b d cis b |
	cis e a a a, cis e e |
	d fis b, d gis, b e, gis |
	a cis e a a, cis e a |
	fis, gis a fis fis' e d fis |
	gis, a b gis gis' fis e gis |
	a, b cis a b cis d b |
	a cis e a gis8 r |
	a,,32(\p^"arco" b cis d) e( fis gis a) gis( a b cis) d( b a gis) |
	a( b cis d) e( d cis b) a( gis fis e) d( cis b a) |
	b( cis d e) fis( gis a b) gis( fis e fis) gis( a b gis) |
	e( gis a gis) a( e cis e) a,( cis e gis) a( b cis a) |
	fis( e d cis) d( cis b a) gis( b d gis) b( cis d b) |
	gis( fis e d) e( d cis b) a( cis e gis) a( b cis a) |
	fis( gis a fis) b( cis d b) gis( a b a) gis( a b gis) |
	a8 cis,-. a-. cis-. e4-. r |
%H
	<d e>4:\p q: |
	<cis e>: q: |
	<d e>: q: |
	<cis e>: q8 a'(\p |
	gis fis e dis) |
	d(\f cis) r a'\p |
	a( b) a-.( gis-.)\trill |
	d(\f cis) r a'\p |
	a( b) a(-. gis)-.\trill |
	a16 e e e r e e e |
	r d d d r d d d |
	r d( cis) cis-. r fis( gis) gis-. |
	a(\cresc e) a( gis) a( b) cis( a) |
	cis,\f e e e r e e e |
	r d d d r d d d |
	r d( cis) cis-. r fis( e) e-. |
	r <cis e> q q r <d e>\p q q |
	r <cis e> q q r <d e> q q |
	<cis e>8 r r4 |
}>>

viola = <<\global \relative c { \key a \major \clef "alto"
	\tupletSpan 4
	\partial 8 r8 |
	e\p r b' r |
	r cis( e) r |
	a, r gis r |
	r e( cis) r |
	r fis'( e) d-. |
	r gis( fis) e-. |
	r fis( d) fis-. |
	r fis( b,) cis16(\f b) |
	a( b cis a) gis( a b gis) |
	a( b cis a) a'( gis) fis( e) |
	d( fis gis d) e( fis gis e) |
	e8.( cis16) b( a) cis( e) |
	fis8.( e16) d( b) d( fis) |
	e8 b'16( a) gis( b,) e-. e-. |
	e( cis b a) (a d) d( fis) |
	e( cis) a( cis) e8 dis,\p |
	e e e r |
	b'4:16 b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
	cis cis-.\f a-. cis-. |
	e4-. r |
	b:\p b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
%A
	cis16 cis cis cis r cis cis cis |
	r a a a r b b b |
	r gis( a) a-. r a( gis) gis-. |
	a( b)\cresc a( gis) a( b) cis( a) |
	cis\f cis cis cis r cis cis cis |
	r a a a r b b b |
	r b( a) a-. r a'( gis) gis-. |
	r a a, a a8 r |
	r16 e'\p e e  r e e e |
	r e e e r e e e |
	r fis r e r d r cis |
	<b gis'>\f q q q q8\p r |
	r16 cis cis cis r a( b) b-. |
	r cis cis cis r fis, fis fis |
	r gis gis gis r a( b) b-. |
	<<{
		b'2 ~|
		b |
		a ~|
		a |
		gis4
	} \\ {
		gis2 ~|
		gis |
		fis ~|
		fis |
		e4
	}>> r |
	R2*6 |
	r4 r16 dis(\f e fis) |
%B
	gis gis gis gis g g g g |
	fis fis fis fis b b f f |
	e e e e a a e e |
	dis dis dis dis g g d d |
	cis4(\p c) |
	b2 |
	a8( cis) r a-. |
	b(\f cis) dis( e) |
	cis\p r r g' ~|
	g g( gis \appoggiatura b16 a8) |
	gis r fis r |
	gis r fis r |
	e r r4 |
	b: b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
	cis cis-.\f a-. cis-. |
	e4-. r |
	b4:\p b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r4 |
	d,8(\p fis) r4 |
	fis8(\f eis) r4 |
%C
	fis8\p r fis r |
	eis r cis r |
	d r b r |
	cis r
	<<{
		gis'4 |
		a2 |
		gis |
		a4( gis) |
		fis2 ~|
		fis ~|
		fis |
		e ~|
		e
	} \\ {
		eis4 |
		fis2 ~|
		fis |
		cis4( b) |
		a2 |
		cis |
		b |
		b |
		a
	}>> |
	R2 |
	r8 <<{ fis' d'( gis,)} \\ {d a( d)}>> |
	r <<{a' cis( fis,)} \\ {cis a( b)}>> |
	r16 \appoggiatura fis'32 e( dis e16) e-. r \appoggiatura gis32 fis(\f e fis16) fis-. |
	r16 \appoggiatura fis32 e(\p dis e16) e-. r \appoggiatura gis32 fis(\f e fis16) fis-. |
	a8( gis) r4 |
%D
	a,8\p r e r |
	cis' r e r |
	fis r gis, r |
	a r a r |
	a r b r |
	b r cis r |
	cis r fis r |
	e r r \tuplet 3/2 {d16(\f cis b)} |
	a4 e |
	a8 ~ \tuplet 3/2 {a16( cis b)} a8 r |
	d4 e |
	b'8( a) r \tuplet 3/2 {e16( d cis) |
	fis( e fis)} d8 ~ \tuplet 3/2 {d16( cis d)} b8 ~|
	\tuplet 3/2 {b16( cis dis)} e8 ~ \tuplet 3/2 {e16( d e)} cis8 ~|
	\tuplet 3/2 {cis16( d e)} fis8-. r d |
	e e, r \tuplet 3/2 {dis16-.\p dis-. dis-.} |
	e8-. e-. e-. r |
	b'4: b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
	cis r r4 | R2*6 |
	r4 r16 gis(\f a b) |
%E
	cis cis cis cis c c c c |
	b b b b b' b bes bes |
	a a a a a a a a |
	gis gis gis gis cis cis g g |
	fis4(\p f) |
	e2 |
	d8( fis,) r b-. |
	e(\f fis gis a) |
	e,2\p |
	fis8 r r c' ~|
	c( cis dis \appoggiatura e16 d8) |
	cis r b r |
	cis r b r |
	a r r4 |
	R2 |
	b4: b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
%F
	cis16\f cis cis cis r cis cis cis |
	r a a a r b b b |
	r b( a) a-. r fis'( e) e-. |
	r a a, a a8 r |
	r16 e'\p e e r e e e |
	r e e e r e e e |
	r e r e r b r dis |
	a'\f a a a g8\p r |
	a16\f a a a g8\p r |
	r16 cis, cis cis r a( b) b-. |
	r cis cis cis r fis, fis fis |
	r gis gis gis r a( b) b-. |
	<<{
		gis'2 |
		a |
		gis4 b |
		a2 |
		gis8
	} \\ {
		b,2 |
		cis4 dis |
		e2 ~|
		e4 fis |
		b,8
	}>> r r4 |
	R2 |
%G
	a'16\p^"pizz" cis b a gis b a gis |
	a cis e e e, a cis cis |
	fis, a d, fis b, d gis, b |
	a cis e a a, cis e a |
	d, e fis d d' cis b d |
	e, fis gis e e' d cis e |
	fis, gis a fis d e fis d |
	cis e a cis b8 r |
	a\f^"arco" r e r |
	a, a'16.-. a32-. cis8-. cis,-. |
	d r e r |
	r a16.-. a32-. a,8 a' |
	b, b'16.-. b32-. d8-. b, |
	cis cis16.-. cis32-. e8-. cis16.-. cis32-. |
	d8-. d16.-. d32-. e8-. e16.-. e32-. |
	a8 cis,-. a-. cis-. |
	e4-. r |
%H
	b:\p b: |
	a: a: |
	b: b: |
	a: a8 r |
	R2 |
	<<{b'8( a)} \\ {gis(\f a)}>> r g\p |
	fis fis e d |
	<<{b'8( a)} \\ {gis!(\f a)}>> r g\p |
	fis fis e d |
	cis16 cis cis cis r cis cis cis |
	r a a a r b b b |
	r gis( a) a-. r d( e) e-. |
	cis8.(\cresc b16) cis( d) e( cis) |
	a\f cis cis cis r cis cis cis |
	r a a a r b b b |
	r b( a) a-. r a'( gis) gis-. |
	r a a a r gis\p gis gis |
	r a a a r gis gis gis |
	a8 r r4 |
}>>

cello = <<\global \relative c' { \key a \major \clef "bass"
	\partial 8 r8 |
	a8\p r gis r |
	r a( cis) r |
	d, r e r |
	r cis( a) r |
	r d'( cis) b-. |
	r e( d) cis-. |
	r fis,( b,) d-. |
	r dis( e) r |
	a4\f e |
	a, a' |
	d, e |
	a8 e a, r |
	d4. b8 |
	e4 gis8 gis |
	a4 d, |
	e8 e' e, dis\p |
	e e e r |
	e r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	a, cis'-.\f a-. cis-. |
	e4-. r |
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
%A
	a, r a r |
	d r d r |
	e fis d e |
	a, a' a, r |
	a'\f r a r |
	d, r b' r |
	gis a d, e |
	a, a' a, r |
	a'\p r a, e' |
	a r e r |
	fis( e d cis) |
	b-.\f b'-. e,-.\p r |
	a-. r cis( b) |
	ais4( a) |
	gis8 cis, a b |
	e r b' r |
	gis r e r |
	b r fis' r |
	dis r b r |
	e4 r |
	R2*6 |
	r4 r16 a(\f gis fis) |
%B
	e4:16 e': |
	dis: d: |
	cis: cis: |
	bis: b: |
	a2\p |
	gis8( fis) b,( e) |
	a r b r |
	gis(\f fis) b( e,) |
	a\p r r ais( |
	b c) b4 |
	e,8 r b' r |
	e r b r |
	e, r r4 |
	e8 r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 r r4 |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	a, cis'-.\f a-. cis-. |
	e4-. r |
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r4 |
	d4\p r |
	cis r |
%C
	fis8\p r fis r |
	eis r cis r |
	d r b r |
	cis r b' r |
	a r a r |
	b r b r |
	cis r cis, r |
	fis r fis r |
	fis r fis r |
	b, r b r |
	e r e r |
	a, r a r |
	cis r cis r |
	d r e r |
	fis r fis r |
	e r b\f r |
	e\p r b\f r |
	e r r4 |
%D
	a8\p r gis r |
	a r cis, r |
	d r e r |
	a r a, r |
	d r b r |
	e r cis r |
	fis r d r |
	e r16. dis'32( e8) r |
	a,4\f e |
	a,8 ~ \tuplet 3/2 {a16( cis' b)} a8 r |
	d,4 e |
	a,8 ~ \tuplet 3/2 {a16( cis e)} a8 r |
	\tuplet 3/2 {fis16( e fis)} d8 ~ \tuplet 3/2 {d16( cis d)} b8 ~|
	\tuplet 3/2 {b16( cis dis)} e8 ~ \tuplet 3/2 {e16( d e)} cis8 ~|
	\tuplet 3/2 {cis16( d e)} fis8-. r d |
	e e' r \tuplet 3/2 {dis,16-.\p dis-. dis-.} |
	e8-. e-. e-. r |
	e r r4 |
	a,8 r r4 |
	e'8 r r4 |
	a,8 a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	a, r r4 |
	R2*6 |
	r4 r8 \tuplet 3/2 {d'16(\f cis b)} |
%E
	a4: a: |
	gis: g: |
	fis: fis': |
	eis: e: |
	dis(\p d) |
	cis8( b) e,( a) |
	d, r e r |
	cis'(\f b) e( a,) |
	cis,(\p b) gis( a) |
	d r r dis( |
	e f) e4 |
	a,8 r e' r |
	a r e r |
	a, r r4 |
	R2 |
	e'8 r r4 |
	a,8 r r4 |
	e'8 r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
%F
	a\f r a r |
	d, r b' r |
	gis a d, e |
	a, a' a, r |
	a'\p r a, e' |
	a r e r |
	b'( a gis fis) |
	f-.\f f-. e-.\p r |
	f-.\f f-. e-. r |
	a r cis( b) |
	ais4( a) |
	gis8 cis, a b |
	e r e r |
	e r e r |
	e r e r |
	e r e r |
	e r r4 |
	R2 |
%G
	a8 r e r |
	a,4 r |
	d8 r e r |
	a,4 r |
	d2 |
	e |
	fis4( d) |
	e8-. e'-. e,-. cis'16.-.\f b32-. |
	a8 r e r |
	a, a'16.-. a32-. cis8-. cis,-. |
	d r e r |
	r a16.-. a32-. a,8 a' |
	b, b'16.-. b32-. d8-. b, |
	cis cis'16.-. cis32-. e8-. cis,16.-. cis32-. |
	d8-. d16.-. d32-. e8-. e16.-. e32-. |
	a,8 cis'-. a-. cis-. |
	e4-. r |
%H
	e,8\p r e r |
	a r a, r |
	e' r e r |
	a, a' a, r |
	R2 |
	eis'8(\f fis) r e\p |
	d d e e |
	eis(\f fis) r e\p |
	d d e e |
	a, r a r |
	d r d r |
	e fis d e |
	a, a' a, r |
	a'\f r a r |
	d r b r |
	gis a d, e |
	a, r e'\p r |
	a r e r a, r r4 |
}>>
