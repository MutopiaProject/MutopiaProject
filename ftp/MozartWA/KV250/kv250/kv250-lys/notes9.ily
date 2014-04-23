\version "2.18.0"

global = {\tempo "Allegro assai" \time 3/8 s4.*68 \mark A
          s4.*44 \mark B s4.*64 \mark C s4.*59 \mark D
          s4.*38 \mark E s4.*46 \mark F s4.*44 \mark G
          s4.*64 \mark H s4.*32 \bar "|."}
midiTempo = 120

oboeI = <<\global \relative c''' { \key d \major
\repeat volta 2 {
	R4.*8 |
	d4.\f ~|
	d ~|
	d ~|
	d ~|
	d8 r d-. |
	cis-. r d-. |
	cis-. r d-. |
	cis-. r d-. |
	cis-. r r |
	R4.*9 |
	d4.\f |
	d, |
	b' |
	e, |
	fis |
	e |
	d8 r r |
	R4.*3 |
	r8 r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4.*5 |
	a4.\p ~|
	a ~|
	a ~|
	a |
	d\f |
	d, |
	b' |
	e, |
	fis |
	e |
	a |
	b |
	fis |
	e |
	d:8 |
	a' |
	d8-. gis,-. gis-. |
	gis-. r r |
	gis4.(\p |
	fis |
	e8) r r |
	R4. |
%A
	a,4.\f ~|
	a |
	a' ~|
	a ~|
	a |
	gis ~|
	gis |
	b ~|
	b |
	a ~|
	a |
	cis |
	b ~|
	b ~|
	b ~|
	b |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	cis!8\f r r |
	cis r r |
	cis r r |
	cis r r |
	R4.*6 |
	r8 r b,( |
	c cis d |
	dis e eis) |
	fis-. r r |
	b-. r r |
	gis r r |
%B
	a-. r r |
	R4.*17 |
	e4.\p ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e8 r r |
	R4.*8 |
	r8 cis-. d-. |
	e4.\trill |
	r8 cis-. d-. |
	e4.\trill |
	R4.*10 |
	d'4.\f ~|
	d ~|
	d ~|
	d |
	cis ~|
	cis ~|
	cis ~|
	cis |
	b ~|
	b |
	cis ~|
	cis ~|
	cis ~|
	cis |
	b ~|
	b |
%C
	a8 r r |
	R4.*7 |
	e4.(\p |
	fis) |
	g4.( |
	e8) r r |
	fis4.( |
	g) |
	a( |
	fis8) r r |
	g4(\f fis8) |
	g4( fis8) |
	g4( fis8) |
	g4( fis8) |
	g4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	cis4.\f ~|
	cis ~|
	cis ~|
	cis ~|
	cis8 r cis-. |
	b-. r cis-. |
	b-. r cis-. |
	b-. r cis-. |
	b-. r r |
	R4.*5 |
	a4.\f ~|
	a ~|
	a ~|
	a |
	R4.*4 |
	d4.\f ~|
	d ~|
	d ~|
	d |
%D
	R4.*24 |
	g,4.\p ~|
	g ~|
	g |
	e |
	a |
	fis |
	e8 a-. a-. |
	a4. ~|
	a8 a-.\f a-. |
	a4. ~|
	a8 a-. a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d4. |
	d, |
	b' |
	e, |
	fis |
	e |
	d8 r d' |
	cis r d |
	cis r d |
	cis r d |
	cis r r |
	R4.*5 |
	a4.\p ~|
	a ~|
	a ~|
	a |
	d\f |
	d, |
	b' |
	e, |
	fis |
	e |
	a |
	b |
	fis |
	e |
	d: |
	a' |
	d8-. gis,-. gis-. |
	gis-. r r |
	gis4.(\p |
	fis |
	e8) r r |
	R4. |
	a,8\f a a |
	e'4. |
	g8-. cis,-. cis-. |
	cis-. r r |
	a'4.\p ~|
	a ~|
	a8 r r |
	R4. |
%F
	d,,4.\f ~|
	d |
	a' |
	fis'8-. e-. d-. |
	g4. ~|
	g |
	g, |
	e'8-. d-. cis-. |
	a'4. ~|
	a |
	a, |
	fis'8-. e-. d-. |
	e4. ~|
	e ~|
	e ~|
	e |
	R4.*4 |
	d'4.\f ~|
	d ~|
	d ~|
	d |
	R4.*4 |
	d8\f r r |
	d r r |
	d r r |
	d r r |
	R4.*6 |
	r8 r e,( |
	f fis g |
	gis a ais) |
	b-. r r |
	g-. r r |
	e-. r r |
%G
	d-. r r |
	R4.*17 |
	a'4.\p ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a8 r r |
	R4.*8 |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	R4.*10 |
	cis4.\f ~|
	cis ~|
	cis ~|
	cis |
	d ~|
	d ~|
	d ~|
	d ~|
	d |
	cis |
	d ~|
	d ~|
	d ~|
	d ~|
	d |
	cis |
%H
	d8 r r |
	R4.*3 |
	r8 r fis,16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
}
	R4.*4 |
	a4.\p ~|
	a ~|
	a ~|
	a |
	g4(\f fis8) |
	g4( fis8) |
	g4( fis8) |
	g4( fis8) |
	g4.\fermata |
	R4.*5 |
	a8\f r r |
	fis r r |
	a r r |
	d r r |
}>>

oboeII = <<\global \relative c'' { \key d \major
\repeat volta 2 {
	R4.*8 |
	fis4.\f ~|
	fis ~|
	fis ~|
	fis ~|
	fis8 r fis-. |
	e-. r fis-. |
	e-. r fis-. |
	e-. r fis-. |
	e-. r r |
	R4.*9 |
	a,4.\f ~|
	a |
	b ~|
	b |
	d cis |
	d8 r r |
	R4.*3 |
	r8 r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4.*5 |
	a,4.\p ~|
	a ~|
	a ~|
	a |
	a\f ~|
	a |
	b ~|
	b |
	d |
	cis |
	d ~|
	d ~|
	d |
	cis |
	d8 d d |
	fis4 e8 |
	d-. d-. d-. |
	d-. r r |
	d4.\p ~|
	d ~|
	d8 r r |
	R4. |
%A
	a4.\f ~|
	a |
	e |
	cis'8-. b-. a-. |
	d4. ~|
	d |
	d, |
	b'8-. a-. gis-. |
	e'4. ~|
	e |
	e, |
	cis'8-. b-. a-. |
	a'4. ~|
	a ~|
	a ~|
	a |
	R4.*4 |
	a4.\f ~|
	a ~|
	a ~|
	a |
	R4.*4 |
	a8\f r r |
	a r r |
	a r r |
	a r r |
	R4.*6 |
	r8 r b,( |
	c cis d |
	dis e eis) |
	fis-. r r |
	d-. r r |
	b-. r r |
%B
	cis-. r r |
	R4.*17 |
	e,4.\p ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e8 r r |
	R4.*8 |
	r8 a-. b-. |
	cis4.\trill |
	r8 a-. b-. |
	cis4.\trill |
	R4.*10 |
	gis'4.\f ~|
	gis ~|
	gis ~|
	gis |
	a ~|
	a ~|
	a ~|
	a ~|
	a |
	gis |
	a ~|
	a ~|
	a ~|
	a ~|
	a |
	gis |
%C
	a8 r r |
	R4.*7 |
	cis,4.( |
	d) |
	e( |
	cis8) r r |
	d4.( |
	e) |
	fis( |
	d8) r r |
	e4(\f d8) |
	e4( d8) |
	e4( d8) |
	e4( d8) |
	cis4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	a'4.\f ~|
	a ~|
	a ~|
	a ~|
	a8 r a-. |
	g-. r a-. |
	g-. r a-. |
	g-. r a-. |
	g-. r r |
	R4.*5 |
	r8 e-.\f fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	R4.*4 |
	r8 a-.\f b-. |
	d( cis) b-. |
	r a-. b-. |
	d( c) b-. |
%D
	R4.*24 |
	b,4.\p ~|
	b |
	e |
	cis |
	a |
	d |
	cis8 a-. a-. |
	a4. ~|
	a8 a-. a-. |
	a4. ~|
	a8 a-.\f a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d4. |
	a |
	b ~|
	b |
	d |
	cis |
	d8 r fis |
	e r fis |
	e r fis |
	e r fis |
	e r r |
	R4.*5 |
	a,4.\p ~|
	a ~|
	a ~|
	a |
	a\f ~|
	a |
	b ~|
	b |
	d |
	cis |
	d ~|
	d ~|
	d |
	cis |
	d8 d d |
	fis4 e8 |
	d-. d-. d-. |
	d-. r r |
	d4.\p ~|
	d ~|
	d8 r r |
	R4. |
	a8\f a a |
	cis4. ~|
	cis8-. g-. g-. |
	g-. r r |
	g'4.(\p |
	fis |
	e8) r r |
	R4. |
%F
	d,4.\f ~|
	d |
	d' ~|
	d |
	d( |
	cis) ~|
	cis |
	e ~|
	e |
	d ~|
	d |
	a |
	b ~|
	b ~|
	b ~|
	b |
	R4.*4 |
	f'4.\f ~|
	f ~|
	f ~|
	f |
	R4.*4 |
	fis8\f r r |
	fis r r |
	fis r r |
	fis r r |
	R4.*6 |
	r8 r e,( |
	f fis g |
	gis a ais) |
	b-. r r |
	b-. r r |
	cis-. r r |
%G
	d-. r r |
	R4.*17 |
	a4.\p ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a ~|
	a8 r r |
	R4.*8 |
	r8 d-. e-. |
	fis4.\trill |
	r8 d-. e-. |
	fis4.\trill |
	R4.*10 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	fis ~|
	fis ~|
	fis ~|
	fis |
	e ~|
	e |
	fis ~|
	fis ~|
	fis ~|
	fis |
	e ~|
	e |
%H
	fis8 r r |
	R4.*3 |
	r8 r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
}
	R4.*4 |
	a,4.\p ~|
	a ~|
	a ~|
	a |
	e'4(\f d8) |
	e4( d8) |
	e4( d8) |
	e4( d8) |
	cis4.\fermata |
	R4.*5 |
	cis8\f r r |
	d r r |
	cis r r |
	d r r |
}>>

bassi = <<\global \relative c { \key d \major \clef "bass"
\repeat volta 2 {
	R4.*8 |
	d8\f d d |
	d4.:8 |
	d: |
	d: |
	d8 r d'-. |
	a-. r d-. |
	a-. r d-. |
	a-. r d-. |
	a-. r r |
	R4.*9 |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	d8 r fis16 d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4.*9 |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	fis'8 fis fis |
	g4.: |
	a: |
	a,: |
	d8 fis a |
	d4 cis8 |
	b b b |
	b r r |
	b4.(\p |
	a |
	gis8) r r |
	R4. |
%A
	a,8\f a a |
	a-. cis-. e-. |
	a-. cis-. cis-. |
	cis-. r r |
	b, b b |
	b-. d-. gis-. |
	b-. d-. d-. |
	d-. r r |
	cis, cis cis |
	cis-. e-. a-. |
	cis-. e-. e-. |
	e-. r r |
	d, d d |
	d-. fis-. b-. |
	d-. fis-. fis-. |
	fis-. r r |
	d-.\p fis-. fis-. |
	fis-. r r |
	d-. fis-. fis-. |
	fis-. r r |
	dis,\f dis dis |
	dis-. fis-. a-. |
	c-. dis-. dis-. |
	dis-. r r |
	c-.\p dis-. dis-. |
	dis-. r r |
	c-. dis-. dis-. |
	dis-. r r |
	e-.\f r r |
	e-. r r |
	e-. r r |
	e-. r r |
	R4.*4 |
	cis,8( d dis) |
	e( eis fis |
	gis a b) |
	c( cis d |
	dis e eis) |
	fis-. r r |
	d-. r r |
	e-. r r |
%B
	a,,-. cis-. e-. |
	a-. r r |
	R4.*2 |
	e8-.\p gis-. b-. |
	e-. r r |
	R4.*2 |
	a,,8-. cis-. e-. |
	a-. r r |
	a,-. r r |
	R4. |
	a8 r r |
	R4. |
	a8 r a'-. |
	fis-. e-. d-. |
	e-. dis'( e) |
\tag #'fagottoI {
	e a,-. b-. |
	cis-. b-. a-. |
	gis-. r a-. |
	b4.\trill |
	r8 b-. cis-. |
	d-. cis-. b-. |
	a-. r b-. |
	cis4.\trill |
	r8 cis-. d-. |
	e4.\trill |
	r8 cis-. b-. |
	e4.\trill |
	r8 cis-. d-. |
	\appoggiatura fis e-. d-. cis-. |
	b-. r e-. |
	d4( cis8) |
	r8 a-. b-. |
	cis4.\trill |
	r8 a-. b-. |
	cis4.\trill |
	r8 a-. b-. |
	\appoggiatura d cis-. b-. a-. |
	gis8.\trill fis16 g8 |
	a r a,\f |
}
\tag #'fagottoII {
	e''8 r r |
	a, r r |
	a r r |
	e r r |
	R4. |
	e8 r r |
	e r r |
	a, r r |
	R4. |
	a8 r r |
	a' r r |
	a, r r |
	a' r r |
	cis, r r |
	e r r |
	a, r r |
	a' r r |
	a, r r |
	a' r r |
	a, r r |
	a' r r |
	cis, r r |
	e r r |
	a, r a\f |
}
	a'16 gis fis e d cis |
	b8 b b |
	b'16 a gis fis e d |
	cis8 r e |
	cis'16 b a gis fis e |
	d8 d d |
	d'16 cis b a gis fis |
	e8 e' e |
	e4.: |
	e: |
	e: |
	a,8( cis) cis-. |
	cis( e) e-. |
	a,( cis) cis-. |
	cis( e) e-. |
	d d d |
	e e e |
	a,( cis) cis-. |
	cis( e) e-. |
	a,( cis) cis-. |
	cis( e) e |
	d d d |
	e e e |
%C
	a, r r |
	R4. |
	r8 r16 a, b cis |
	d cis d e fis gis |
	a8 r r |
	R4.*11 |
	a8\f a a |
	a a a |
	a a a |
	a a a |
	a4.\fermata |
	R4.*4
}
\repeat volta 2 {
	R4.*8 |
	dis,8\f dis dis |
	dis4.: |
	dis: |
	dis: |
	dis8 r dis'-. |
	e-. r dis-. |
	e-. r dis-. |
	e-. r dis-. |
	e-. r r |
	R4.*5 |
	r8 cis-. d!-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	R4.*4 |
	r8 fis,-.\f g-. |
	b( a) g |
	r fis-. g-. |
	b( a) g-. |
%D
	g\p r r |
	g r r |
	d' r r |
	R4. |
	d,8 r r |
	d r r |
	g r r |
	R4. |
	g4.( |
	a) |
	g8 r r |
	R4. |
	fis4.( |
	g) |
	fis8 r r |
	R4. |
	e8 r r |
	d r r |
	cis r r |
	g' r r |
	fis r r |
	d r r |
	a' r r |
	a, r r |
	e' r r |
	d r r |
	cis r r |
	g' r r |
	fis r r |
	d r r |
	a' r r |
	R4.*3 |
	r8 a-.\f a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d d d |
	fis, r r |
	g g g |
	g r r |
	a4. |
	a, |
	d8 r d' |
	a r d |
	a r d |
	a r d |
	a r r |
	R4.*9 |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	fis': |
	g: |
	a: |
	a,: |
	d8 fis a |
	d4 cis8 |
	b4.: |
	b8 r r |
	b4.(\p |
	a |
	gis8) r r |
	R4. |
	a,8\f cis e |
	g!4. |
	e8-. e'-. e-. |
	e-. r r |
	e4.(\p |
	d |
	cis8) r r |
	R4. |
%F
	d,8-.\f d-. d-. |
	d-. fis-. a-. |
	d-. fis-. fis-. |
	fis-. r r |
	e,-. e-. e-. |
	e-. g-. cis-. |
	e-. g-. g-. |
	g-. r r |
	fis fis fis |
	fis d a |
	fis-. a-. a-. |
	a-. r r |
	g, g g |
	g b e |
	g-. b-. b-. |
	b-. r r |
	g-.\p b-. b-. |
	b-. r r |
	g-. b-. b-. |
	b-. r r |
	gis,\f gis gis |
	gis b d |
	f-. gis-. gis-. |
	gis-. r r |
	b-.\p d-. d-. |
	d-. r r |
	f-. gis-. gis-. |
	gis-. r r |
	a,\f r r |
	a r r |
	a r r |
	a r r |
	R4.*4 |
	fis,8( g gis) |
	a( ais b |
	cis d e) |
	f( fis g |
	gis a ais) |
	b-. r r |
	g!-. r r |
	a-. r r |
%G
	d,-. fis-. a-. |
	d-. r r |
	R4.*2 |
	a,8-.\p cis-. e-. |
	a-. r r |
	R4.*2 |
	d,8-. fis-. a-. |
	d-. r r |
	d, r r |
	R4. |
	d8 r r |
	R4. |
	d8-. r d-. |
	b-. a-. g-. |
	a-. gis'( a) |
\tag #'fagottoI {
	a-. d,-. e-. |
	fis-. e-. d-. |
	cis-. r d-. |
	e4.\trill |
	r8 e-. fis-. |
	g-. fis-. e-. |
	d-. r e-. |
	fis4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis8-. g-. |
	\appoggiatura b a-. g-. fis-. |
	e-. r a-. |
	g4( fis8) |
	r d'-. e-. |
	fis4.\trill |
	r8 d-. e-. |
	fis4.\trill |
	r8 d-. e-. |
	\appoggiatura g fis-. e-. d-. |
	cis8.\trill b16 cis8 |
	d r d,\f |
}
\tag #'fagottoII {
	a'8 r r |
	d, r r |
	d r r |
	a r r |
	R4. |
	a'8 r r |
	a r r |
	d, r r |
	R4. |
	d8 r r |
	d' r r |
	d, r r |
	d' r r |
	fis, r r |
	a r r |
	d, r r |
	d' r r |
	d, r r |
	d' r r |
	d, r r |
	d' r r |
	fis, r r |
	a r r |
	d, r d\f |
}
	d'16 cis b a g fis |
	e4.: |
	e'16 d cis b a g |
	fis8 r a |
	fis'16 e d cis b a |
	g8 g g |
	g'16 fis e d cis b |
	a8 a a |
	a4.: |
	a: |
	a: |
	d,8( fis) fis-. |
	a( d) d-. |
	d,( fis) fis-. |
	a( d) d-. |
	g,4.: |
	a: |
	d,8( fis) fis-. |
	a( d) d-. |
	d,( fis) fis-. |
	a( d) d-. |
	g,4.: |
	a: |
%H
	d,8 r fis16 d |
	a'4.: |
	a4 fis16 d |
	a'4.: |
	a8 r fis16 d |
	a'4.: |
	a4 fis16 d |
	a'4.: |
	a8 r r |
	R4. |
}
	R4.*8 |
	a8\f a a |
	a a a |
	a a a |
	a a a |
	a4.\fermata |
	R4.*5 |
	a8\f r r |
	d r r |
	a r r |
	d, r r |
}>>

fagottoI = \removeWithTag #'fagottoII \bassi

fagottoII = \removeWithTag #'fagottoI \bassi

cornodI = <<\global \relative c'' {
\repeat volta 2 {
	R4.*8 |
	c4.\f ~|
	c ~|
	c ~|
	c ~|
	c8 r e-. |
	d-. r e-. |
	d-. r e-. |
	d-. r e-. |
	d-. r r |
	R4.*5 |
	g,4.\p ~|
	g ~|
	g ~|
	g |
	c\f ~|
	c |
	c |
	d |
	e |
	d |
	c8 r r |
	R4.*3 |
	r8 r c,\f |
	g' g g |
	g4 c,8 |
	g'8 g g |
	g r r |
	R4. |
	g4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	c\f ~|
	c |
	c |
	d |
	e |
	d |
	c |
	d |
	e |
	d |
	c8 c c |
	e4 d8 |
	c c c |
	c r r |
	R4.*4 |
%A
	d4.\f ~|
	d8 d d |
	d4. ~|
	d |
	c ~|
	c8 c c |
	c4. ~|
	c |
	d ~|
	d8 d d |
	d4. ~|
	d |
	e ~|
	e ~|
	e ~|
	e |
	R4.*4 |
	e4.\f ~|
	e ~|
	e ~|
	e |
	R4.*4 |
	d8\f r r |
	d r r| d r r |
	d r r |
	R4.*10 |
	e8-. r r |
	d-. r r |
%B
	d-. r r |
	R4.*7 |
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*17 |
	g4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*10 |
	d'4.\f ~|
	d ~|
	d ~|
	d |
	d ~|
	d ~|
	d ~|
	d |
	e |
	d |
	d ~|
	d ~|
	d ~|
	d |
	e |
	d |
%C
	d8 r r |
	R4.*7 |
	d4.(\p |
	e) |
	f( |
	d8) r r |
	e4.( |
	f) |
	g( |
	e8) r r |
	d4(\f e8) |
	d4( e8) |
	d4( e8) |
	d4( e8) |
	d4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	e4.\f ~|
	e ~|
	e ~|
	e ~|
	e8 r r |
	R4.*9 |
	g,4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
%D
	R4.*38 |
%E
	c4.\f ~|
	c |
	c |
	d |
	e |
	d |
	c8 r e |
	d r e |
	d r e |
	d r e |
	d r r |
	R4. |
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	c\f ~|
	c |
	c |
	d |
	e |
	d |
	c |
	d |
	e |
	d |
	c8 c c |
	e4 d8 |
	c c c |
	c r r |
	R4.*4 |
	d8\f d d |
	d4. |
	d8 d d |
	d r r |
	g,4.\p ~|
	g ~|
	g8 r r |
	R4. |
%F
	c4.\f ~|
	c8 c c |
	c4. ~|
	c |
	d ~|
	d8 d d |
	d4. ~|
	d |
	d |
	c ~|
	c ~|
	c8 c c |
	c4. ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	e8\f r r |
	e r r |
	e r r |
	e r r |
	R4.*10 |
	f8 r r |
	d r r |
%G
	c r r |
	R4.*7 |
	c4.\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	R4.*17 |
	c4.\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	R4.*10 |
	d4.\f ~|
	d ~|
	d ~|
	d |
	e ~|
	e ~|
	e ~|
	e |
	d ~|
	d |
	e ~|
	e ~|
	e ~|
	e |
	d ~|
	d |
%H
	c8 r r |
	R4.*3 |
	r8 r c,\f |
	g' g g |
	g4 c,8 |
	g'8 g g |
	g r r |
	R4. |
}
	g4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	d'4(\f e8) |
	d4( e8) |
	d4( e8) |
	d4( e8) |
	d4.\fermata |
	R4.*5 |
	d8\f r r |
	e r r |
	d r r |
	c r r |
}>>

cornodII = <<\global \relative c' {
\repeat volta 2 {
	R4.*8 |
	c4.\f ~|
	c ~|
	c ~|
	c ~|
	c8 r c'-. |
	g-. r c-. |
	g-. r c-. |
	g-. r c-. |
	g-. r r |
	R4.*5 |
	g,4.\p ~|
	g ~|
	g ~|
	g |
	c\f ~|
	c |
	c |
	c' |
	c |
	g |
	e8 r r |
	R4.*3 |
	r8 r c\f |
	g' g g |
	g4 c,8 |
	g' g g |
	g r r |
	R4. |
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	c4.\f ~|
	c |
	c |
	c' |
	c |
	g |
	c, |
	c' |
	c |
	g |
	e8 e e |
	c'4 g8 |
	c, c c |
	c r r |
	R4.*4 |
%A
	g'4.\f ~|
	g8 g g |
	g4. ~|
	g |
	c, ~|
	c8 c c |
	c4. ~|
	c |
	d' ~|
	d8 d d |
	g,4. ~|
	g |
	c ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	d'8\f r r |
	d r r |
	d r r |
	d r r |
	R4.*10 |
	c8-. r r |
	d-. r r |
%B
	g,-. r r |
	R4.*7 |
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*17 |
	g4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*10 |
	d''4.\f ~|
	d ~|
	d ~|
	d |
	g,4. ~|
	g ~|
	g ~|
	g |
	c |
	d |
	g, ~|
	g ~|
	g ~|
	g |
	c |
	d |
%C
	g,8 r r |
	R4.*7 |
	g4.(\p |
	c) |
	d( |
	g,8) r r |
	c4.( |
	d) |
	e( |
	c8) r r |
	g4(\f c8) |
	g4( c8) |
	g4( c8) |
	g4( c8) |
	g4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	g4.\f ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*9 |
	g,4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
%D
	R4.*38 |
%E
	c4.\f ~|
	c |
	c |
	c' |
	c |
	g |
	e8 r c' |
	g r c |
	g r c |
	g r c |
	g r r |
	R4. |
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	c\f ~|
	c |
	c |
	c' |
	c |
	g |
	c, |
	c' |
	c |
	g |
	e8 e e |
	c'4 g8 |
	c, c c |
	c r r |
	R4.*4 |
	g'8\f g g |
	g4. |
	g8 g g |
	g r r |
	g,4.\p ~|
	g ~|
	g8 r r |
	R4. |
%F
	c4.\f ~|
	c8 c c |
	c4. ~|
	c |
	g' ~|
	g8 g g |
	g4. ~|
	g |
	g ~|
	g |
	c, ~|
	c8 c c |
	c4. ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	c'8\f r r |
	c r r |
	c r r |
	c r r |
	R4.*10 |
	d8 r r |
	g, r r |
%G
	e r r  |
	R4.*7 |
	c4.\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	R4.*17 |
	c4.\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	R4.*10 |
	g'4.\f ~|
	g ~|
	g ~|
	g |
	c ~|
	c ~|
	c ~|
	c |
	c |
	g |
	c ~|
	c ~|
	c ~|
	c |
	c |
	g |
%H
	e8 r r |
	R4.*3 |
	r8 r c\f |
	g' g g |
	g4 c,8 |
	g'8 g g |
	g r r |
	R4. |
}
	g,4.\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g |
	g'4(\f c8) |
	g4( c8) |
	g4( c8) |
	g4( c8) |
	g4.\fermata |
	R4.*5 |
	g8\f r r |
	c r r |
	g r r |
	e r r |
}>>

trombeI = <<\global \relative c'' {
\repeat volta 2 {
	R4.*8 |
	c4.\f ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	g-. r r |
	g-. r r |
	g-. r r |
	g-. r r |
	R4.*9 |
	c8\f c c |
	c r r |
	c c c |
	c r r |
	g4. |
	g |
	c8 r r |
	R4.*3 |
	r8 r c, |
	g' g g |
	g4 c,8 |
	g' g g |
	g r r |
	R4.*9 |
	c8\f c c |
	c r r |
	c c c |
	c r r |
	g4. |
	g |
	c ~|
	c8 c c |
	g4. |
	g |
	c8 r r |
	R4. |
	c8 c c |
	c r r |
	R4.*4 |
%A
	g4.\f ~|
	g ~|
	g8 g g |
	g r r |
	c4. ~|
	c ~|
	c8 c c |
	c r r |
	d4. ~|
	d ~|
	d8 d d |
	d r r |
	g,4. ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	d'8\f r r |
	d r r |
	d r r |
	d r r |
	R4.*10 |
	e8-. r r |
	d-. r r |
%B
	d-. r r |
	R4.*47 |
	d4.\f ~|
	d ~|
	d ~|
	d |
	g,8 r r |
	R4. |
	g8 r r |
	R4. |
	e'4. |
	d |
	g,8 r r |
	R4. |
	g8 r r |
	R4. |
	e'4. |
	d |
%C
	d8 r r |
	R4.*15 |
	g,8\f r r |
	g r r |
	g r r |
	g r r |
	g4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	g4.\f ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*9 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
%D
	R4.*38 |
%E
	c8\f c c |
	c r r |
	c c c |
	c r r |
	g4. |
	g |
	c8 r r |
	g r r |
	g r r |
	g r r |
	g r r |
	R4.*9 |
	c8\f c c |
	c r r |
	c c c |
	c r r |
	g4. |
	g |
	c ~|
	c8 c c |
	g4. |
	g |
	c8 r r |
	R4. |
	c8 c c |
	c r r |
	R4.*12 |
%F
	c4.\f ~|
	c ~|
	c8 c c |
	c r r |
	g4. ~|
	g ~|
	g8 g g |
	g r r |
	g4. ~|
	g ~|
	g8 c c |
	c r r |
	c4. ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	g8\f r r |
	g r r |
	g r r |
	g r r |
	R4.*10 |
	f'8 r r |
	d r r |
%G
	c r r |
	R4.*47 |
	d4.\f ~|
	d ~|
	d ~|
	d |
	c8 r r |
	R4. |
	c8 r r |
	R4. |
	d4. ~|
	d |
	c8 r r |
	R4. |
	c8 r r |
	R4. |
	d4. ~|
	d |
%H
	c8 r r |
	R4.*3 |
	r8 r c, |
	g' g g |
	g4 c,8 |
	g' g g |
	g r r |
	R4. |
}
	R4.*8 |
	g8\f r r |
	g r r |
	g r r |
	g r r |
	g4.\fermata |
	R4.*5 |
	d'8\f r r |
	e r r |
	d r r |
	c r r |
}>>

trombeII = <<\global \relative c' {
\repeat volta 2 {
	R4.*8 |
	c4.\f ~|
	c ~|
	c ~|
	c ~|
	c8 r r |
	g'-. r r |
	g-. r r |
	g-. r r |
	g-. r r |
	R4.*9 |
	c,8\f c c |
	c r r |
	c c c |
	c r r |
	g'4. |
	g |
	e8 r r |
	R4.*3 |
	r8 r c |
	g' g g |
	g4 c,8 |
	g' g g |
	g r r |
	R4.*9 |
	c,8\f c c |
	c r r |
	c c c |
	c r r |
	g'4. |
	g |
	c, ~|
	c8 c c |
	g'4. g |
	e8 r r |
	R4. |
	c8 c c |
	c r r |
	R4.*4 |
%A
	g'4.\f ~|
	g ~|
	g8 g g |
	g r r |
	c,4. ~|
	c ~|
	c8 c c |
	c r r |
	d'4. ~|
	d ~|
	d8 g, g |
	g r r |
	g,4. ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	d''8\f r r |
	d r r |
	d r r |
	d r r |
	R4.*10 |
	c8-. r r |
	d-. r r |
%B
	g,-. r r |
	R4.*47 |
	d'4.\f ~|
	d ~|
	d ~|
	d |
	g,8 r r |
	R4. |
	g8 r r |
	R4. |
	c4. |
	d |
	g,8 r r |
	R4. |
	g8 r r |
	R4. |
	c4. |
	d |
%C
	g,8 r r |
	R4.*15 |
	g8\f r r |
	g r r |
	g r r |
	g r r |
	g4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	g4.\f ~|
	g ~|
	g ~|
	g ~|
	g8 r r |
	R4.*9 |
	g,4.\f ~|
	g ~|
	g ~|
	g |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
%D
	R4.*38 |
%E
	c8\f c c |
	c r r |
	c c c |
	c r r |
	g'4. |
	g |
	e8 r r |
	g r r |
	g r r |
	g r r |
	g r r |
	R4.*9 |
	c,8\f c c |
	c r r |
	c c c |
	c r r |
	g'4. |
	g |
	c, ~|
	c8 c c |
	g'4. |
	g |
	e8 r r |
	R4. |
	c8 c c |
	c r r |
	R4.*12 |
%F
	c4.\f ~|
	c ~|
	c8 c c |
	c r r |
	g'4. ~|
	g ~|
	g8 g g |
	g r r |
	g4. ~|
	g ~|
	g8 c, c |
	c r r |
	c4. ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	c4.\f ~|
	c ~|
	c ~|
	c |
	R4.*4 |
	g8\f r r |
	g r r |
	g r r |
	g r r |
	R4.*10 |
	d''8 r r |
	g, r r |
%G
	e r r |
	R4.*47 |
	g4.\f ~|
	g ~|
	g ~|
	g |
	c,8 r r |
	R4. |
	c8 r r |
	R4. |
	c'4. |
	g |
	c,8 r r |
	R4. |
	c8 r r |
	R4. |
	c'4. |
	g |
%H
	e8 r r |
	R4.*3 |
	r8 r c |
	g' g g |
	g4 c,8 |
	g' g g |
	g r r |
	R4. |
}
	R4.*8 |
	g8\f r r |
	g r r |
	g r r |
	g r r |
	g,4.\fermata |
	R4.*5 |
	g'8\f r r |
	c r r |
	g r r |
	e r r |
}>>

violinI = <<\global \relative c' { \key d \major
\repeat volta 2 {
	d8-. r r |
	d-. r r |
	d-. r r |
	d-. r r |
	d d d |
	d d d |
	d d d |
	d d d |
	d''4.:16\f |
	d4.: |
	d4.: |
	d4.: |
	d8 r d-. |
	cis32( b a16) r8 d-. |
	cis32( b a16) r8 d-. |
	cis32( b a16) r8 d-. |
	cis32( b a16) r8 r |
	R4. |
	r8 e-.\p fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	d'\f d d |
	d a fis |
	b b b |
	b g e |
	a fis d |
	g e cis |
	d r fis,16 d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis'16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
	r8 e-.\f fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	d'\f d d |
	d a fis |
	b b b |
	b g e |
	a fis d |
	g e cis |
	d' a fis |
	b g e |
	a fis d |
	g e cis |
	d d d |
	d fis a |
	d-. gis,-. gis-. |
	gis-. r r |
	gis(\p a gis) |
	a( b a) |
	b-. e,-. e-. |
	e-. r r |
%A
	a,4.:\f |
	a: |
	a': |
	a: |
	a: |
	gis: |
	gis: |
	b: |
	b: |
	a: |
	a: |
	cis: |
	b: |
	b: |
	b: |
	b: |
	b8\p r r |
	b-. b-. b-. |
	b-. r r |
	b-. b-. b-. |
	c4.:\f |
	c: |
	c: |
	c: |
	c8\p r r |
	c-. c-. c-. |
	c-. r r |
	c-. c-. c-. |
	cis!-.\f a-. e-. |
	cis'-. a-. e-. |
	cis' a e |
	cis' a e |
	cis'( d dis) |
	e-. e-. e-. |
	cis( d dis) e-. e-. e-. |
	cis,,( d dis) e( eis fis |
	gis a b) |
	c( cis d |
	dis e eis) |
	fis-. r r |
	<fis, d' b'>-. r r |
	<e b' gis'>-. r r |
%B
	<e cis' a'>-. r r |
	r a-.\p b-. |
	cis-. b-. a-. |
	gis4( a8) |
	b4. |
	r8 b-. cis-. |
	d-. cis-. b-. |
	a4( b8) |
	cis4. |
	r8 cis-. d-. |
	e-. r eis( |
	fis) r gis( |
	a) r eis( |
	fis) r gis( |
	a) r e!-. |
	d-. e-. fis-. |
	cis4.( |
	b8) a-. b-. |
	cis-. b-. a-. |
	gis-. r a-. |
	b4.\trill |
	r8 b-. cis-. |
	d-. cis-. b-. |
	a-. r b-. |
	cis4.\trill |
	r8 cis-. d-. |
	e4.\trill |
	r8 cis-. d-. |
	e4.\trill |
	r8 cis-. d-. |
	\appoggiatura fis e-. d-. cis-. |
	b-. r e-. |
	d4( cis8) |
	r cis-. d-. |
	e4.\trill |
	r8 cis-. d-. |
	e4.\trill |
	r8 cis-. d-. |
	\appoggiatura fis e-. d-. cis-. |
	b r e |
	a, r a,\f |
	a'16 gis fis e d cis |
	b8 b b |
	b'16 a gis fis e d |
	cis8 r e |
	cis'16 b a gis fis e |
	d8 d d |
	d'16 cis b a gis fis |
	e8 r r |
	<e b' gis'> r r |
	<e b' b'> r r |
	<e' d'> r r |
	cis'( a) a-. |
	a( e) e-. |
	cis'( a) a-. |
	a( e) e-. |
	<fis d d,> r r |
	<gis b, e,> r r |
	cis( a) a-. |
	a( e) e-. |
	cis'( a) a-. |
	a( e) e-. |
	<fis d d,> r r |
	<gis b, e,> r r |
%C
	<a cis, e,> r16 a, b cis |
	d cis d e fis gis |
	a8 r16 a,, b cis |
	d cis d e fis gis |
	a8 r r |
	a\p r r |
	a r r |
	a r r |
	a a a |
	a a a |
	a a a |
	a a a |
	a4.: |
	a: |
	a: |
	a: |
	cis'8-.\f cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	e4.\fermata |
	g,,8-.\p g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	g-. g( e) |
}
\repeat volta 2 {
	d r r |
	d r r |
	d r r |
	d r r |
	d d d |
	d d d |
	d d d |
	d d d |
	c''4.:\f |
	c: |
	c: |
	c: |
	c8 r c-. |
	b32( a g16) r8 c-. |
	b32( a g16) r8 c-. |
	b32( a g16) r8 c-. |
	b32( a g16) r8 r |
	R4. |
	r8 fis-.\p g-. |
	b( a) g-. |
	r fis-. g-. |
	b( a) g-. |
	r e-.\f fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r cis-.\p d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	d'4.:\f |
	d: |
	d: |
	d: |
%D
	d,4.\p ~|
	d8 g-. b-. |
	b( c) c-. |
	c r r |
	c4. ~|
	c8 fis,-. a-. |
	c,( b) b-. |
	b r r |
	b'4.( |
	c) |
	b( |
	e,8) r r |
	a4.( |
	bes) |
	a( |
	d,8) r r |
	g4. ~|
	g8( a b) |
	\appoggiatura a g4. ~|
	g8( fis e) |
	\appoggiatura e d4 d8 |
	d-. e-. fis-. |
	fis4.( |
	e8) r r |
	\appoggiatura a g4. ~|
	g8 a-. b-. |
	\appoggiatura a g4. ~|
	g8 fis-. e-. |
	e( d) d-. |
	d-. e-. fis-. |
	e r r |
	d-. e-. fis-. |
	e r r |
	d-. e-. fis-. |
	a-. a-.\f a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d d d |
	d a fis |
	b b b |
	b g e |
	a fis d |
	g e cis |
	d r d' |
	cis32( b a16) r8 d |
	cis32( b a16) r8 d |
	cis32( b a16) r8 d |
	cis32( b a16) r8 r |
	R4. |
	r8 e-.\p f-. |
	a( g) f-. |
	r e-. f-. |
	a( g) f-. |
	r e-. fis!-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	d'\f d d |
	d a fis |
	b b b |
	b g e |
	a fis d |
	g e cis |
	d' a fis |
	b g e |
	a fis d |
	g e cis |
	d d d |
	d fis a |
	d-. gis,-. gis-. |
	gis r r |
	gis(\p a gis) |
	a( b a) |
	b-. e,-. e-. |
	e-. r r |
	a,\f a a |
	a cis e |
	g-. cis,-. cis-. |
	cis-. r r |
	cis'(\p d cis) |
	d( e d) |
	e-. a,-. a-. |
	a-. r r |
%F
	d,4.:\f |
	d: |
	d': |
	d: |
	d: |
	cis: |
	cis: |
	e: |
	e: |
	d: |
	d: |
	fis,: |
	e: |
	e: |
	e: |
	e: |
	e8\p r r |
	e-. e-. e-. |
	e r r |
	e-. e-. e-. |
	d'4.:\f |
	d: |
	d: |
	d: |
	d8\p r r |
	d-. d-. d-. |
	d r r |
	d-. d-. d-. |
	d-.\f a-. fis-. |
	a-. fis-. d-. |
	d'-. a-. fis-. |
	a-. fis-. d-. |
	fis( g gis) |
	a-. a-. a-. |
	fis( g gis) |
	a-. a-. a-. |
	fis,( g gis) |
	a( ais b |
	cis d e) |
	f( fis g |
	gis a ais) |
	b-. r r |
	<g! b,> r r |
	<e a,> r r |
%G
	<d d,> r r |
	r d-.\p e-. |
	fis-. e-. d-. |
	cis4( d8) |
	e4. |
	r8 e-. fis-. |
	g-. fis-. e-. |
	d4( e8) |
	fis4. |
	r8 fis-. g-. |
	a-. r ais( |
	b) r cis( |
	d) r ais( |
	b) r cis( |
	d) r a,-. |
	g-. a-. b-. |
	fis4.( |
	e8) d-. e-. |
	fis-. e-. d-. |
	cis-. r d-. |
	e4.\trill |
	r8 e-. fis-. |
	g-. fis-. e-. |
	d-. r e-. |
	fis4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	\appoggiatura b a-. g-. fis-. |
	e-. r a-. |
	g4( fis8) |
	r fis'-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	a4.\trill |
	r8 fis-. g-. |
	\appoggiatura b a-. g-. fis-. |
	e r a |
	d, r d,\f |
	d'16 cis b a g fis |
	e8 e e |
	e'16 d cis b a g |
	fis8 r a |
	fis'16 e d cis b a |
	g8 g g |
	g'16 fis e d cis b |
	a8 r r |
	<a e'> r r |
	<a g'> r r |
	<a cis'> r r |
	d'( a) a-. |
	fis( d) d-. |
	d'( a) a-. |
	fis( d) d-. |
	<d, d' b'> r r |
	<a e' cis'> r r |
	d''( a) a-. |
	fis( d) fis-. |
	d'( a) a-. |
	fis( d) d-. |
	<d, d' b'> r r |
	<a e' cis'> r r |
%H
	<a fis' d'> r fis'16 d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis'16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
}
	r8 e-.\p fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r e-. fis-> |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	cis'-.\f cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	e4.\fermata |
	g,,8-.\p g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	g-. g( e) |
	d r r |
	<e cis' a'>\f r r |
	<d a' fis'> r r |
	<e cis' a'> r r |
	<d d' d'> r r |
}>>

violinII = <<\global \relative c' { \key d \major
\repeat volta 2 {
	d8-. r r |
	d-. r r |
	d-. r r |
	d-. r r |
	d d d |
	d d d |
	d d d |
	d d d |
	<a' fis'>4.:16\f |
	q: |
	q: |
	q: |
	q8 r fis'-. |
	e32( d cis16) r8 fis-. |
	e32( d cis16) r8 fis-. |
	e32( d cis16) r8 fis-. |
	e32( d cis16) r8 r |
	R4. |
	r8 cis,-.\p\downbow d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	a'16\f a' a a a a |
	a8 r r |
	d,,16 d' d d d d |
	d8 r r |
	fis, a fis |
	e g e |
	d r fis16\downbow d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis'16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
	r8 cis,,-.\p d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d |
	a'16\f a' a a a a |
	a8 r r |
	d,,16 d' d d d d |
	d8 r r |
	fis, a fis |
	e g e |
	d16 d' d d d d |
	d d d d d d |
	fis,8 a fis |
	e g e |
	fis fis fis |
	fis a a |
	<d d,>16 q q q q q |
	q8 r r |
	gis,8(\p a gis) |
	a( b a) |
	b-. e,-. e-. |
	e-. r r |
%A
	<e cis>4.:\f |
	q8 r r |
	cis'16 d cis b a gis |
	a8-. b(-. cis)-. |
	<d, b>4.: |
	q8 r r |
	d'16 e d cis b a |
	gis8-. a(-. b)-. |
	<e, cis>4.: |
	q8 r r |
	e'16 fis e d cis b |
	a8-. b(-. cis)-. |
	<a fis'>4.: |
	q: |
	q: |
	q: |
	<fis a>8\p r r |
	q-.\upbow q-. q-. |
	q-. r r |
	q-. q-. q-. |
	<a fis'>4.:\f |
	q: |
	q: |
	q: |
	<fis a>8\p r r |
	q-. q-. q-. |
	q-. r r |
	q-. q-. q-. |
	<e cis' a'>\f r r |
	q r r |
	q r r |
	q r r |
	cis'(\downbow d dis) e-. e-. e-. |
	cis( d dis) |
	e-. e-. e-. |
	cis,( d dis) |
	e( eis fis |
	gis a b) |
	c( cis d |
	dis e eis) |
	fis-. r r |
	<fis, d' b'> r r |
	<e b' gis'>-. r r |
%B
	<e cis' a'>-. r r |
	r cis-.\p\downbow d-. |
	e-. d-. cis-. |
	b4( a8) |
	gis4. |
	r8 gis'-.\downbow a-. |
	fis-. e-. d-. |
	cis4( gis8) |
	a4. |
	r8 a-.\downbow b-. |
	cis-. a-. cis-. |
	d-. a-. d-. |
	cis-. a-. cis-. |
	d-. a-. d-. |
	cis r cis'-. |
	b-. cis-. d-. |
	a4.( |
	gis8) r r |
	r e e |
	r e e |
	r e e |
	e r r |
	r e e |
	r e e |
	r e e |
	e r r |
	\repeat unfold 42 e |
	e r a,\f |
	a'16 gis fis e d cis |
	b8 b(-. b)-. |
	b'16 a gis fis e d |
	cis8 r e |
	cis'16 b a gis fis e |
	d8 d(-. d)-. |
	d'16 cis b a gis fis |
	e4.: |
	b': |
	<b gis'>: |
	q: |
	<a a'>: |
	q: |
	q: |
	q: |
	<d, a' fis'>8 r r |
	<e d'> r r |
	<a a'>4.: |
	q: |
	q: |
	q: |
	<d, a' fis'>8 r r |
	<e d'> r r |
%C
	<a, e' cis'> r16 a' b cis |
	d cis d e fis gis |
	a8 r16 a,, b cis |
	d cis d e fis gis |
	a8 r r |
	a\p r r |
	a r r |
	a r r |
	a a a |
	a a a |
	a a a |
	a a a |
	a4.: |
	a: |
	a: |
	a: |
	cis8-.\f cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	<cis e>4.\fermata |
	b,8-.\p\downbow b( cis) |
	b-. b( cis) |
	b-. b( cis) |
	b-. b( cis) |
}
\repeat volta 2 {
	d8 r r |
	d r r |
	d r r |
	d r r |
	d d d |
	d d d |
	d d d |
	d d d |
	<a' fis'>4.:\f |
	q: |
	q: |
	q: |
	q8 r a'-. |
	g32( fis e16) r8 a-. |
	g32( fis e16) r8 a-. |
	g32( fis e16) r8 a-. |
	g32( fis e16) r8 r |
	R4. |
	r8 dis,-.\downbow\p e-. |
	g( fis) e-. |
	r8 dis-. e-. |
	g( fis) e-. |
	<a a'>4.:\f |
	q: |
	q: |
	q: |
	fis':\p |
	fis: |
	fis: |
	fis: |
	d,8\f a''-. b-. |
	d( c) b-. |
	r a-.\downbow b-. |
	d( c) b-. |
%D
	r <g, b>\p q |
	r q q |
	r <fis a> q |
	q q q |
	r q q |
	r q q |
	r g g |
	g g g |
	r g g |
	r fis fis |
	r g( a |
	b a g) |
	r fis fis |
	r e e |
	r fis( g |
	a g fis) |
	r <g b> q |
	r q q |
	r <g a> q |
	r <e a> q |
	r <fis a> q |
	r q q |
	r d' d |
	r cis cis |
	r <g b> q |
	r q q |
	r <g a> q |
	r <e a> q |
	r <fis a> q |
	r <fis a> q |
	<e a> r r |
	a-. cis-. d-. |
	cis r r |
	a-. cis-. d-. |
	cis-. a-.\f a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d16 fis fis fis fis fis |
	a8 r r |
	d,,16 d' d d d d |
	d8 r r |
	fis, a fis |
	e g e |
	fis r fis' |
	e32( d cis16) r8 fis |
	e32( d cis16) r8 fis |
	e32( d cis16) r8 fis |
	e32( d cis16) r8 r |
	R4. |
	r8 cis,-.\p d-. |
	f( e) d-. |
	r cis-. d-. |
	f( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	a'16\f a' a a a a |
	a8 r r |
	d,,16 d' d d d d |
	d8 r r |
	fis, a fis |
	e g e |
	d16 d' d d d d |
	d d d d d d |
	fis,8 a fis |
	e g e |
	fis fis fis |
	fis a a |
	<d, d'>16 q q q q q |
	q8 r r |
	gis(\p a gis) |
	a( b a) |
	b-. e,-. e-. |
	e-. r r |
	cis\f cis cis |
	cis e a |
	<g a>4.:\p |
	<g a>8 r r |
	cis(\p d cis) |
	d( e d) |
	e-. a,-. a-. |
	a-. r r |
%F
	<fis a>4.:\f |
	q8 r r |
	fis'16 g fis e d cis |
	d8-. e(-. fis)-. |
	<g, a>4.: |
	q8 r r |
	g'16 a g fis e d |
	cis8-. d(-. e)-. |
	<fis, a>4.: |
	q8 r r |
	a'16 b a g fis e |
	d8-. e(-. fis)-. |
	d4.: |
	d: |
	d: |
	d: |
	d8\p r r |
	d-. d-. d-. |
	d r r |
	d-. d-. d-. |
	<d f>4.:\f |
	q: |
	q: |
	q: |
	q8\p r r |
	f,-. f-. f-. |
	f r r |
	fis-. fis-. fis-. |
	<d a' fis>\f r r |
	q r r |
	q r r |
	q r r |
	fis(\downbow g gis) |
	a-. a-. a-. |
	fis( g gis) |
	a-. a-. a-. |
	fis( g gis) |
	a( ais b |
	cis d e) |
	f( fis g |
	gis a ais) |
	b-. r r |
	<e, b e,> r r |
	<cis e, a,> r r |
%G
	<d fis, a,> r r |
	r fis,-.\downbow g-. |
	a-. g-. fis-. |
	e4( d8) |
	cis4. |
	r8 cis'-.\downbow d-. |
	b-. a-. g-. |
	fis4( cis8) |
	d4. |
	r8 d-.\downbow e-. |
	fis-. d-. fis-. |
	g-. d-. g-. |
	fis-. d'-. fis-. |
	g-. d-. g-. |
	fis-. r fis,-. |
	e-. fis-. g-. |
	d4.( |
	cis8) r r |
	r a a |
	r a a |
	r a a |
	a r r |
	r a a |
	r a a |
	r a a |
	a r r |
	\repeat unfold 24 a |
	\repeat unfold 18 a' |
	a r d,\f |
	d'16 cis b a g fis |
	e8 e(-. e)-. |
	e'16 d cis b a g |
	fis8 r a |
	fis'16 e d cis b a |
	g8 g(-. g)-. |
	g'16 fis e d cis b |
	a4.: |
	cis: |
	e: |
	g: |
	<fis a,>: |
	q: |
	q: |
	q: |
	<g b, d,>8 r r |
	<g, a,> r r |
	<a fis'>4.: |
	q: |
	q: |
	q: |
	<d, b' g'>8 r r |
	<a g'> r r |
%H
	<a fis'> r fis'16\downbow d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis'16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
}
	r8 cis,,-.\p d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	r cis-. d-. |
	fis( e) d-. |
	cis'-.\f cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	cis-. cis( d) |
	<cis e>4.\fermata |
	b,8-.\downbow b( a) |
	b-. b( a) |
	b-. b( a) |
	b-. b( cis) |
	d r r |
	<e cis' a'>\f r r |
	<d a' fis'> r r |
	<e cis' a'> r r |
	<d a' fis'> r r |
}>>

viola = <<\global \relative c'' { \key d \major \clef "alto"
\repeat volta 2 {
	R4.*8 |
	<a d,>16\f q q q q q |
	q4.:16 |
	q: |
	q: |
	q8 r a-. |
	a-. r a-. |
	a-. r a-. |
	a-. r a-. |
	a4.: |
	a: |
	a:\p |
	a: |
	a: |
	a: |
	a: |
	a: |
	a: |
	a: |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	d8 r fis16 d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a4.: |
	a: |
	a:\p |
	a: |
	a: |
	a: |
	a: |
	a: |
	a: |
	a: |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	fis'8 fis fis |
	g g g |
	a a a |
	a, a a |
	d fis a |
	d4 cis8 |
	b b b |
	b r r |
	d,4.(\p |
	fis |
	b,8) r r |
	R4. |
%A
	a8\f a a |
	a-. cis-. e-. |
	a-. cis-. cis-. |
	cis-. r r |
	b, b b |
	b-. d-. gis-. |
	b-. d-. d-. |
	d-. r r |
	cis, cis cis |
	cis-. e-. a-. |
	cis-. e-. e-. |
	e-. r r |
	\repeat unfold 4 <<fis,4.: \\ d4.:>> |
	d8\p r r |
	d-. d-. d-. |
	d-. r r |
	d-. d-. d-. |
	<<s4.\f \repeat unfold 4 <<fis4.: \\ dis:>> >> |
	dis8-.\p r r |
	dis-. dis-. dis-. |
	dis-. r r |
	dis-. dis-. dis-. |
	e-.\f r r |
	e-. r r |
	e-. r r |
	e-. r r |
	R4.*4 |
	cis,8( d dis) |
	e( eis fis |
	gis a b) |
	c( cis d |
	dis e eis) |
	fis-. r r |
	fis-. r r |
	e-. r r |
%B
	a,-. cis-. e-. |
	a-. r r |
	R4.*2 |
	e,8-.\p gis-. b-. |
	e-. r r |
	R4.*2 |
	a,8-. cis-. e-. |
	a-. r r |
	a-. r a-. |
	a-. r b( |
	a) r a-. |
	a-. r b( a) r a-. |
	a-. a-. a-. |
	e( dis e) |
	e r r |
	r <cis a> q |
	r q q |
	r <b gis> q |
	q r r |
	r q q |
	r <b d> q |
	r <a cis> q |
	q r r |
	\repeat unfold 15 q |
	<gis b> q q |
	\repeat unfold 21 <a cis> |
	<gis b> q q |
	<a cis> r a\f |
	a'16 gis fis e d cis |
	b8 b b |
	b'16 a gis fis e d |
	cis8 r e |
	cis'16 b a gis fis e |
	d8 d d |
	d'16 cis b a gis fis |
	e4.: |
	e: |
	e: |
	e: |
	<e cis'>: |
	q: |
	q: |
	q: |
	d8 d d |
	e e e |
	<e cis'>4.: |
	q: |
	q: |
	q: |
	d8 d d |
	e e e |
%C
	e r r |
	R4. |
	r8 r16 a, b cis |
	d cis d e fis gis |
	a8 r r |
	R4.*11 |
	g8-.\f g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	<g a>4.\fermata |
	R4.*4 |
}
\repeat volta 2 {
	R4.*8 |
	dis4.:\f |
	dis: |
	dis: |
	dis: |
	dis8 r fis-. |
	g-. r fis-. |
	g-. r fis-. |
	g-. r fis-. |
	g16 b b b b b |
	b4.: |
	b:\p |
	b: |
	b: |
	b: |
	a8-.\f e-. fis-. |
	a( g) fis-. |
	r e-. fis-. |
	a( g) fis-. |
	r ais,-.\p b-. |
	d( cis) b-. |
	r ais-. b-. |
	d( cis) b-. |
	r a'-.\f b-. |
	d( c) b-. |
	r a-. b-. |
	d( c) b-. |
%D
	r d,\p d |
	r d d |
	r d d |
	d d d |
	r d d |
	r d d |
	r \repeat unfold 5 <<d \\ b>> |
	r e e |
	r dis dis |
	r e( fis |
	g fis e) |
	r d d |
	r cis cis |
	r d( e |
	fis e d) |
	r e e |
	r e e |
	r e e |
	r cis cis |
	r d d |
	r d d |
	r a' a |
	r a a |
	r e e |
	r e e |
	r e e |
	r cis cis |
	r d d |
	r d d |
	cis r r |
	fis-. e-. d-. |
	a' r r |
	fis-. e-. d-. |
	a'-. a-.\f a-. |
	gis( a) a-. |
	ais( b) b-. |
	bis( cis) cis-. |
%E
	d d d |
	fis, r r |
	g! g g |
	g r r |
	a4. |
	a, |
	d8 r a' |
	a r a |
	a r a |
	a r a |
	<<{\repeat unfold 10 a4.:} {s4.*2 | s4.\p | }>> |
	fis8\f fis fis |
	fis r r |
	g g g |
	g r r |
	a4. |
	a, |
	fis'8 fis fis |
	g g g |
	a a a |
	a, a a |
	d fis a |
	d4 cis8 |
	b b b |
	b r r |
	d,4.(\p |
	fis |
	b,8) r r |
	R4. |
	a8\f cis e |
	g4. |
	e8-. e-. e-. |
	e-. r r |
	e4.(\p |
	fis |
	g8) r r |
	R4. |
%F
	d,8-.\f d-. d-. |
	d-. fis-. a-. |
	d-. fis-. fis-. |
	fis-. r r |
	e,-. e-. e-. |
	e-. g-. cis-. |
	e-. g-. g-. |
	g-. r r |
	fis fis fis |
	fis d a |
	fis-. a-. a-. |
	a-. r r |
	<g' b>4.: |
	q: |
	q: |
	q: |
	q8\p r r |
	q-. q-. q-. |
	q-. r r |
	q-. q-. q-. |
	<gis b>4.:\f |
	q: |
	q: |
	q: |
	q8\p r r |
	<gis, b>-. q-. q-. |
	q r r |
	q-. q-. q-. |
	a\f r r |
	a' r r |
	a r r |
	a r r |
	R4.*4 |
	fis,8( g gis) |
	a( ais b |
	cis d e) |
	f( fis g |
	gis a ais) |
	b-. r r |
	b-. r r |
	a-. r r |
%G
	d,-. fis-. a-. |
	d-. r r |
	R4.*2 |
	a,8-.\p cis-. e-. |
	a-. r r |
	R4.*2 |
	d,,8-. fis-. a-. |
	d-. r r |
	d-. r d-. |
	d-. r e( |
	d) r d'-. |
	d-. r e( |
	d) r d,-. |
	d-. d-. d-. |
	a( gis a) a-. r r |
	r <fis d> q |
	r q q |
	r <e cis> q |
	q r r |
	r q q |
	r <g e> q |
	r <fis d> q |
	q r r |
	\repeat unfold 15 q |
	<e cis> q q |
	<fis d> q q |
	q q q |
	\repeat unfold 15 <d' fis> |
	<cis e> q q |
	<d fis> r d,\f |
	d'16 cis b a g fis |
	e8 e e |
	e'16 d cis b a g |
	fis8 r a |
	fis'16 e d cis b a |
	g8 g g |
	g'16 fis e d cis b |
	a4.: |
	a': |
	a: |
	<a e>: |
	<fis d'>: |
	q: |
	q: |
	q: |
	g8 g g |
	a a a |
	<fis d'>4.: |
	q: |
	q: |
	q: |
	g8 g g |
	a a a |
%H
	a r8 fis16 d |
	a'8-. a-. a-. |
	a4 fis16 d |
	a'8-. a-. a-. |
	a r fis16 d |
	a'8 a a |
	a4 fis16 d |
	a'8 a a |
	a r r |
	R4. |
}
	<<{\repeat unfold 8 {a4.:}} s4.\p>> |
	g8-.\f g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	g-. g( fis) |
	<a g>4.\fermata |
	R4.*5 |
	a8 r r |
	d r r |
	a r r |
	d, r r |
}>>

cello = \fagottoII
