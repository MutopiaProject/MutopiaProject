\version "2.18.0"

global = {\tempo "Andante" \time 3/4 s2.*29 \mark A s2.*27 \mark B
          s2.*35 \mark C s2.*22 \mark D s2.*22 \bar "||"}
midiTempo = 70

flautoI = <<\global \relative c''' { \key g \major
	R2. |
	b2( d4) |
	c r r |
	a2( c4) |
	b r r |
	R2.*2 |
	cis2.\f |
	d8.( c!16) c4 r |
	R2.*3 |
	a16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	g4 r r |
	R2. |
	d2.\p( |
	c4) r r |
	c2.( |
	b4) r r |
	R2.*2 |
	cis2. |
	d8.( c16) c4 r |
	R2.*3 |
	d2(\fp c4) |
	b2(\fp a8 c) |
%A
	b4 r r |
	R2.*3 |
	d'2.\p |
	cis4( b a) |
	g( fis e) |
	d r r |
	a'16.(\f g32) g8-. r4 r |
	d'16.(\f cis32) cis8-. r4 r |
	R2.*2 |
	a16.(\f g32) g8-. r4 r |
	d'16.(\f cis32) cis8-. r4 r |
	R2.*4 |
	r4 r8 a\p a a |
	a4( cis d) |
	R2. |
	r4 fis,2 |
	e(\cresc cis'4) |
	d\f a2 |
	e'4 g,2 |
	d'4 fis,2 |
	b8( g) fis4 e8.\trill d32 e |
%B
	d4 r r |
	R2.*5 |
	d4(\f g fis) |
	e( b' a) |
	gis2.\p |
	a4 g! r |
	R2.*2 |
	c2(\p b4) ~|
	b2( a4) |
	fis( g a) |
	b( dis, e) |
	c'(\f b a) |
	g( fis e) |
	e16( dis) dis8-. r4 r |
	r r c'16(\f b c a) |
	a( g) g8-. r4 r |
	R2.*3 |
	d2.(\p |
	c4) r r |
	c2.( |
	c8.) b16 b4 r |
	R2.*5 |
	d2(\fp c4) |
	b2(\fp a8 c) |
%C
	b4 r r |
	R2.*4 |
	g2.\p |
	fis'4( e' d) |
	R2.*2 |
	d,16.(\f c32) c8-. r4 r |
	g'16.(\f fis32) fis8-. r4 r |
	R2.*2 |
	d'16.(\f c32) c8-. r4 r |
	g16.(\f fis32) fis8-. r4 r |
	R2.*4 |
	r4 r8 d' d d |
	d2. |
	R2. |
%D
	g,4(\f c b) |
	a( e' d) |
	R2.*2 |
	cis,2.\p |
	d8.( c16) c4 r |
	R2.*4 |
	r4 b'2\p |
	a2.\cresc |
	g4\f d'2 |
	a4 c2 |
	g4 d'2 |
	g,8( e') a,( c) b-. b-. |
	b2 r4^\fermatacad |
	R2.*2 |
	a16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a4( g) r |
}>>

flautoII = <<\global \relative c''' { \key g \major
	R2. |
	g2( b4) |
	a r r |
	fis2( a4) |
	g r r |
	R2.*2 |
	g4(\f a bes) |
	a a r |
	R2.*3 |
	b,2(\fp c4) |
	b2(\fp a8 c) |
	b4 r r |
	R2. |
	b2.(\p |
	a4) r r |
	a2.( |
	g4) r r |
	R2.*2 |
	g4( a bes) |
	a a r |
	R2.*3 |
	b2(\fp a4) |
	g2(\fp fis8 a) |
%A
	g4 r r |
	R2.*3 |
	b'2.\p |
	a4( cis, d) |
	e( d cis) |
	d r r |
	e\f r r |
	g\f r r |
	R2.*2 |
	cis,4\f r r |
	e\f r r |
	R2.*4 |
	r4 r8 a,\p a a |
	a'2. |
	R2. |
	r4 d,2 ~|
	d4(\cresc cis g') |
	fis\f fis2 |
	g4 e2 |
	fis4 d2 |
	b8( e) d4 cis8.\trill b32 cis |
%B
	d4 r r |
	R2.*5 |
	d4(\f g fis) |
	e( b' a) |
	d,(\p e f) |
	e e r |
	R2.*2 |
	a2(\p g4) ~|
	g2( fis4) |
	dis( e fis) |
	g( a, g) |
	a'(\f g fis) |
	e( dis cis) |
	cis16( b) b8-. r4 r |
	r r fis'\f |
	fis16( g) g8-. r4 r |
	R2.*3 |
	b,2.(\p |
	a4) r r |
	a2. ~|
	a2 r4 |
	R2.*5 |
	b2(\fp a4) |
	g2(\fp fis8 a) |
%C
	g4 r r |
	R2.*4 |
	e'2.\p |
	d4( fis g) |
	R2.*2 |
	a,4\f r r |
	c\f r r |
	R2.*2 |
	a'4\f r r |
	a,\f r r |
	R2.*4 |
	r4 r8 d\p d d |
	d2. |
	R2. |
%D
	g4(\f c b) |
	a( e' d) |
	R2.*2 |
	g,,4(\p a bes) |
	a a r |
	R2.*4 |
	r4 g'2\p ~|
	g4(\cresc fis2) |
	g4\f b2 |
	d,4 a'2 |
	b,4 b'2 |
	e,8( c') fis,( a) g-. g-. |
	g2 r4^\fermatacad |
	R2.*2 |
	b,2(\fp c4) |
	b2(\fp a8 c) |
	fis4( g) r |
}>>

fagottoI = <<\global \relative c' { \key g \major \clef "bass"
	R2. |
	g2. |
	d4 r r |
	d2. |
	g,4 r r |
	R2.*2 |
	e''2.\f |
	d4 d r |
	R2.*3 |
	d2(\fp c4) |
	b2(\fp a4) |
	g r r |
	R2. |
	g2.\p |
	d4 r r |
	d2. |
	g,4 r r |
	R2.*2 |
	e''2. |
	a,4 d r |
	R2.*3 |
	d2(\fp c4) |
	b2(\fp a4) |
%A
	g4 r r |
	R2.*3 |
	e'2.\p |
	e2( g,4) |
	a( c g') |
	fis r r |
	e,2(\fp fis4) |
	g2(\fp fis4) |
	R2.*2 |
	cis'2(\fp d4) |
	e2(\fp dis4) |
	e8 r r4 r |
	R2.*4 |
	fis4(\p e d) |
	R2. |
	r4 fis2 |
	e2.\cresc |
	d4\f fis2 |
	e4 g2 |
	fis4 a,2 |
	g8 g a a a, a |
%B
	d4 r r |
	R2.*5 |
	d'4(\f b a) |
	gis( g fis) |
	b2.\p |
	e,4 a r |
	R2.*6 |
	b,2.\f ~|
	b2. ~|
	b4 r r |
	r r a' |
	g r r |
	R2.*3 |
	g2.\p |
	d4 r r |
	d2. |
	dis4 r r |
	R2.*5 |
	d'2(\fp c4) |
	b2(\fp a4) |
%C
	g4 r r |
	R2.*4 |
	a2.\p ~|
	a2 d,4 |
	R2.*2 |
	a'2(\fp b4) |
	c2(\fp b4) |
	R2.*2 |
	fis2(\fp g4) |
	a2(\fp gis4) |
	a8 r r4 r |
	R2.*4 |
	d4(\p fis g) |
	R2. |
%D
	g4(\f e d) |
	cis( c b) |
	R2.*2 |
	e2.\p |
	a,4 d r |
	R2.*4 |
	r4 d\p g ~|
	g(\cresc fis2) |
	g4\f d2 ~|
	d2. ~|
	d4 d2 |
	e4 cis8 a b e |
	d,2 r4^\fermatacad |
	R2.*2 |
	d'2(\fp c4) |
	b2(\fp a4) |
	c4( b) r |
}>>

fagottoII = <<\global \relative c { \key g \major \clef "bass"
	R2. |
	g2. |
	d'4 r r |
	d,2. |
	g4 r r |
	R2.*2 |
	bes'4(\f a g) |
	fis fis r |
	R2.*3 |
	b2(\fp a4) |
	g2(\fp fis4) |
	g r r |
	R2. |
	g,2.\p |
	d'4 r r |
	d,2. |
	g4 r r |
	R2.*2 |
	bes'4( a g) |
	fis fis r |
	R2.*3 |
	b2(\fp a4) |
	g2( fis4) |
%A
	g4 r r |
	R2.*3 |
	gis2.\p |
	a4( g! fis) |
	g( a2) |
	d,4 r r |
	cis2(\fp d4) |
	e2(\fp d4) |
	R2.*2 |
	e2(\fp fis4) |
	g2(\fp fis4) |
	g8 r r4 r |
	R2.*4 |
	a2.\p |
	R2. |
	r4 d2 ~|
	d4(\cresc cis2) |
	d4\f a2 ~|
	a2. |
	a4 fis2 |
	g8 g a a a, a |
%B
	d4 r r |
	R2.*5 |
	d4(\f b a) |
	gis( g fis) |
	f'(\p e d) |
	cis cis r |
	R2.*6 |
	b2.\f ~|
	b2. ~|
	b4 r r |
	r r fis' |
	g r r |
	R2.*3 |
	g,2.\p |
	d'4 r r |
	d,2. |
	dis4 r r |
	R2.*5 |
	b''2(\fp a4) |
	g2(\fp fis4) |
%C
	g4 r r |
	R2.*4 |
	cis,2.\p |
	d4( c b) |
	R2.*2 |
	fis'2(\fp g4) |
	a2(\fp g4) |
	R2.*2 |
	a,2(\fp b4) |
	c2(\fp b4) |
	c8 r r4 r |
	R2.*4 |
	b'4(\p a g) |
	R2. |
%D
	g4(\f e d) |
	cis( c b) |
	R2.*2 |
	bes'4(\p a g) |
	fis fis r |
	R2.*4 |
	r4 b2\p |
	a\cresc c4 |
	b\f b2 |
	a4 c2 |
	b4 g2 |
	c4 a8 fis g g |
	d2 r4^\fermatacad |
	R2.*2 |
	b'2(\fp a4) |
	g2(\fp fis4) |
	fis( g) r |
}>>

cornogI = <<\global \relative c'' {
	c4 g e |
	c r r |
	g' g g |
	g r r |
	g r r |
	R2.*2 |
	c4\f d c |
	d d r |
	R2.*3 |
	c2.\fp |
	g\fp ~|
	g4 r r |
	c\f g e |
	c\p r r |
	g'\f g g |
	g\p r r |
	R2.*8 |
	c2.\fp |
	g2.\fp ~|
%A
	g4 r r |
	R2.*7 |
	d'4\f r r |
	d r r |
	R2.*2 |
	d4\f r r |
	d r r |
	R2.*5 |
	d2.\p |
	R2. |
	d2. ~|
	d\cresc |
	d\f |
	d |
	d |
	e4 d d |
%B
	d r r |
	R2.*5 |
	g,2.\f ~|
	g |
	R2.*6 |
	e2.\p ~|
	e |
	e\f ~|
	e ~|
	e4 r r |
	r r d' |
	c r r |
	R2.*2 |
	c4\f g e |
	c\p r r |
	g'\f g g |
	g\p r r |
	R2.*6 |
	c2.\fp |
	g\fp ~|
%C
	g4 r r |
	R2.*8 |
	g4\f r r |
	g r r |
	R2.*2 |
	g4\f r r |
	g r r |
	R2.*5 |
	g2.\p |
	R2. |
%D
	c2.\f ~|
	c |
	R2.*8 |
	g2.\p ~|
	g\cresc |
	c\f |
	d |
	c |
	r4 d e8 e |
	g,2 r4^\fermatacad |
	R2.*2 |
	c2.\fp |
	g\fp |
	g2 r4 |
}>>

cornogII = <<\global \relative c'' {
	c4 g e |
	c r r |
	g g g |
	g r r |
	c r r |
	R2.*2 |
	c'4\f d c |
	g g r |
	R2.*3 |
	c,2.\fp |
	g\fp |
	c4 r r |
	c'\f g e |
	c\p r r |
	g\f g g |
	g\p r r |
	R2.*8 |
	c2.\fp |
	g\fp |
%A
	c4 r r |
	R2.*7 |
	d'4\f r r |
	d r r |
	R2.*2 |
	d4\f r r |
	d r r |
	R2.*5 |
	d2.\p R2. |
	d2. ~|
	d\cresc |
	g,\f |
	d' |
	g, |
	c4 d d |
%B
	g, r r |
	R2.*5 |
	g,2.\f ~|
	g |
	R2.*6 |
	e'2.\p ~|
	e |
	e\f ~|
	e ~|
	e4 r r |
	r r g |
	c, r r |
	R2.*2 |
	c'4\f g e |
	c\p r r |
	g\f g g |
	g\p r r |
	R2.*6 |
	c2.\fp |
	g\fp |
%C
	c4 r r |
	R2.*8 |
	g4\f r r |
	g r r |
	R2.*2 |
	g4\f r r |
	g r r |
	R2.*5 |
	g2.\p |
	R2. |
%D
	c2.\f ~|
	c |
	R2.*8 |
	g2.\p ~|
	g\cresc |
	c\f |
	g' |
	e |
	r4 g c8 c |
	g2 r4^\fermatacad |
	R2.*2 |
	c,2.\fp |
	g\fp |
	c2 r4 |
}>>

violinsolo = <<\global \relative c'' { \key g \major
	\tupletSpan 4
	r4 r d |
	d' ~ d16( b) d( b) d( b) g( d) |
	<c d,>4 r c |
	c' ~ c16( a) c( a) c( a) fis( c) |
	<b d,>8 d4(\p b8) d16( c) b a |
	g4( c b) |
	a( e' d) |
	cis8\f cis'4 cis cis8 |
	d8.( c16) c4 r8. c,16\p |
	b8( e) e( a,4) d32( c b a) |
	a16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	g'4^\solo g8.( a16) b8.( c16) |
	e( d) d4 r8 d,4 |
	d'8.( b16) d( b) d( b) d( b) g( d) |
	d( c) c4 r8 c4 |
	c'8.( a16) c( a) c( a) c( a) fis( c) |
	c( b) b8 ~ b16 c( d e) d( c b a) |
	g4( c b) |
	a( e' d) |
	cis8 cis4 cis' cis8 |
	d8.( c16) c32( d e c b a c a) g( fis a fis) e( d) e( c) |
	b16 g' fis e d8. e16 a,8.\trill g32 a |
	g4 r r |
	R2. |
	a'16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
%A
	g8 g16.\trill a32 b8-. b-. b( c) ~|
	c a16.\trill b32 c8-. c-. cis( d) ~|
	d b16.\trill c32 d8( dis e) g, |
	g8.\trill fis32 g fis4 r |
	\appoggiatura fis16 e8 e4 e e8 |
	e4. fis16( g) a( b) cis( d) |
	ais( b) g( e) d4 e8.\trill d32 e |
	d4 r r |
	R2. |
	r4 r d'8-. d-. |
	\tuplet 6/4 {d16( b d b g b) g( e g e cis e)} cis16( a b') a-. |
	a8( g)\trill fis4 r |
	R2. |
	r4 r c'8-. ~ c-. |
	\tuplet 6/4 {r16 b(\trill ais b) d( b) r g(\trill fis g) b( g) r e(\trill dis e) g( e)} |
	d16( cis) b( a) b8( cis) d32( e fis g a b cis d) |
	d16( b) g( e) d4 cis8.\trill b32 cis |
	d8 \appoggiatura a16 a'4 g fis8 ~|
	fis16 e g e d4 \appoggiatura fis16 e8 cis16 a |
	r a'8 a' gis g eis fis16 |
	fis( e!) e8 ~ e32 fis( dis fis e fis d fis) e( fis g fis) e( d cis b) |
	b16( a) a8 ~ a16 d( fis d) a'8-. g32( fis) e( d) |
	e2.\startTrillSpan |
	d8\stopTrillSpan a^\tutti ~ a16( fis) a( fis) a( fis) d( a) |
	a8 g' ~ g16( e) g( e) g( e) cis( a) |
	a8 d' ~ d16( a) d( a) d( a) fis( d) |
	b( e) g( b) a,4 e'8.\trill d32 e |
%B
	d8^\solo d16.\trill e32 fis8-. fis-. fis( g) ~|
	g e16.\trill fis32 g8-. g-. gis( a) ~|
	a fis16.\trill g!32 a8( b cis d) |
	d,4( a' g) |
	e( b' a) |
	a16( g b16.) g32-. g16( fis a16.) fis32 fis16( e g16.) e32-. |
	d4 r r |
	R2. |
	gis8 gis4 d'8 ~ d16 e f( gis,) |
	a8.( g!16) g4 r |
	r r r8. g16 |
	fis8( b) b( e,4) \appoggiatura a16 g( fis32 e) |
	e16( d) d4 d'8 ~ d16( b) g( d) |
	d( cis) c4 c'8 ~ c16( a) fis( c) |
	c4( b a) |
	g( fis e) |
	c''(\f b a) |
	g( fis e) |
	e16( dis) dis4\p dis( d8) ~ |
	d cis4( c8) ~ c16(\f b c a) |
	a( g) g8 r4 r4 |
	R2. |
	g'4 g8.( a16) b8.( cis16) |
	e16( d) d4 r8 d,4 |
	d'8.( b16) d( b) d( b) d( b) g( d) |
	d16( c) c4 r8 c4 |
	c'8.( a16) c( a) c( a) c( a) fis( c) |
	c8.( b16) b4. b8 |
	b16( g') g4 g32( a b a) g8( f) |
	f16( e) e4 d16( c) b(\trill a) b( c) |
	d8.( e16) g,4 a8.\trill g32 a |
	g4 r r |
	R2. |
	a'16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
%C
	g8 g16.\trill a32 b8-. b-. b( c) ~|
	c a16.\trill b32 c8-. c-. cis( d) ~|
	d b16.\trill c32 d8( e fis g) ~|
	g fis16 e \appoggiatura d4 c2\startTrillSpan |
	b4\stopTrillSpan r r |
	\appoggiatura b16 a8 a4 a a8 |
	a4. b16( c) d( e) fis( g) |
	dis( e) e4 \appoggiatura d16 c8 \appoggiatura b16 a8 g\trill |
	\appoggiatura g16 fis8 e16 d d4 r |
	R2. |
	r4 r g8-. g-. |
	\tuplet 3/2 {g16( e g e c e) c( a c a fis a)} fis16 d e''( d) |
	d8( c)\trill b4 r |
	R2. |
	r4 r f8(-. f)-. |
	\tuplet 3/2 {r16 e(\trill dis e) gis-. a-. r a(\trill gis a) b-. cis-. r cis(\trill b cis) dis-. e-.} |
	g,!16( fis) e(\trill d!) e8( fis) g32( a b c d e fis g) |
	g16( e) c( a) g4 fis8.\trill e32 fis |
	g16( d) d4 c b8 ~|
	\tuplet 3/2 {b16 a-. b-. c-. d-. e-.} \appoggiatura e16 g,4 \appoggiatura b16 a8 fis16 d |
	r d'8 d' cis c ais b16 |
	b( a c16.) a32-. a16( g b16.) g32-. g16( fis a16.) fis32-. |
%D
	g4 r r |
	R2. |
	g,4( c b) |
	a( e' d) |
	cis8 cis4 cis' cis8 |
	d8.( c!16) c4 r |
	r r r8. c16 |
	b8( e) e( a,4) \appoggiatura d32 c16( b32 a) |
	g8.( a16) b8.( c16 d8) d, |
	e g c e g16( fis) g( e) |
	e( d) d4 g16( d) d( b) b( g) |
	a2.\startTrillSpan |
	g4\stopTrillSpan r r |
	R2.*2 |
	r4 r b |
	b2 a4\trill\fermata |
	g r r |
	R2.*4 |
}>>

violinI = <<\global \relative c'' { \key g \major
	r4 r d |
	d' ~ d16( b) d( b) d( b) g( d) |
	<c d,>4 r c |
	c' ~ c16( a) c( a) c( a) fis( c) |
	<b d,>8 d4(\p b8) d16( c) b a |
	g4( c b) |
	a( e' d) |
	cis8\f cis'4 cis cis8 |
	d8.( c16) c4 r8. c,16\p |
	b8( e) e( a,4) d32( c b a) |
	a16(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	g4 r r |
	r8 <d d'>4\f q q8 |
	R2. |
	r8 <d c'>4 q q8 |
	R2.*2 |
	g8-.\p g-. g-. g-. g-. g-. |
	g g fis fis g g |
	g g a a bes bes |
	a8.( a'16) a4 r |
	b,!8 c b b fis fis |
	g,16(\fp g') g8 ~ g16 g( fis g) a( b c d) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
%A
	g4 r r8 c\p ~|
	c r r4 r8 d ~|
	d r r b( c b) |
	b8.\trill a32 b a4 r |
	d8 d d d d d |
	cis cis cis cis d d |
	b b a a g g |
	fis4 r a8-. a-. |
	a'16.(\f g32) g8-. r4 a,8-.\p a-. |
	d'16.(\f cis32) cis8-. r4 r |
	d,8\p r cis r a g16( fis) fis8( e)\trill d4 a'8-. a-. |
	a'16.(\f g32) g8-. r4 a,8-.\p a-. |
	d'16.(\f cis32) cis8-. r4 r |
	e,,8\p r b' r e r |
	r e,( d e) fis( a) |
	b b fis fis e e |
	a2. |
	g8 g fis fis cis( e) |
	a4( cis d) |
	dis16( e) e8 e e e e |
	r16 fis fis fis a( fis) fis( d) d( a) a( fis) |
	e2:16\cresc g'16 g cis, cis |
	d8\f a' ~ a16( fis) a( fis) a( fis) d( a) |
	a8 g' ~ g16( e) g( e) g( e) cis( a) |
	a8 d' ~ d16( a) d( a) d( a) fis( d) |
	b( e) g( b) a,4 e'8.\trill d32 e |
%B
	d4 r r8 b8(\p |
	a) r r4 r8 a ~|
	a r r4 r |
	a8 a d d d d |
	d d cis cis d d |
	e r d r <cis e,> r |
	d4(\f g fis) |
	e( b' a) |
	d,,8\p d e e f f |
	e4 <g a,> r8. g16 |
	fis8( b) b( e,4) a32( g fis e) |
	d4. d'8( cis c) ~|
	c c c c b b |
	r b b b a a |
	a4( g fis) |
	e( dis e) |
	c''(\f b a) |
	g( fis e) |
	e16( dis) dis4\p dis( d8) ~|
	d cis4( c8) ~ c16(\f b c a) |
	a( g) g8\p ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	g4 r r |
	r8 <d d'>4 q q8 |
	R2. |
	r8 <d c'>4\f q q8 |
	R2. |
	r8 a'\p a a a a |
	g g g g g( d') |
	r c c( a) a( fis) |
	g g b b fis fis |
	g,16(\fp  g') g8 ~ g16 g( fis g) a( b c d) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
%C
	g4 r r8 c\p ~|
	c r r4 r8 d ~|
	d r r4 r8 g, |
	g g g( e) fis fis |
	g4 r r |
	g8 g g g g g |
	fis-. fis-. fis( a) b( g) |
	g( gis) a( c) e e |
	d4 r d,8-. d |
	d'16.(\f c32) c8-. r4 d,8-.\p d-. |
	g'16.(\f fis32) fis8-. r4 r |
	e8\p r a, r d, c'16( b) |
	b8( a)\trill g4 d'8-. d-. |
	d'16.(\f c32) c8-. r4 d,,8-.\p d-. |
	g'16.(\f fis32) fis8-. r4 r |
	a,,8\p r e' r a r |
	r a( g a) b( d) |
	e e b b a a |
	d,2. e8 c' b( g) fis( a) |
	d4( fis g) |
	e8 r d r c r |
%D
	\appoggiatura b16 g'4(\f c b) |
	a( e' d) |
	g,,8\p g g g g g |
	g g fis fis g g |
	g g a a bes bes |
	a8.( a'16) a4 r8. c,16 |
	b8( e) e( a,4) d32( c b a) |
	g8 g'4 g8( fis) fis-. |
	g( d) d-. d-. d( b) |
	c e e e e e |
	d16 b' b b b( g) g( d) d( b) b( g) |
	a2:\cresc fis'4: |
	g8\f d' ~ d16( b) d( b) d( b) g( d) |
	d8 c' ~ c16( a) c( a) c( a) fis( d) |
	d8 d' ~ d16( b) g( d) b'( g) d( b) |
	e( c) a( e) c'( a) fis( d) b'( g) e( cis) |
	d2 r4^\fermatacad |
	g,16(\fp g') g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a(\fp g) g8 ~ g16 fis( g a) b( c d e) |
	e(\fp d) d8 ~ d16 cis( d e) d( c a fis) |
	a4( g) r |
}>>

violinII = <<\global \relative c' { \key g \major
	\tupletSpan 4
	<d b'>8\mf q4 q q8 ~|
	q q4 q-- ~ q8-. |
	<d c'> q4 q q8 ~|
	q q4 q-- ~ q8-. |
	<d b'>4 r r |
	d8\p d g g g g |
	g g fis fis g g |
	g\f e'4 e e8 |
	d8.( a'16) a4 r8. a,16\p |
	g8 g4 g8( fis) fis-. |
	b,16(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b4 r r |
	r8 <d b'>4\f q q8 ~|
	q\p q4 q q8 |
	<d a'>\f <fis a>4 q q8 |
	<fis a,>\p q4 q q8 |
	<g g,>4 d r |
	d8-. d-. g,-. g-. g-. g-. |
	e' e a a d, d |
	e e4 e' e8 |
	d4 d r |
	d,8 e d d c c |
	b16(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\fp g' d g) g,( d' b d) a( d c d) |
%A
	b4 r r8 b'(\p |
	a) r r4 r8 c( |
	b) r r g4( e'8) |
	d d, r4 r |
	b'8 b b b b b |
	a( e) e-. e-. d( a') |
	g g fis fis cis cis |
	\tuplet 6/4 {d16( fis d a' fis a) d,( fis d a' fis a) d,( fis d a' fis a) |
	a,(\f e' a, a' e a) a,(\p e' a, a' e a) a,( fis' d a' fis a) |
	a,(\f g' e a g a) a,(\p g' e a g a) d,( a' fis d' a d)} |
	b8 r e, r e r |
	cis4( \tuplet 6/4 {d16) fis(\downbow d a' fis a) d,( fis d a' fis a) |
	a,(\f cis a e' cis e) a,(\p cis a e' cis e) a,( d' a, fis' d fis) |
	a,(\f e' a, a' e a) a,(\p e' a, a' e a) dis,( a' fis c' a dis)} |
	e8 r e, r b'\upbow r |
	r cis,( b a) a( d) |
	d d d d cis cis |
	a'4( cis d) |
	b8 b, a a a8.( cis16) d4( cis d) |
	c'16( b) b8 b b b b |
	r16 d\upbow d d fis( d) d( a) a( fis) fis( d) |
	d4:16\cresc cis: e16 e g g |
	<fis a,>8\f q4 q q8 |
	<g a,>8 q4 q q8 |
	<fis a,>8 q4 <a d,> d8 |
	b16( e) g( b) a, d d d cis cis cis cis |
%B
	d4 r4 r8 g,\p ~|
	g r r4 r8 g( |
	fis) r r4 r |
	fis8 fis g g a a |
	b b e, e fis( a) |
	b r <a fis> r <g a,> r |
	d4(\f g fis) |
	e( b' a) |
	<gis b>8\p q4 q q8 |
	a4 <e a,> r8. e16 |
	d8 d4 d8( cis) cis-. |
	d( fis) e2 |
	d8 a' a a g g |
	r g\upbow g g fis fis |
	fis fis g e b b |
	b b c c b b |
	dis'4:\f e: fis: |
	b,: dis,: g: |
	fis8 r fis\p r fis r |
	fis r fis r <fis a,>4\f |
	b,16( g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b4 r r |
	r8 <d b'>4\f q q8 ~|
	q\p q4 q q8 |
	<d a'> <f a>4 q q8 |
	<fis a,>\p q4 q q8 ~|
	q fis fis fis fis fis |
	e e e e d( g) |
	r g e( c) c( a) |
	g g g g c c |
	b16(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
%C
	b4 r r8 b'(\p |
	a) r r4 r8 c( |
	b) r r4 r8 d, |
	e e d d d d |
	d4 r r |
	e8 e e e e e |
	d-. d-. a( fis') g( d) |
	c( e) e( a) a a |
	\tuplet 6/4 {d,16( fis d a' fis a) d,( fis d a' fis a) d,( fis d a' fis a) |
	a,(\f d a a' d, a') a,(\p d a a' d, a') b,( g' d b' g b) |
	d,(\f c' a d c d) d,(\p c' a d c d) d,( b' g d' b d)} |
	g,8 r fis r a r |
	fis4( \tuplet 6/4 {g16) b( g d' b d) g,( b g d' b d) |
	d,(\f fis d a' fis a) d,(\p fis d a' fis a) g,( d' b g' d g) |
	d(\f a' d, d' a d) a,(\p d a fis' d fis) gis,( d' b f' d gis)} |
	a8 r a, r e' r |
	r fis( e d) d( g) |
	g g g g fis fis |
	d4( fis g) ~|
	g8 a d,( b) a d16(\upbow fis) |
	g4( fis g) |
	<g a>8 r <g b> r <d a'> r |
%D
	g4(\f c b) |
	a( e' d) |
	d,8\p d g, g g g |
	e' e a a d, d |
	e e4 e' e8 |
	d4 d r8. a16 |
	g8 g4 g8( fis) fis-. |
	g( b) a4( c) |
	b8 b b-. b-. b( g) |
	e g g g g g |
	g16 g' g g g( d) d( b) b( g) g( b,) |
	c2:\cresc c'4 |
	<b d,>8\f q4 q q8 |
	<c d,>8 q4 q q8 |
	<b d,>8 q4 q d16( b) |
	e( c) a( e) c'( a) fis( d) b'( g) e( cis) |
	d2 r4^\fermatacad |
	b16(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	b(\f g'\p d g) b,( g' d g) c,( g' e g) |
	b,(\f g'\p d g) g,( d' b d) a( d c d) |
	<<d2 \\ {c4( b)}>> r4 |
}>>

viola = <<\global \relative c' { \key g \major \clef "alto"
	<b g'>8 q4 q q8 ~|
	q q4 q q8 |
	<a fis'>8 q4 q q8 ~|
	q q4 q q8 |
	<g g'>4 r r |
	b8\p b c c d d |
	e e a, a b b |
	e\f g a a bes bes |
	a8.( d,16) d4 r8. d16\p |
	d8( b) a4( c) |
	\repeat unfold 2 {<b d>8\f r g\p r g r |
	d'\f r d,\p r d r} |
	d4 r r |
	r8 <b' g'>4\f q q8 ~|
	q\p q4 q q8 |
	<a fis'>\f d4 d d8 |
	<c d>8\p q4 q q8 |
	<d b>4 b r |
	b8-. b-. c-. c-. d-. d-. |
	cis cis c c b b |
	bes bes a a g g |
	fis4 fis r |
	g8 g' g g d d |
	<b d>\f r g\p r g r |
	d'\f r d,\p r d r |
	<b' d>\f r g\p r g r |
	d'\f r d,\p r d r |
%A
	d4 r r8 g'(\p |
	f) r r4 r8 a( |
	g) r g,4 c,8( cis) |
	d4 r r |
	gis8 gis gis gis gis gis |
	a a g g fis fis |
	g g a a a a |
	a4 r r |
	<<{
	a'2. |
	a2.
	} \\ {
	e2(\fp fis4) |
	g2(\fp fis4)
	}>> |
	g8\p r a r a, r |
	a4 a r |
	<<{
	a'2. |
	a2.
	} \\ {
	cis,2(\fp d4) |
	e2(\fp fis4)
	}>> |
	<g b>8\p r g, r g' r |
	a,4 b8( cis) d( fis) |
	e e a, a a a |
	a4( cis d) |
	e8 g, a a g g |
	a2. |
	a16( g) g8 g' g g g |
	a a a a a a |
	a,\cresc a a a a a |
	a\f d4 d d8 |
	e e4 e e8 |
	d d4 fis a8 |
	g g fis4:16 g: |
%B
	fis4 r r8 e\p ~|
	e r r4 r8 e( |
	d) r r4 r |
	d8 d b b a a |
	gis gis g g fis fis |
	g r a r a r |
	d\f d d d d d |
	d d d d d d |
	f,\p f e e d d |
	cis4 cis r8. a'16 |
	a8( fis) e4( g8) e-. |
	fis( d) a'4 a' ~|
	a8 d, d d d d |
	r e c c c c |
	dis dis e g, dis dis |
	e e a a g g |
	fis'4:\f g: dis: |
	e: a,: ais: |
	b8 r b\p r b r |
	a r a r <c d>4\f |
	<b d>8 r g\p r g r |
	d'\f r d,\p r d r |
	d4 r r |
	r8 <b' g'>4\f q q8 ~|
	q\p q4 q q8 |
	<a fis'>8\f d4 d d8 |
	<c d>\p q4 q q8 |
	r fis, b b b b |
	b b b b b b |
	r e c4.( d8) |
	d c d d d, d |
	<b' d>\f r g\p r g r |
	d'\f r d,\p r d r |
	<b' d>\f r g\p r g r |
	d'\f r d,\p r d r |
%C
	d4 r r8 g'(\p |
	fis) r r4 r8 a( |
	g) r r4 r8 b, |
	c c a a a a |
	g4 r r |
	cis,8 cis cis cis cis cis |
	d-. d-. c!( c') b b |
	c c c c c( cis) |
	d4 r r |
	<<{
	d2. |
	c'2( b4)
	} \\ {
	a,2(\fp b4) |
	d2.\fp
	}>> |
	c8\p r d r d r |
	d4 d r |
	<<{
	fis2( g4) |
	d2.
	} \\ {
	d2.\fp |
	a2(\fp b4)
	}>> |
	<c d>8\p r c, r c' r |
	d4( e8 fis) g( b) |
	a a d, d d d |
	d,4( fis g) |
	c8 c d d d d |
	d,4( fis g) |
	c8 r d r d, r |
%D
	<g g'>8\f q q q q q |
	q q q q q q |
	b\p b c c d d |
	cis cis c c b b |
	bes bes a a g g |
	fis4 fis r8. d'16 |
	d8( b) a4 c8( a) |
	b( cis) d4 d |
	d8 g g g g g |
	g c, c c c c |
	d d d d d g |
	g4:\cresc fis d |
	d8\f g4 g g8 |
	a a4 a a8 |
	g g4 g g8 |
	e'16( c) a( e) c'( a) fis( d) b'( g) e( cis) |
	d2 r4^\fermatacad |
	<b d>8\f r g\p r g r |
	d'\f r d,\p r d r |
	<b' d>\f r g\p r g r |
	d'\f r d,\p r d' r |
	fis4( g) r |
}>>

cello = <<\global \relative c' { \key g \major \clef "bass"
	g4 d b |
	g r r |
	d'' a fis |
	d r r |
	g, r r |
	g'8\p g e e d d |
	cis cis c c b b |
	bes\f bes' a a g g |
	fis4 fis r8. fis16\p |
	g8( cis,) d4 d |
	g8\f r g\p r c, r |
	d\f r d\p r d r |
	g\f r g\p r c, r |
	d\f r d\p r d r |
	g,4 r r |
	g'\f d b |
	g\p r r |
	d''\f a fis |
	d\p r r |
	g g, r |
	g'8-. g-. e-. e-. d-. d-. |
	cis cis c c b4 |
	R2.*2 |
	g'8 c, d d d d |
	g\f r g\p r c, r |
	d\f r d\p r d r |
	g\f r g\p r c, r |
	d\f r d\p r d r |
%A
	g,4 r r8 e'(\p |
	e) r r4 r8 e( |
	fis) r r4 r |
	r8 d d'( e fis a,) |
	gis4 r r |
	R2.*2 |
	d8 r d r d r |
	cis\f r cis\p r d r |
	e\f r e\p r fis r |
	g r a r a, r |
	a'4( d,8) r d r |
	e\f r e\p r fis r |
	g\f r g\p r fis r |
	g r g r g r |
	g g g g fis fis |
	g g a a a, a |
	fis'4( e d) |
	g8 g a a g g |
	fis4( e d) |
	r8 g g g g g |
	a2.:8 |
	a2.:\cresc |
	d,4\f d' d, |
	cis cis' cis, |
	d d' fis, |
	g8 g a a a, a |
%B
	d4 r r8 d'(\p |
	cis) r r4 r8 cis( |
	d) r r4 r |
	R2.*3 |
	d8\f d b b a a |
	gis gis g g fis fis |
	R2. |
	r4 r r8. cis16\p |
	d8( gis,) a4 a |
	d8( gis) a4.( g8) |
	fis r fis r g r |
	e r e r fis r |
	b, b b b b b |
	b2.: |
	b':\f |
	b: |
	b8 r b\p r b r |
	a r a r d,\f r |
	g r g\p r c, r |
	d\f r d\p r d r |
	g,4 r r |
	g'\f d b |
	g\p r r |
	d''\f a fis |
	d\p r r |
	dis2.: |
	e2: b8 b |
	c2.: |
	b8 c d2: |
	g8\f r g\p r c, r |
	d\f r d\p r d r |
	g\f r g\p r c, r |
	d\f r d\p r d r |
%C
	g,4 r r8 e'(\p |
	fis) r r4 r8 fis( |
	g) r r4 r8 b |
	a a d,2: |
	g8 g, g'( a b d,) |
	cis4 r r |
	R2. |
	c2: c8( cis) |
	d r d r d r |
	fis\f r fis\p r g r |
	a\f r a\p r b r |
	c r d r d, r |
	d4( g,8) r g' r |
	a\f r a\p r b r |
	c\f r c\p r b r |
	c r c r c r |
	c c c c b b |
	c c d d d, d |
	b'4( a g) |
	c,8 c d d c c |
	b4( a g) |
	R2. |
%D
	g'8\f g e' e d d |
	cis cis c c b b |
	g\p g e e d d |
	cis cis c c b4 |
	R2. |
	r4 r r8. fis'16 |
	g8( cis,) d4 d |
	g8( cis) d4 d, |
	g2.: |
	c,!: |
	d: |
	d:\cresc |
	g4\f g' g, |
	fis fis' fis, |
	g g' g, |
	e'16( c) a( e) c'( a) fis( d) b'( g) e( cis) |
	d2 r4^\fermatacad |
	g8\f r g\p r c, r |
	d\f r d\p r d r |
	g\f r g\p r c, r |
	d\f r d\p r d r |
	g,2 r4 |
}>>
