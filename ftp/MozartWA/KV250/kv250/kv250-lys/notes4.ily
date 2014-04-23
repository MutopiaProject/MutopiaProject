\version "2.18.0"

global = {\tempo "Allegro" \time 2/4 s2*24 \mark A s2*30 \mark B
          s2*32 \mark C s2*52 \mark D s2*33 \mark E s2*36 \mark F
          s2*36 \mark G s2*43 \mark H s2*24 \mark I s2*22 \mark K
          s2*32 \mark L s2*27 \mark M s2*33 \mark N s2*31 \bar "||"}
midiTempo = 120

flautoI = <<\global \relative c'' { \key g \major
	\tupletSpan 4
\repeat volta 2 {
	g4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
}
\repeat volta 2 {
	d''2\f |
	fis, |
	g4 r |
	R2 |
	d'2\f |
	fis, |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
}
%A
	g'2\f |
	a |
	b |
	c |
	b16( cis) d-. cis-. d8 r |
	b16( a) b-. a-. b8-. r |
	e,16( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8 r |
	R2*19 |
	a2\f |
	g |
	cis |
%B
	d4 r |
	R2*22 |
	d,2\p |
	d' |
	cis ~|
	cis |
	c ~|
	c |
	b4(\cresc a) |
	b( cis) |
	d\f r |
%C
	R2*19 |
	d2(\p |
	b |
	a |
	cis,) |
	d4 r |
	R2*3 |
	R2^\fermatacad |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	d''2\f |
	fis, |
	g4 r |
	R2 |
	d'2\f |
	fis, |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%D
\repeat volta 2 {
	R2*8 |
	g'4(\p a) |
	b( g) |
	a( fis) |
	b( g) |
	dis'2 |
	c |
	r4 fis,-. |
	e-. r |
}
	R2 |
	\tuplet 3/2 {cis'8-.\f d-. e-. d-. cis-. b-.} |
	ais4-. b-. |
	g4( fis8) r |
	R2*10 |
	fis2\f ~|
	fis ~|
	fis4 r |
%E
	R2*4 |
	b2\p |
	d |
	cis |
	b4 r |
	R2*8 |
	b2 ~|
	b |
	e |
	d ~|
	d |
	cis ~|
	cis |
	b4 r |
	R2 |
	r4 d\f |
	cis2 |
	b4 r^\fermatacad |
	g,\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%F
	d''2\f |
	fis, |
	g4 r |
	R2 |
	d'2\f |
	fis, |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	f'2\f ~|
	f ~|
	f ~|
	f4 f\p |
	f f |
	f f |
	e e |
	d d |
	e e |
	f f |
	e e |
	d d |
	c c |
	f f |
	e e |
	d d |
	e e |
	f f |
	e e |
	d d |
%G
	c r |
	R2*7 |
	fis2\p ~|
	fis ~|
	fis ~|
	fis |
	g4 r |
	R2*11 |
	a2 ~|
	a4 c |
	b2 ~|
	b4 d |
	a r |
	R2 |
	c4\f c8. c16 |
	c4 c |
	c2 ~|
	c ~|
	c4 r^\fermatacad |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	d''2\f |
	fis, |
	g4 r |
	R2 |
%H
	d'2\f |
	fis, |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	g'2\f |
	a |
	b |
	c |
	b8 g16-. fis-. g8 r |
	c16( d) e-. d-. e8 r |
	a,16( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	R2*19 |
	d2\f |
	fis, |
	c' |
%K
	b4 r |
	R2*22 |
	g,2\p |
	g' |
	fis ~|
	fis |
	f ~|
	f |
	e4(\cresc b') |
	c2 |
	b4\f r |
%L
	R2*19 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%M
	d''2\f |
	fis, |
	g4 r |
	R2 |
	d'2\f |
	fis, |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2*4 |
	g'8-. fis-. g-. fis-. |
	g-. fis-. g-. fis-. |
	g4 r |
	R2*9 |
	g8-. fis-. g-. fis-. |
	g-. fis-. g-. fis-. |
%N
	g4-. r |
	R2*9 |
	b2(\p |
	e |
	d |
	fis,) |
	g4 r |
	R2*5 |
	c4\f c8. c16 |
	c4 c8. c16 |
	c4 c8. c16 |
	c4 r\fermata |
	r g\p |
	d' b |
	g\cresc d |
	b g |
	d'\f r |
	fis r |
	g r |
}>>

flautoII = <<\global \relative c'' { \key g \major
	\tupletSpan 4
\repeat volta 2 {
	g4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
}
\repeat volta 2 {
	d'2\f |
	fis |
	g4 r |
	R2 |
	d2\f |
	fis |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
}
%A
	d'4\f e ~|
	e fis ~|
	fis g ~|
	g a |
	b16( cis) d-. cis-. d8 r |
	g,16( a) b-. a-. b8 r |
	e,16( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8 r |
	R2*19 |
	cis,2\f |
	e |
	g |
%B
	fis4 r |
	R2*22 |
	d2\p ~|
	d |
	e ~|
	e |
	fis ~|
	fis |
	g4(\cresc fis) |
	g2 |
	fis4\f r |
%C
	R2*19 |
	fis2(\p |
	g |
	fis |
	e) |
	d4 r |
	R2*3 |
	R2^\fermatacad |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	d'2\f |
	fis |
	g4 r |
	R2 |
	d2\f |
	fis |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%D
\repeat volta 2 {
	R2*8 |
	e'4(\p fis) |
	g( e) |
	fis( dis) |
	g( e) |
	fis2 |
	g |
	r4 dis-. |
	e-. r |
}
	R2 |
	\tuplet 3/2 {cis'8-.\f d-. e-. d-. cis-. b-.} |
	ais4-. b-. |
	g4( fis8) r |
	R2*10 |
	d2\f ~|
	d ~|
	d4 r |
%E
	R2*4 |
	gis2\p |
	fis |
	ais |
	b4 r |
	R2*8 |
	fis2 |
	g |
	ais |
	b ~|
	b ~|
	b |
	ais |
	b4 r |
	R2 |
	r4 b\f ~|
	b ais |
	b r^\fermatacad |
	g,\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%F
	d'2\f |
	fis |
	g4 r |
	R2 |
	d2\f |
	fis |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	b2\f ~|
	b ~|
	b ~|
	b4 b\p |
	b b |
	d d |
	c c |
	b b |
	c c |
	d d |
	c c |
	b b |
	c c |
	d d |
	c c |
	b b |
	c c |
	d d |
	c c |
	b b |
%G
	c r |
	R2*7 |
	c2\p ~|
	c ~|
	c ~|
	c |
	b4 r |
	R2*11 |
	fis'2 ~|
	fis4 a |
	g2 ~|
	g4 b |
	fis4 r |
	R2 |
	fis4\f fis8. fis16 |
	fis4 fis |
	fis2 ~|
	fis ~|
	fis4 r^\fermatacad |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%H
	d'2\f |
	fis |
	g4 r |
	R2 |
	d2\f |
	fis |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
	d'4\f e ~|
	e fis ~|
	fis g ~|
	g a |
	b8 g16-. fis-. g8 r |
	c16( d) e-. d-. e8 r |
	a,16( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	R2*19 |
	fis,2\f |
	d |
	fis |
%K
	g4 r |
	R2*22 |
	g,2\p ~|
	g |
	a ~|
	a |
	b ~|
	b |
	c4(\cresc f) |
	e( fis) |
	g\f r |
%L
	R2*19 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2 |
%M
	d'2\f |
	fis |
	g4 r |
	R2 |
	d2\f |
	fis |
	g4 r |
	R2 |
	g,4\p g' |
	d b |
	g r |
	R2 |
	g4 g' |
	d b |
	g r |
	R2*4 |
	b8-. c-. b-. c-. |
	b-. c-. b-. c-. |
	b4 r |
	R2*9 |
	b8-. c-. b-. c-. |
	b-. c-. b-. c-. |
%N
	b4 r |
	R2*9 |
	g'2(\p |
	c |
	b |
	a) |
	g4 r |
	R2*5 |
	fis4\f fis8. fis16 |
	fis4 fis8. fis16 |
	fis4 fis8. fis16 |
	fis4 r\fermata |
	r g,\p |
	g' b |
	g\cresc d |
	b g |
	d'\f r |
	c r |
	b r |
}>>

fagottoI = <<\global \relative c' { \key g \major \clef "bass"
	\tupletSpan 4
\repeat volta 2 {
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
}
\repeat volta 2 {
	b2\f |
	c |
	d4 r |
	R2 |
	b\f |
	c |
	d4 r |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d2 ~|
	d8 r r4 |
	R2 |
}
%A
	b,8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	b'16( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8 r |
	R2*19 |
	a2\f |
	g' |
	cis, |
%B
	d4 r |
	R2*22 |
	a2\p |
	d |
	e ~|
	e |
	fis ~|
	fis |
	g4(\cresc fis) |
	g( e) |
	fis\f r |
%C
	R2*19 |
	d2(\p |
	e |
	fis |
	e) |
	d4 r |
	R2*3 |
	R2^\fermatacad |
	d2\p ~|
	d2 ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d2 ~|
	d8 r r4 |
	R2 |
	b2\f |
	c |
	d4 r |
	R2 |
	b2\f |
	c |
	d4 r |
	R2 |
	d2\p ~|
	d2 ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d2 ~|
	d8 r r4 |
	R2 |
%D
\repeat volta 2 {
	R2*16 |
}
	R2 |
	\tuplet 3/2 {cis8-.\f d e d cis b} |
	ais4-. b-. |
	g4( fis8) r |
	R2*10 |
	fis'2\f ~|
	fis ~|
	fis4 r |
%E
	R2*4 |
	d2\p |
	b |
	e |
	d4 r |
	R2*17 |
	r4 fis,\f |
	g fis |
	fis r^\fermatacad |
	d'2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d ~|
	d8 r r4 |
	R2 |
%F
	b2\f |
	c |
	d4 r |
	R2 |
	b2\f |
	c |
	d4 r |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d ~|
	d8 r r4 |
	R2 |
	d2\f ~|
	d ~|
	d ~|
	d4 d\p |
	d d |
	d d |
	e e |
	f f |
	e e |
	d d |
	e e |
	f f |
	e e |
	d d |
	e e |
	f f |
	e e |
	d d |
	e e |
	f f |
%G
	e r |
	R2*19 |
	d2\p ~|
	d ~|
	d ~|
	d |
	c ~|
	c4 a |
	d2 ~|
	d4 b |
	a r |
	R2 |
	fis16-.\f e-. d-. e-. fis-. e-. d-. e-. |
	fis-. e-. d-. e-. fis-. e-. d-. e-. |
	fis4-. d'-. |
	fis,-. a-. |
	d, r^\fermatacad |
	d'2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
%H
	b2\f |
	c |
	d4 r |
	R2 |
	b\f |
	c |
	d4 r |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d2 ~|
	d8 r r4 |
	R2 |
	b,8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	g g'16-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	R2*19 |
	d,2\f |
	fis' ~|
	fis |
%K
	g4 r |
	R2*22 |
	g,2\p |
	b |
	c ~|
	c |
	d ~|
	d |
	e4(\cresc f) |
	e( fis) |
	g\f r |
%L
	R2*19 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
%M
	b2\f |
	c |
	d4 r |
	R2 |
	b\f |
	c |
	d4 r |
	R2 |
	d2\p ~|
	d ~|
	d8 r r4 |
	R2 |
	d2 ~|
	d2 ~|
	d8 r r4 |
	R2*4 |
	g,8-. d-. g-. d-. |
	g-. d-. g-. d-. |
	g4 r |
	R2*9 |
	g8-. d-. g-. d-. |
	g-. d-. g-. d-. |
%N
	g4 r |
	R2*9 |
	b2(\p |
	e |
	d |
	fis) |
	g4 r |
	R2 |
	r4 g,16\f a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d4 r\fermata |
	R2*2 |
	r4 d\p\cresc |
	b g |
	d\f r |
	d r |
	g, r |
}>>

fagottoII = <<\global \relative c' { \key g \major \clef "bass"
	\tupletSpan 4
\repeat volta 2 {
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
}
\repeat volta 2 {
	g2\f |
	a |
	b4 r |
	R2 |
	g2\f |
	a |
	b4 r |
	R2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
}
%A
	b,8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	b'16( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8 r |
	R2*19 |
	a2\f |
	e' |
	g, |
%B
	fis4 r |
	R2*22 |
	fis2\p ~|
	fis |
	g ~|
	g |
	a ~|
	a |
	b4(\cresc c) |
	b( cis) |
	d\f r |
	R2*19 |
	d2 ~|
	d ~|
	d( |
	cis) |
	d4 r |
	R2*3 |
	R2^\fermatacad |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
%C
	g2\f |
	a |
	b4 r |
	R2 |
	g2\f |
	a |
	b4 r |
	R2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
%D
\repeat volta 2 {
	R2*16 |
}
	R2 |
	\tuplet 3/2 {cis8-.\f d e d cis b} |
	ais4-. b-. |
	g4( fis8) r |
	R2*10 |
	d'2\f ~|
	d ~|
	d4 r |
%E
	R2*4 |
	eis,2\p |
	fis ~|
	fis ~|
	fis4 r |
	R2*17 |
	r4 d\f |
	e fis |
	b, r^\fermatacad |
	b'2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
%F
	g2\f |
	a |
	b4 r |
	R2 |
	g2\f |
	a |
	b4 r |
	R2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
	b2\f ~|
	b ~|
	b ~|
	b4 b\p |
	b b |
	b b |
	c c |
	d d |
	c c |
	b b |
	c c |
	d d |
	c c |
	b b |
	c c |
	d d |
	c c |
	b b |
	c c |
	d d |
%G
	c r |
	R2*19 |
	d,2\p ~|
	d ~|
	d ~|
	d |
	a' ~|
	a4 fis |
	b2 ~|
	b4 g |
	fis r |
	R2 |
	fis16-.\f e-. d-. e-. fis-. e-. d-. e-. |
	fis-. e-. d-. e-. fis-. e-. d-. e-. |
	fis4-. d'-. |
	fis,-. a-. |
	d, r^\fermatacad |
	b'2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
%H
	g2\f |
	a |
	b4 r |
	R2 |
	g2\f |
	a |
	b4 r |
	R2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
	b,8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	g g'16-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	R2*19 |
	d,2\f ~|
	d |
	c' |
%K
	b4 r |
	R2*22 |
	g,2\p |
	g' |
	a ~|
	a |
	b ~|
	b |
	c4(\cresc b) |
	c( a) |
	b\f r |
%L
	R2*19 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2 |
%M
	g2\f |
	a |
	b4 r |
	R2 |
	g2\f |
	a |
	b4 r |
	R2 |
	b2\p ~|
	b ~|
	b8 r r4 |
	R2 |
	b2 ~|
	b ~|
	b8 r r4 |
	R2*4 |
	g8-. d-. g-. d-. |
	g-. d-. g-. d-. |
	g4 r |
	R2*9 |
	g8-. d-. g-. d-. |
	g-. d-. g-. d-. |
%N
	g4 r |
	R2*9 |
	g2(\p |
	c |
	b |
	c) |
	b4 r |
	R2 |
	r4 g16\f a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d4 r\fermata |
	R2*2 |
	r4 d\p\cresc |
	b g |
	d\f r |
	d r |
	g, r |
}>>

cornogI = <<\global \relative c' {
\repeat volta 2 {
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
}
\repeat volta 2 {
	g'2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
}
%A
	c'2\f |
	d |
	e |
	f4 d |
	e r |
	c r |
	R2 |
	r8 d16 d d8 r |
	R2*19 |
	d2\f ~|
	d ~|
	d |
%B
	d4 r |
	R2*22 |
	g,2\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g\cresc ~|
	g ~|
	g4\f r |
%C
	R2*27 |
	R2^\fermatacad |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%D
	g'2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	
\repeat volta 2 {
	R2*7 |
	e2\p ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e4 r |
}
	R2*14 |
	e'2\f ~|
	e ~|
	e4 r |
%E
	R2*16 |
	e2\p ~|
	e ~|
	e ~|
	e |
	R2*7 |
	R2^\fermatacad |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%F
	g'2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	c'2\f ~|
	c ~|
	c ~|
	c4 c\p |
	\repeat unfold 32 c |
%G
	c r4 |
	R2*7 |
	d2\p ~|
	d ~|
	d ~|
	d |
	c4 r |
	R2*11 |
	g2 ~|
	g ~|
	g ~|
	g ~|
	g4 r |
	R2 |
	d'4\f d8. d16 |
	d4 d |
	d2 ~|
	d ~|
	d4 r^\fermatacad |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%H
	g'2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	c'2\f |
	d |
	e |
	f4 d |
	c r |
	c r |
	d r |
	r8 g,16 g g8 r |
%I
	R2*19 |
	d'2\f ~|
	d |
	g, |
%K
	g4 r |
	R2*22 |
	c2\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c\cresc ~|
	c ~|
	c4\f r |
%L
	R2*19 |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%M
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2*4 |
	c'8-. d-. c-. d-. |
	c-. d-. c-. d-. |
	c4 r |
	R2*9 |
	c8-. d-. c-. d-. |
	c-. d-. c-. d-. |
%N
	c4 r |
	R2*19 |
	d4\f d8. d16 |
	d4 d8. d16 |
	d4 d8. d16 |
	d4 r\fermata |
	r c\p |
	g' e |
	c\cresc g |
	e c |
	g'\f r |
	d' r |
	c r |
}>>

cornogII = <<\global \relative c' {
\repeat volta 2 {
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
}
\repeat volta 2 {
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
}
%A
	c2\f |
	d'4 g, ~|
	g c, ~|
	c g' |
	e r |
	c r |
	R2 |
	r8 d'16 d d8 r |
	R2*19 |
	d2\f ~|
	d ~|
	d |
%B
	g,4 r |
	R2*22 |
	g,2\p ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g\cresc ~|
	g ~|
	g4\f r |
%C
	R2*27 |
	R2^\fermatacad |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%D
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	
\repeat volta 2 {
	R2*7 |
	e2\p ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e ~|
	e4 r |
}
	R2*14 |
	e2\f ~|
	e ~|
	e4 r |
%E
	R2*16 |
	e2\p ~|
	e ~|
	e ~|
	e |
	R2*7 |
	R2^\fermatacad |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%F
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	c2\f ~|
	c ~|
	c ~|
	c4 c\p |
	\repeat unfold 32 c |
%G
	c r4 |
	R2*7 |
	g'2\p ~|
	g ~|
	g ~|
	g |
	c,4 r |
	R2*11 |
	g2 ~|
	g ~|
	g ~|
	g ~|
	g4 r |
	R2 |
	g'4\f g8. g16 |
	g4 g |
	g2 ~|
	g ~|
	g4 r^\fermatacad |
	c,4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%H
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
	c2\f |
	d'4 g, ~|
	g c, ~|
	c g' |
	e r |
	c r |
	d' r |
	r8 g,16 g g8 r |
%I
	R2*19 |
	g2\f ~|
	g |
	g, |
%K
	c4 r |
	R2*22 |
	c2\p ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c ~|
	c\cresc ~|
	c ~|
	c4\f r |
%L
	R2*19 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2 |
%M
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	g2\f ~|
	g ~|
	g4 r |
	R2 |
	c4\p c' |
	g e |
	c r |
	R2 |
	c4 c' |
	g e |
	c r |
	R2*4 |
	g'8-. g-. g-. g-. |
	g2:8-. |
	g4 r |
	R2*9 |
	g2:-. |
	g:-. |
%N
	g4 r |
	R2*19 |
	g4\f g8. g16 |
	g4 g8. g16 |
	g4 g8. g16 |
	g4 r\fermata |
	r c\p |
	g' e |
	c\cresc g |
	e c |
	g\f r |
	g' r |
	e r |
}>>

motive = \relative c'' {
	d16-. c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d e fis g a b c d |
	c b a g fis e d c |
	d c b c d c b c |
	d c b c d c b c |
	b( d) g-. b-. \appoggiatura b16 a8 g16 fis |
	a16( g) g-. g-. g8 r |
}

violinsolo = <<\global \relative c''' { \key g \major
	\tupletSpan 4
\repeat volta 2 {
	<<\motive s4^\solo>>
}
\repeat volta 2 {
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill g16 a8 r |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill e16 d8 r |
	\motive |
}
%A
	g,16\f^\tutti a b g e fis g e |
	a b c a fis g a fis |
	b c d b g a b g |
	c d e c a b c a |
	b( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8-. r |
	a'16-.^"SOLO." g-. fis-. g-. a-. g-. fis-. g-. |
	a g fis g a g fis g |
	a8( d) r d |
	r d r a |
	g16 fis e fis g fis e fis |
	g fis e fis g fis e fis |
	g8( cis) r e |
	r g r g, |
	\appoggiatura g16 fis8 e16 d fis( a) gis( b) |
	\appoggiatura b16 a8 g!16 fis e fis g e |
	\appoggiatura g fis8 e16 d fis( a) gis( b) |
	\appoggiatura b a8 g16 fis e fis g e |
	\appoggiatura g fis8 e16 d cis d e cis |
	\appoggiatura e d8 cis16 b a b c a |
	\appoggiatura c b8 a16 g fis g a fis |
	\appoggiatura a g8 fis16 e dis e fis dis |
	e4 b'' |
	\appoggiatura a16 g4 \appoggiatura fis16 e4 |
	d( cis) |
	R2*3 |
%B
	r4 fis8.\trill g16 |
	a8 r b8.\trill cis16 |
	d8 r e r |
	d4( cis8) r |
	r4 d8.\trill cis16 |
	b8 r g8.\trill fis16 |
	e8 r a r |
	g4( fis8) r |
	r4 fis16( g fis g) |
	a8-. r b16( cis b cis) |
	d8 \appoggiatura d,16 d'8 e \appoggiatura e,16 e'8 |
	d4( cis8) r |
	r4 d16( cis d cis) |
	b8 r g16( fis g fis) |
	e8 \appoggiatura e,16 e'8 a \appoggiatura a,16 a'8 |
	d,4 r |
	fis8.( g32 fis e8) d-. |
	g4( e) |
	g8.( a32 g fis8) e-. |
	a4( fis) |
	a8.( b32 a g8) fis-. |
	b8.( cis32 d) cis8-. b-. |
	a-. g-. fis-. e-. |
	d4 r |
	fis16( g fis e d e fis d) |
	g( a g fis) e( fis e fis) |
	g( a g fis e fis g e) |
	a( b a g) fis( g fis g) |
	a( b a g fis g a fis) |
	g( a b g a b c a) |
	b( cis d b) cis( d e cis) |
	d4 r |
%C
	d-. d-. |
	d8.( ais16 b4) |
	b-. b-. |
	b8.( fis16 g4) |
	a!8( g) fis-. e-. |
	a4.( b16 g |
	fis8) r e-. r |
	g4( fis8) r |
	d'-. d-. d-. d-. |
	d8.( ais16 b4) |
	b8-. b-. b-. b-. |
	b8.( fis16 g4) |
	a!8( g) fis-. e-. |
	a4.( b16 g |
	fis8) r e-. r |
	d4( d') |
	r b8( g) |
	fis4( a) |
	r g8( e) |
	d4( d') |
	r b16( g) b( g) fis4( a) |
	r g16( e) g( e) |
	d8 r e16(\trill d e fis) |
	d8 r e16(\trill d e fis) |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d4 r\fermata |
	\motive |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill g16 a8 r |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill e16 d8 r |
	\motive |
%D
\repeat volta 2 {
	\tuplet 3/2 {b'8( c b) a( g fis)} |
	\appoggiatura fis16 e4 e |
	\tuplet 3/2 {fis8( a g a g fis)} |
	\appoggiatura fis16 e4 e |
	\tuplet 3/2 {fis8( a g a g fis) |
	e( b' a b a g) |
	fis( c' b c b a)} |
	g4( fis8) r |
	\tuplet 3/2 {b8( c b) a( g fis)} |
	\appoggiatura fis16 e4 e |
	\tuplet 3/2 {fis8( a g a g fis)} |
	\appoggiatura fis16 e4 e |
	\tuplet 3/2 {fis8( a g a g fis) |
	e( b' a b a g) |
	fis( a g a g fis)} |
	\appoggiatura fis16 e4 e, |
}
	R2*4 |
	fis'16-. e-. d-. e-. fis-. e-. d-. e-. |
	fis e d e fis e d e |
	fis8 r d' r |
	fis,4( eis8) r |
	e16-. d-. cis-. d-. e-. d-. cis-. d-. |
	e d cis d e d cis d |
	e8 r cis' r |
	e,4( dis8) r |
	d!16 cis b cis d cis b cis |
	d cis b cis d cis b cis |
	d4 r |
	R2*2 |
%E
	\tuplet 3/2 {b'8( b,) b-. b-. b-. b-. |
	b( d fis) fis-. fis-. fis-. |
	fis( g fis) e( d cis) |
	cis( b) b-.} b4 |
	\tuplet 3/2 {b'8( b,) b-. b-. b-. b-. |
	b( d fis) fis-. fis-. fis-. |
	fis( g fis) e( d cis)} |
	b4 eis8( fis) |
	r4 b8( fis) |
	r4 a8( g) |
	r4 b8( ais) |
	r4 e'8( d) |
	r4 b8( fis) |
	r4 a8( g) |
	r4 g8( ais,) |
	r4 cis8( b) |
	b16( fis') e-. fis-. g( fis) e-. fis-. |
	b,( g') fis-. g-. a( g) fis-. g-. |
	b,( ais') gis-. ais-. b( ais) gis-. ais-. |
	b,( b') ais-. b-. cis( b) ais-. b-. |
	b,( fis') e-. fis-. g!( fis) e-. fis-. |
	b,( g') fis-. g-. a!( g) fis-. g-. |
	ais,( cis) b-. cis-. d( cis) b-. cis-. |
	b4 d,8 b' |
	e, cis' fis, ais |
	g b d, fis' |
	e, g' fis, ais' |
	b,4 r\fermata |
	\motive |
%F
	R2*2 |
	r8 g'-. g-. g-. |
	fis8.\trill g16 a8 r |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill e16 d8 r |
	\motive |
	R2*5 |
	r4 \appoggiatura c'16 b8 a16 g |
	c8 r c r |
	d r d r |
	e4( g8) r |
	r4 \appoggiatura c,16 b8 a16 g |
	c8 r c r |
	\appoggiatura e16 d4 b8 g |
	c4 r |
	r \appoggiatura c16 b8 a16 g |
	c8-. c-. c-. c-. |
	d-. d-. d-. d-. |
	e4( g8) r |
	r4 \appoggiatura c,16 b8 a16 g |
	c8 c c c |
	\appoggiatura e16 d4 b8 g |
	c4 r |
%G
	g4.( e8) |
	c' r c r |
	c4( e) |
	dis8( d) d4 ~|
	d g8\trill a |
	b a g fis |
	e d c b |
	d( c) fis4 ~|
	fis8 g a b |
	c b a g |
	fis e d c |
	b16( b) c-. b-. c( d) e-. fis-. |
	g fis g fis g f e dis |
	e fis! g fis e fis g fis |
	e fis g fis e fis g fis |
	e4 \appoggiatura fis16 e4 |
	r \appoggiatura d16 c4 |
	r \appoggiatura b16 a4 |
	g4.\startTrillSpan fis16\stopTrillSpan g |
	fis d, e fis g a b cis |
	d e fis g a fis d c! |
	b g a b c d e fis |
	g a b c d8 r |
	d,16 d, e fis g a b cis |
	d e fis g a fis d c! |
	b g a b c d e fis |
	g a b c d8 r |
	<fis, a, d,> fis16\trill e fis8 g |
	a8 \appoggiatura b16 a\trill g a8 b |
	<c d, d,>4 r |
	R2*3 |
	c4 r\fermata |
	\motive |
%H
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill g16 a8 r |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill e16 d8 r |
	\motive |
	g,16\f^\tutti a b g e fis g e |
	a b c a fis g a fis |
	b c d b g a b g |
	c d e c a b c a |
	b16( d) g-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8-. r |
%I
	d'16-. c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d8( b) r g |
	r d r d' |
	c16 b a b c b a b |
	c b a b c b a b |
	c8( a) r fis |
	r d r c' |
	\appoggiatura c16 b8 a16 g b( d) cis( e) |
	\appoggiatura e16 d8 c!16 b a b c a |
	\appoggiatura c16 b8 a16 g b( d) cis( e) |
	\appoggiatura e16 d8 c!16 b a b c a |
	\appoggiatura c16 b8 a16 g fis g a fis |
	\appoggiatura a16 g8 f16 e d e f d |
	\appoggiatura f16 e8 d16 c b c d b |
	\appoggiatura d16 c8 b16 a gis a b gis |
	a4 e'' |
	\appoggiatura d16 c4 \appoggiatura b16 a4 |
	g4( fis) |
	R2*3 |
%K
	r4 b8.\trill c16 |
	d8 r e8.\trill fis16 |
	g8 r a r |
	g4( fis8) r |
	r4 g8.\trill fis16 |
	e8 r c8.\trill b16 |
	a8 r d r |
	c4( b8) r |
	r4 b,16( c b c) |
	d8 r e16( fis e fis) |
	g8 \appoggiatura g, g' a \appoggiatura a, a' |
	g4( fis8) r |
	r4 g16( fis g fis) |
	e8 r c16( b c b) |
	a8 \appoggiatura a, a' d \appoggiatura d, d' |
	g,4 r |
	b8.( c32 b a8) g-. |
	c4( a) |
	c8.( d32 c b8) a-. |
	d4( b) |
	d8.( e32 d c8) b-. |
	e8.( fis32 g) fis8-. e-. d-. c-. b-. a-. |
	g4 r |
	b'16( c b a g a b g) |
	c( d c b) a( b a b) |
	c( d c b a b c a) |
	d( e d c) b( c b c) |
	d( e d c b c d b) |
	c d e c d e f d |
	e fis! g fis fis g a fis |
	g4 r |
%L
	g-. g-. |
	g8.( dis16 e4) |
	e e |
	e8.( b16 c4) |
	d!8( c) b-. a-. |
	d4.( e16 c |
	b8) r a-. r |
	c4( b8) r |
	g-. g-. g-. g-. |
	g8.( dis16 e4) |
	e8-. e-. e-. e-. |
	e8.( b16 c4) |
	d!8( c) b-. a-. |
	d4.( e16 c |
	b8) r a-. r |
	g4-. r8 d'' |
	cis( c) r b |
	gis( a) r g |
	eis( fis) r e |
	\motive |
%M
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill g16 a8 r |
	R2*2 |
	r8 g-. g-. g-. |
	fis8.\trill e16 d8 r |
	\motive |
	b'16( a) a-. a-. a8 r |
	c16( b) b-. b-. b8 r |
	c16(\trill b c d) e(\trill d e fis) |
	g-. d-. fis-. d-. g-. d-. fis-. d-. |
	g-. d-. fis-. d-. g-. d-. fis-. d-. |
	g4 r |
	R2*2 |
	d,8( g b d) |
	d( c) b-. a-. |
	g4 fis\trill |
	a16( g) g-. g-. g8 r |
	b16( a) a-. a-. a8 r |
	c16( b) b-. b-. b8 r |
	c16(\trill b c d) e(\trill d e fis) |
	g d fis d g d fis d |
	g d fis d g d fis d |
%N
	g4 r |
	R2*2 |
	d,8( g b d) |
	d( c) b-. a-. |
	g8 r fis r |
	g4( g') |
	r4 e8( c) |
	b4( d) |
	r c8( a) |
	g4( g') |
	r e16( c) e( c) |
	b4( d) |
	r c16( a) c( a) |
	g8 r a16(\trill g a b) |
	g8 r a16(\trill g a b) |
	g4 g,16^\tutti a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	<c' d, d,>4 r |
	q r |
	q r |
	q r\fermata |
	d16-.\p c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d\cresc c b c d c b c |
	d c b c d c b c |
	d4\f r |
	<fis, a, d,> r |
	<g b, d, g,> r |
}>>

violinI = <<\global \relative c' { \key g \major
	\tupletSpan 4
\repeat volta 2 {
	b16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
}
\repeat volta 2 {
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b4 r8 d'\p |
	d16( cis d cis) d8-. d,-. |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 g'-.\p b-. cis-. |
	d d, r4|
	b16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
}
%A
	g16\f a b g e fis g e |
	a b c a fis g a fis |
	b c d b g a b g |
	c d e c a b c a |
	b( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8-. r |
	fis'16-.\p e-. d-. e-. fis-. e-. d-. e-. |
	fis e d e fis e d e |
	fis4 r |
	R2 |
	e16 d cis d e d cis d |
	e d cis d e d cis d |
	e4 r |
	R2 |
	a,4 r8 gis |
	a4 r8 a |
	a4 r8 gis |
	a4 r8 a |
	a4 r8 fis |
	fis4 r8 d |
	d4 r8 b |
	b4 r8 a |
	b b e e |
	g g b b |
	fis4( e8) a16-.\f b-. |
	cis( b) a-. b-. cis-. d-. e-. d-. |
	cis( b) cis-. d-. e-. fis-. g-. fis-. |
	e d cis b a g fis e |
%B
	d8 a'\p a a |
	a a g g |
	fis fis g g |
	fis fis e cis'( |
	d) a-. a-. a-. |
	b b b b |
	e, e cis' cis |
	e4( d8) r |
	a a a a |
	a a g g |
	fis a g b |
	fis fis e cis'( |
	d) d d d |
	e, e e e |
	g g cis cis |
	d16( a) d-. a-. fis8 r |
	d'16( a) d-. a-. fis8 r |
	e'16( cis) e-. cis-. g8 r |
	e'16( cis) e-. cis-. g8 r |
	fis'16( d) fis-. d-. a8 r |
	fis'16( d) fis-. d-. a8 r |
	b-. d-. cis-. b-. |
	a-. g-. fis-. e-. |
	d2 |
	fis |
	g ~|
	g |
	a ~|
	a |
	b4(\cresc c) |
	b( cis) |
	d\f r |
%C
	b4-.\p b-. |
	b8.( fis16 g4) |
	g-. g-. |
	g8.( dis16 e4) |
	a8( g) fis-. e-. |
	a4.( b16 g |
	fis8) r e-. r |
	g4( fis8) r |
	b-. b-. b-. b-. |
	b8.( fis16 g4) |
	g8-. g-. g-. g-. |
	g8.( dis16 e4) |
	a8( g) fis-. e-. |
	a4.( b16 g |
	fis8) r e-. r |
	d( fis a fis) |
	b,( e g e) |
	a,( d fis d) |
	a( cis e cis) |
	d( fis b d) |
	b,( e g e) |
	a,( d fis d) |
	a( cis e cis) |
	d r cis4( |
	d8) r cis4( |
	d8) r a' r |
	a r a r |
	a4 r^\fermatacad |
	b,16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b4 r8 d'\p |
	d16( cis d cis) d8-. d,-. |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 g'-.\p b-. cis-. |
	d d, r4|
	b16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
%D
\repeat volta 2 {
	R2 |
	\tuplet 3/2 {b8\p b b b b b |
	b b b b b b |
	b b b b b b} |
	b4 r |
	b r |
	c r |
	g( fis8) r |
	R2 |
	\tuplet 3/2 {b8 b b b b b |
	b b b b b b |
	b b b b b b} |
	b4 r |
	b r |
	dis2\trill |
	e4 e, |
}
	\tuplet 3/2 {e'8-.\f fis-. g-. fis-. e-. d-. |
	cis d e d cis b} |
	ais4-. b-. |
	g4( fis8) r |
	R2*2 |
	b8\p b b b |
	b( d cis b) |
	ais4 r |
	R2 |
	ais8 ais ais ais |
	b b b b |
	fis4 r |
	R2 |
	d''16-.\f cis-. b-. cis-. d-. cis-. b-. cis-. |
	d cis b cis d cis b cis |
	d4 r |
%E
	gis,,2\p |
	fis |
	ais |
	\tuplet 3/2 {ais8( b) b-.} b4 |
	gis2 |
	fis |
	ais4 \tuplet 3/2 {cis8 b a} |
	b4 r |
	b r |
	b r |
	e r |
	d r |
	b r |
	b r |
	ais r |
	b r |
	b8 b b b |
	b b b b |
	e e e e |
	d d d d |
	d d d d |
	cis cis cis cis |
	cis cis cis cis |
	b16 b b b d4:16 |
	cis2: |
	b4:\f d: |
	cis2: |
	<b d,>4 r^\fermatacad |
	b,16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
%F
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b4 r8 d'\p |
	d16( cis d cis) d8-. d,-. |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 g'-.\p b-. cis-. |
	d d, r4|
	b16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
	c16(\f b) b-. b-. b8 r |
	e16( d) d-. d-. d8 r |
	g16( f) f-. f-. f8 r |
	R2*5 |
	g8-.\p e-. g-. e-. |
	f-. d-. f-. d-. |
	e-. c-. e-. c-. |
	d-. b-. d-. b-. |
	c4 r |
	R2*3 |
	g'8-. e-. g-. e-. |
	f-. d-. f-. d-. |
	e c e c |
	d b d b |
%G
	g'16 f e f g f e f |
	g f e f g f e f |
	g f e f g f e f |
	g f e f g f e f |
	d c b c d c b c |
	d c b c d c b c |
	d c b c d c b c |
	d c b c d c b g' |
	a g fis g a g fis g |
	a g fis g a g fis g |
	a g fis g a g fis g |
	a g fis g a g fis a |
	g4 r |
	d r |
	c8 r g r |
	g r g r |
	e16 fis g fis e fis g fis |
	e fis g fis e fis g e |
	e'2( |
	a,) |
	a8 a a a |
	a a c c |
	b b b b |
	b b d16 c d b |
	a8 a a a |
	a a c c |
	b b b b |
	b b d16 c d b |
	a4 r |
	R2 |
	<c' d,>8\f q4 q8 ~|
	q q4 q8 |
	c16-. b-. a-. b-. c-. b-. a-. b-. |
	c-. b-. a-. b-. c-. b-. a-. b-. |
	c4 r^\fermatacad |
	b,,16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
%H
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b4 r8 d'\p |
	d16( cis d cis) d8-. d,-. |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 g'-.\p b-. cis-. |
	d d, r4|
	b16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
	g16\f a b g e fis g e |
	a b c a fis g a fis |
	b c d b g a b g |
	c d e c a b c a |
	b16( d) g-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8-. r |
%I
	b'16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r |
	R2 |
	a16 g fis g a g fis g |
	a g fis g a g fis g |
	a4 r |
	R2 |
	d,4 r8 cis |
	d4 r8 d |
	d4 r8 cis |
	d4 r8 d |
	d4 r8 b |
	b4 r8 g |
	g4 r8 e |
	e4 r8 d |
	e e a a |
	c c e e |
	b4( a8) d,16-.\f e-. |
	fis( e) d-. e-. fis-. g-. a-. g-. |
	fis( e) fis-. g-. a-. b-. c-. b-. |
	a g fis e d c b a |
%K
	g8 d''\p d d |
	d d c c |
	b b c c |
	b b a fis'( |
	g) d-. d-. d-. |
	e e e e |
	a, a fis fis |
	a4( g8) r |
	d d d d |
	d d c c |
	b d c e |
	g g fis fis( |
	g) g g g |
	g g g g |
	fis fis a a |
	g16( d) g-. d-. b8 r |
	g'16( d) g-. d-. b8 r |
	a'16( fis) a-. fis-. c8 r |
	a'16( fis) a-. fis-. c8 r |
	b'16( g) b-. g-. d8 r |
	b'16( g) b-. g-. d8 r |
	e-. g-. fis-. e-. |
	d-. c-. b-. a-. |
	g2 |
	b' |
	c ~|
	c |
	d ~|
	d |
	e4(\cresc f) |
	e( fis) |
	g\f r |
%L
	e-.\p e-. |
	e8.( b16 c4) |
	c c |
	c8.( gis16 a4) |
	d8( c) b-. a-. |
	d4.( e16 c |
	b8) r a-. r |
	c4( b8) r |
	e,-. e-. e-. e-. |
	e8.( b16 c4) |
	c8-. c-. c-. c-. |
	c8.( gis16 c4) |
	b'8( a) g-. fis-. |
	b4.( c16 a |
	g8) r fis-. r |
	g4-. b( |
	a g) |
	fis( e) |
	d( c) |
	b16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
%M
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b4 r8 d'\p |
	d16( cis d cis) d8-. d,-. |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 g'-.\p b-. cis-. |
	d d, r4|
	b16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b4 r8 b' |
	a4 r8 a, |
	b16 a g a b a g a |
	b a g a b a g a |
	b8 d'-. c-. a-. |
	fis16( g) g-. g-. g8 r |
	b16( a) a-. a-. a8 r |
	fis'16( g) g-. g-. g8 r |
	e4( c) |
	b8 r r4 |
	R2 |
	d'16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d4 r |
	g,,2\p ~|
	g8( e' d c) |
	b4 a |
	fis16( g) g-. g-. g8 r |
	b16( a) a-. a-. a8 r |
	fis'16( g) g-. g-. g8 r |
	e4( c) |
	b8 r r4 |
	R2 |
%N
	d'16-.\f c-. b-. c-. d-. c-. b-. c |
	d c b c d c b c |
	d4 r |
	g,,2\p ~|
	g8( e' d c) |
	b r a r |
	g( b d b) |
	e,( a c a) |
	d,( g b g) |
	d( fis a fis) |
	g( b e g) |
	e,( a c a) |
	d,( g b g) |
	d( fis a fis) |
	g r fis'4( |
	g8) r fis4( |
	g8) r g,16\f a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	<c' d, d,>4 r |
	q r |
	q r |
	q r\fermata |
	d16-.\p c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d\cresc c b c d c b c |
	d c b c d c b c |
	d4\f r |
	<fis, a, d,> r |
	<g b, d, g,> r |
}>>

violinII = <<\global \relative c'' { \key g \major
	\tupletSpan 4
\repeat volta 2 {
	g2\p ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
}
\repeat volta 2 {
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p b-. b-. |
	a8.(\trill g16) fis8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p g-. e-. |
	a8.(\trill g16) fis8 r |
	g2 ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
}
%A
	d8\f b g4 |
	e'8 c a4 |
	fis'8 d b4 |
	g'8\downbow e a fis |
	b16( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8 r |
	d,4\p d' |
	a fis |
	a16-. g-. fis-. g-. a-. g-. fis-. g-. |
	a-. g-. fis-. g-. a-. g-. fis-. a-. |
	cis,4 a' |
	e cis |
	g'16-. fis-. e-. fis-. g-. fis-. e-. fis-. |
	g-. fis-. e-. fis-. g-. fis-. e-. g-. |
	fis4 r8 b |
	a4 r8 g |
	fis4 r8 b |
	a4 r8 g |
	fis4 r8 e |
	d4 r8 c |
	b4 r8 a |
	g4 r8 c |
	b b b b |
	e e g g |
	d4( cis8) a'16-.\f\downbow b-. |
	cis( b) a-. b-. cis-. d-. e-. d-. |
	cis( b) cis-. d-. e-. fis-. g-. fis-. |
	e-. d-. cis-. b-. a-. g-. fis-. e-. |
%B
	d8 fis\p fis fis |
	fis fis e e |
	d d b b |
	a a' a a |
	a( fis) fis(-. fis)-. |
	e e e e |
	g g e e |
	cis'4( d8) r |
	fis, fis fis fis |
	fis fis e e |
	d fis e g |
	d d cis e( |
	fis) fis\upbow fis fis |
	b b b b |
	e, e g g |
	fis r fis16( d) fis-. d-. |
	d'8 r fis,16( d) fis-. d-. |
	cis'8 r g16( e) g-. e-. |
	e'8 r g,16( e) g-. e-. |
	d'8 r a16( fis) a-. fis-. |
	fis'8 r a,16( fis) a-. fis-. |
	g8-. b-. a-. g-. |
	fis-. e-. d-. cis-. |
	d2 ~|
	d |
	cis ~|
	cis |
	c! ~|
	c |
	b4(\cresc a) |
	g( g') |
	fis\f r |
%C
	R2*4 |
	fis8(\p\upbow e) d-. cis-. |
	fis4.( g16 e |
	d8) r cis-. r |
	e4( d8) r |
	R2*4 |
	fis8(\upbow e) d-. cis-. |
	fis4.( g16 e |
	d8) r cis-. r |
	d2( |
	b' |
	a |
	g) |
	fis( |
	d |
	a' |
	g) |
	fis8 r g4( |
	fis8) r g4( |
	fis8) r fis r |
	fis r fis r |
	fis4 r^\fermatacad |
	g2\p ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p b-. b-. |
	a8.(\trill g16) fis8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p g-. e-. |
	a8.(\trill g16) fis8 r |
	g2 ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
%D
\repeat volta 2 {
	R2 |
	\tuplet 3/2 {g'8\p g g g g g |
	fis4.:8 fis: |
	g: g:} |
	fis4 r |
	g r |
	a r |
	e( dis8) r |
	R2 |
	\tuplet 3/2 {g4.: g: |
	fis: fis: |
	g: g:} |
	fis4 r |
	g r |
	fis2\trill |
	e4 r |
}
	\tuplet 3/2 {e'8-.\f fis-. g-. fis-. e-. d-. |
	cis d e d cis b} |
	ais4 b |
	g( fis8) r |
	R2*2 |
	d8\p d fis fis |
	gis gis gis gis |
	fis4 r |
	R2 |
	cis8 cis fis fis |
	fis fis fis fis |
	d4 r |
	R2 |
	d''16-.\f cis-. b-. cis-. d-. cis-. b-. cis-. |
	d-. cis-. b-. cis-. d-. cis-. b-. cis-. |
	d4 r |
%E
	d,,2\p ~|
	d |
	cis4( e) |
	\tuplet 3/2 {e8( d) d-.} d4 |
	d2 ~|
	d |
	cis4( e) |
	d r |
	fis r |
	g r |
	cis r |
	b r |
	fis r |
	g r |
	e r |
	d r |
	fis8 fis fis fis |
	g2:8 |
	ais: |
	b: |
	b: |
	b: |
	ais: |
	b:16 |
	b4: ais: |
	b2:\f |
	b4: ais: |
	<b d,> r^\fermatacad |
	g2\p ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
%F
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p b-. b-. |
	a8.(\trill g16) fis8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p g-. e-. |
	a8.(\trill g16) fis8 r |
	g2 ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
	c'16(\f b) b-. b-. b8 r |
	e16( d) d-. d-. d8 r |
	g16( f) f-. f-. f8 r |
	R2*5 |
	e,8-.\p c-. e-. c-. |
	d-. b-. d-. b-. |
	g'-. e-. g-. e-. |
	f-. d-. f-. d-. |
	e4 r |
	R2*3 |
	e8-. c-. e-. c-. |
	d-. b-. d-. b-. |
	g'-. e-. g-. e-. |
	f-. d-. f-. d-. |
%G
	e16-. d-. c-. d-. e-. d-. c-. d-. |
	e d c d e d c d |
	e d c d e d c d |
	e d c d e d c e |
	b a g a b a g a |
	b a g a b a g a |
	b a g a b a g a |
	b a g a b a g g' |
	fis e d e fis e d e |
	fis e d e fis e d e |
	fis e d e fis e d e |
	fis e d e fis e d fis |
	g4 r |
	g r |
	g8 r e r |
	e r e r |
	c16 d e d c d e d |
	c d e d c d e c |
	a'2( |
	g) |
	fis8(-. fis)-. fis fis |
	fis fis a a |
	g g g g |
	g g b16 a b g |
	fis8 fis fis fis |
	fis fis a a |
	g g g g |
	g g b16 a b g |
	fis4 r |
	R2 |
	<a fis'>8\f q4 q8 ~|
	q q4(-- q8)-. |
	a16-. g-. fis-. g-. a-. g-. fis-. g-. |
	a-. g-. fis-. g-. a-. g-. fis-. g-. |
	a4 r^\fermatacad |
	g2\p ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
%H
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p b-. b-. |
	a8.(\trill g16) fis8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p g-. e-. |
	a8.(\trill g16) fis8 r |
	g2 ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
	d8\f b g4 |
	e'8 c a4 |
	fis'8 d b4 |
	g'8\downbow e a fis |
	b16( d) g-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	g,,4\p g' |
	d b |
	d'16-. c-. b-. c-. d-. c-. b-. c-. |
	d-. c-. b-. c-. d-. c-. b-. d-. |
	fis,4 d' |
	a fis |
	c'16-. b-. a-. b-. c-. b-. a-. b-. |
	c-. b-. a-. b-. c-. b-. a-. c-. |
	b4 r8 e |
	d4 r8 c |
	b4 r8 e |
	d4 r8 c |
	b4 r8 a |
	g4 r8 f |
	e4 r8 d |
	c4 r8 f |
	e e e e |
	a a c c |
	g4( fis8) d16-.\f\downbow e-. |
	fis( e) d-. e-. fis-. g-. a-. g-. |
	fis( e) fis-. g-. a-. b-. c-. b-. |
	a-. g-. fis-. e-. d-. c-. b-. a-. |
%K
	g8 b'\p b b |
	b b a a |
	g g e e |
	d d' d d |
	d( b) b-. b-. |
	a a a a |
	fis fis a, a |
	fis'4( g8) r |
	b, b b b |
	b b a a |
	g b a c |
	b b a a( |
	b) b b b |
	a a a a |
	c c fis fis |
	g r b,16( g) b-. g-. |
	g'8 r b,16( g) b-. g-. |
	fis'8 r c16( a) c-. a-. |
	a'8 r c,16( a) c-. a-. |
	g'8 r d16( b) d-. b-. |
	b'8 r d,16( b) d-. b-. |
	c8-. e-. d-. c-. |
	b-. d-. d-. d-. |
	b2 |
	g' |
	fis ~|
	fis |
	f ~|
	f |
	e4(\cresc d) |
	c( c') |
	b\f r |
%L
	R2*4 |
	b8(\p\upbow a) g-. fis-. |
	b4.( c16 a |
	g8) r fis-. r |
	a4( g8) r |
	R2*4 |
	d8(\upbow c) b-. a-. |
	d4.( e16 c |
	b8) r a-. r |
	g4-. r |
	R2*3 |
	g'2\p ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
%M
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p b-. b-. |
	a8.(\trill g16) fis8 r |
	d'16\f g b a g fis e d |
	c b a g fis e d c |
	b8 b'-.\p g-. e-. |
	a8.(\trill g16) fis8 r |
	g2 ~|
	g ~|
	g4 r8 g |
	fis4 r8 fis' |
	g2 ~|
	g ~|
	g8 b,-. a-. fis-. |
	c16( b) b-. b-. b8 r |
	g'16( fis) fis-. fis-. fis8 r |
	g-. d-. b-. g-. |
	g'4( fis) g8 r r4 |
	R2 |
	d''16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d-. c-. b-. c-. d-. c-. b-. c-. |
	d4 r |
	d,,2\p |
	e4 r8 a |
	g4 fis |
	c16( b) b-. b-. b8 r |
	g'16( fis) fis-. fis-. fis8 r |
	g-. d-. b-. g-. |
	g'4( fis) g8 r r4 |
	R2 |
%N
	d''16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d-. c-. b-. c-. d-. c-. b-. c-. |
	d4 r |
	d,,2\p |
	e4 r8 a |
	g r fis r |
	g2 |
	e' |
	d |
	c |
	b( |
	g |
	d'\upbow |
	c) |
	b8 r c4( |
	b8) r c4( |
	b8) r g16\f\downbow a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	<fis a, d,>4 r |
	q r |
	q r |
	q r\fermata |
	b,16-.\p a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g a |
	b\cresc a g a b a g a |
	b a g a b a g a |
	b4\f r |
	<fis' a, d,> r |
	<g b, d, g,> r |
}>>

viola = <<\global \relative c' { \key g \major \clef "alto"
	\tupletSpan 4
\repeat volta 2 {
	g2\p ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
}
\repeat volta 2 {
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d d d r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d16( cis d cis d) c-. b-. a-. |
	g2 ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
}
%A
	g,4.\f e8 |
	c e' r fis, |
	d fis' r g, |
	e g' d4 |
	b'16( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8-. r |
	d,4\p d' |
	a fis |
	fis16-. e-. d-. e-. fis-. e-. d-. e-. |
	fis e d e fis e d fis |
	a,4 a' |
	e cis |
	e16 d cis d e d cis d |
	e d cis d e d cis e |
	d4 r8 e |
	e4 r8 e |
	d4 r8 e |
	e4 r8 e |
	d4 r8 cis |
	b4 r8 a |
	g4 r8 fis |
	e4 r8 fis |
	g g g g |
	b b e e |
	a,4. a16-.\f b-. |
	cis( b) a-. b-. cis-. d-. e-. d-. |
	cis( b) cis-. d-. e-. fis-. g-. fis-. |
	e d cis b a g fis e |
%B
	d8 d'\p d d |
	d d d d |
	d d g, g |
	a a a e'( |
	fis) d-. d-. d-. |
	d d d d |
	cis cis a' a |
	a4 ~ a8 r |
	d, d d d |
	d d d d |
	d a b g |
	a a' a a |
	a a a a |
	d, d d d |
	cis cis e e |
	\repeat unfold 24 {c} |
	d4 r a r |
	fis2 |
	a |
	e' ~|
	e |
	fis ~|
	fis |
	g4(\cresc fis) |
	g( e) |
	d\f r |
%C
	R2*4 |
	b4(\p a) |
	a( b) |
	a8-. r a-. r |
	a2 |
	R2*4 |
	b4( a) |
	a( b) |
	a8-. r g-. r |
	fis2( |
	d' |
	fis |
	e) |
	d( b' |
	fis |
	e) |
	d8 r a'4 ~|
	a8 r a4 ~|
	a8 r d, r |
	d r d r |
	d4 r^\fermatacad |
	g,2\p ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d d d r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d16( cis d cis d) c-. b-. a-. |
	g2 ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
%D
\repeat volta 2 {
	R2 |
	\tuplet 3/2 {e8\p e e e e e |
	dis dis dis dis dis dis |
	e e e e e e} |
	dis4 r |
	e r |
	a, r |
	\tuplet 3/2 {b8( c b) a( g fis)} |
	e4 r |
	\tuplet 3/2 {e'8 e e e e e |
	dis dis dis dis dis dis |
	e e e e e e} |
	dis4 r |
	e r |
	b b |
	b r |
}
	R2 |
	\tuplet 3/2 {cis8-.\f d-. e-. d-. cis-. b-.} |
	ais4-. b-. |
	g( fis8) r |
	R2*2 |
	b8\p b d, d |
	cis cis cis cis |
	fis4 r |
	R2 |
	fis8 fis fis fis |
	b b b b |
	b4 r |
	R2 |
	d'16-.\f cis-. b-. cis-. d-. cis-. b-. cis-. |
	d cis b cis d cis b cis |
	d4 r |
%E
	eis,,2\p |
	fis ~|
	fis |
	g |
	eis |
	fis ~|
	fis ~|
	fis4 r |
	b r |
	e, r |
	fis r |
	g r |
	d r |
	cis r |
	cis r |
	b r |
	d8 d d d |
	e e e e |
	cis cis cis cis |
	b b b b |
	fis' fis fis fis |
	g g g g |
	e e e e |
	d4 fis |
	g e |
	d16\f d d d fis4:16 |
	g: fis: |
	fis r^\fermatacad |
	g2\p ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
%F
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d d d r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d16( cis d cis d) c-. b-. a-. |
	g2 ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
	c16(\f b) b-. b-. b8 r |
	e16( d) d-. d-. d8 r |
	g16( f) f-. f-. f8 r |
	R2*5 |
	<g g,>2\p ~|
	q ~|
	q ~|
	q ~|
	q4 r |
	R2*3 |
	q2 ~|
	q ~|
	q ~|
	q |
%G
	c,4 r |
	R2*3 |
	b4 r |
	R2*3 |
	d4 r |
	R2*3 |
	d4 r |
	b r |
	c8 r c r |
	c r c r |
	R2*2 |
	e16 fis g fis e fis g fis |
	e fis g fis e fis g e |
	d8 d d d |
	d d d fis |
	g d d d |
	d d d d |
	d d d d |
	d d d fis |
	g d d d |
	d d d d |
	d4 r |
	R2 |
	a'16-.\f g-. fis-. g-. a-. g-. fis-. g-. |
	a-. g-. fis-. g-. a-. g-. fis-. g-. |
	a4-. d-. |
	fis,-. a-. |
	d,4 r^\fermatacad |
	g,2\p ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
%H
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d d d r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d16( cis d cis d) c-. b-. a-. |
	g2 ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
	g,4.\f e8 |
	c e' r fis, |
	d g' r g, |
	e g' d4 |
	d8 g16-. fis-. g( fis) e-. d-. |
	c( d) e-. d-. e( d) c-. b-. |
	a( b) c-. b-. c( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	g,4\p g' |
	d b |
	b'16-. a-. g-. a-. b-. a-. g-. a-. |
	b a g a b a g b |
	d,4 d' |
	a fis |
	a16-. g-. fis-. g-. a-. g-. fis-. g-. |
	a g fis g a g fis a |
	g4 r8 a |
	a4 r8 a |
	g4 r8 a |
	a4 r8 a |
	g4 r8 fis |
	e4 r8 d |
	c4 r8 b |
	a4 r8 b |
	c c c c |
	e e a a |
	d,4. d16-.\f e-. |
	fis( e) d-. e-. fis-. g-. a-. g-. |
	fis( e) fis-. g-. a-. b-. c-. b-. |
	a g fis e d c b a |
%K
	g8\p g' g g |
	g g g g |
	g g c, c |
	d d d a'( |
	b) g-. g-. g-. |
	g g g g |
	c c d, d |
	d4 ~ d8 r |
	g, g g g |
	g g g g |
	g d e c |
	d d' d d |
	d d d d |
	e e e e |
	a, a c c |
	<b d> g g g |
	\repeat unfold 20 g |
	g4 r |
	b8-. a-. g-. fis-. |
	g2 |
	d' |
	a' ~|
	a |
	b ~|
	b |
	c4(\cresc b) |
	c( a) |
	g\f r |
%M
	R2*4 |
	e4(\p d) |
	d( e) |
	d8 r d r |
	d2 |
	R2*4 |
	e,4( d) |
	d( e) |
	d8 r c'-. r |
	b4-. r |
	R2*3 |
	g2\p ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
%N
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d d d r |
	<<b2\f \\ g>> |
	<<c \\ a>> |
	<<d8 \\ a>> d-.\p d-. d-. |
	d16( cis d cis d) c-. b-. a-. |
	g2 ~|
	g ~|
	g4 r8 d' |
	d4 r8 d |
	g2 ~|
	g ~|
	g8 d-. e-. d-. |
	d d16 d d8 r |
	d8-. a-. fis-. d-. |
	R2 |
	c'4( a') |
	d,8 r r4 |
	R2 |
	d'16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d4 r |
	g,,2\p ~|
	g8( c, d e) |
	d4 d' |
	d8 d16 d ~d8 r |
	d-. a-. fis-. d-. |
	R2 |
	c'4( a') |
	d,8 r r4 |
	R2 |
	d'16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d4 r |
	g,,2\p ~|
	g8( c, d e) |
	d r c' r |
	b2 |
	g' |
	b |
	a |
	g( |
	e' |
	b |
	a) |
	g8 r d'4 ~|
	d8 r d,4 ~|
	d8 r g16\f a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	fis, g a g fis g a g |
	fis g a g fis g a g |
	fis g a g fis g a g |
	fis4 r\fermata |
	R2*2 |
	r4 d'\p\cresc |
	b g |
	d\f r |
	<d c'> r |
	<g, d' b'> r |
}>>

cello = <<\global \relative c' { \key g \major \clef "bass"
	\tupletSpan 4
\repeat volta 2 {
	R2*2 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
}
\repeat volta 2 {
	d'2:8\f |
	d: |
	d4 r |
	R2 |
	d2:8\f |
	d: |
	d4 r |
	R2*3 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
}
%A
	b8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	b'16( cis) d-. cis-. d( cis) b-. a-. |
	g( a) b-. a-. b( a) g-. fis-. |
	e( fis) g-. fis-. g( fis) e-. d-. |
	b'( a) a-. a-. a8-. r |
	R2*2 |
	d4\p a |
	fis d |
	R2*2 |
	a'4 e |
	cis a |
	d r8 d' |
	cis4 r8 cis |
	d4 r8 d |
	cis4 r8 cis |
	d4 r8 ais |
	b4 r8 fis |
	g4 r8 dis |
	e4 r8 a, |
	g2: |
	g': |
	a4 a,8 a'16-.\f b-. |
	cis( b) a-. b-. cis-. d-. e-. d-. |
	cis( b) cis-. d-. e-. fis-. g-. fis-. |
	e d cis b a g fis e |
%B
	d4 r |
	d\p r |
	d8 r g r |
	a4.( g8) |
	fis4 r |
	g r |
	a8 r a, r |
	r d'-. a-. fis-. |
	d2 ~|
	d ~|
	d8 r g r |
	a4.( g8) |
	fis2 |
	g |
	a8 r a, r |
	\repeat unfold 6 {d4 r} |
	g r |
	a r |
	\repeat unfold 6 {d,2:} |
	d2:\cresc |
	d2: |
	d4\f r |
%C
	R2*4 |
	g2\p |
	fis4( g) |
	a8 r a, r |
	d2 |
	R2*4 |
	g2 |
	fis4( g) |
	a8 r a, r |
	d4 r |
	g r |
	a r |
	a, r |
	b r |
	g' r |
	a r |
	a, r |
	d8 r a'4( |
	d8) r a4( |
	d8) r d, r |
	d r d r |
	d4 r^\fermatacad |
	R2*2 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
	d'2:8\f |
	d: |
	d4 r |
	R2 |
	d2:8\f |
	d: |
	d4 r |
	R2*3 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
%D
\repeat volta 2 {
	R2 |
	e''4\p r |
	b r |
	e, r |
	b r |
	e r |
	a r |
	\tuplet 3/2 {b8( c b) a( g fis)} |
	e4 r |
	e' r |
	b r |
	e, r |
	a r |
	g r |
	b b, |
	e r |
}
	R2 |
	\tuplet 3/2 {cis'8-.\f d-. e-. d-. cis-. b-.} |
	ais4-. b-. |
	g( fis8) r |
	R2*2 |
	d2\p |
	cis |
	R2*2 |
	fis2 |
	b, |
	R2*2 |
	d'16-.\f cis-. b-. cis-. d-. cis-. b-. cis-. |
	d cis b cis d cis b cis |
	d4 r |
%E
	R2*7 |
	b,4\p r |
	d r |
	e r |
	fis r |
	g r |
	d r |
	e r |
	fis r |
	b, r |
	d2: |
	e: |
	fis: |
	g: |
	d: |
	e: |
	fis: |
	b,4 b' |
	e, fis |
	g8\f g d d |
	e e fis fis |
	b,4 r^\fermatacad |
	R2*2 |
	r4 r8 g'\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
%F
	d'2:8\f |
	d: |
	d4 r |
	R2 |
	d2:8\f |
	d: |
	d4 r |
	R2*3 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
	c'16(\f b) b-. b-. b8-. r8 |
	e16( d) d-. d-. d8 r |
	g16( f) f-. f-. f8 r |
	R2*5 |
	g,2\p ~|
	g ~|
	g ~|
	g |
	c,8-. e-. g-. c-. |
	g4 r |
	R2*2 |
	g2 ~|
	g ~|
	g ~|
	g |
%G
	c,4 r |
	R2*3 |
	b4 r |
	R2*3 |
	d4 r |
	R2*3 |
	g4 r |
	b r |
	c8 r c r |
	c r c r |
	R2*2 |
	c16 d e d c d e d |
	c d e d cis d e cis |
	d4 r |
	R2*3 |
	d,2: |
	d: |
	d: |
	d: |
	d4 r |
	R2 |
	fis16-.\f e-. d-. e-. fis-. e-. d-. e-. |
	fis-. e-. d-. e-. fis-. e-. d-. e-. |
	fis4-. d'-. |
	fis,-. a-. |
	d,4 r^\fermatacad |
	R2*2 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
%H
	d'2:8\f |
	d: |
	d4 r |
	R2 |
	d2:8\f |
	d: |
	d4 r |
	R2*3 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
	b8\f g c4 ~|
	c8 a d4 ~|
	d8 b e4 ~|
	e8 c fis d |
	g g'16-. fis-. g( fis) e-. d-. |
	cis( d) e-. d-. e( d) cis-. b-. |
	a( b) cis-. b-. cis( b) a-. g-. |
	e'( d) d-. d-. d8 r |
%I
	R2*2 |
	g,4\p d |
	b g |
	R2*2 |
	d''4 a |
	fis d |
	g r8 g |
	fis4 r8 fis |
	g4 r8 g |
	fis4 r8 fis |
	g4 r8 dis' |
	e4 r8 b |
	c4 r8 gis |
	a4 r8 d, |
	c2: |
	c': |
	d4( d,8) d16-.\f e-. |
	fis( e) d-. e-. fis-. g-. a-. g-. |
	fis( e) fis-. g-. a-. b-. c-. b-. |
	a g fis e d c b a |
%K
	g4 r |
	g'\p r |
	g8 r c r |
	d4.( c8) |
	b4 r |
	c r |
	d8 r d, r |
	r g-. d-. b-. |
	g2 ~|
	g ~|
	g8 r c r |
	d4.( c8) |
	b2 |
	c |
	d8 r d r |
	\repeat unfold 6 {g4 r} |
	c, r |
	d r |
	\repeat unfold 6 {g2:} |
	g:\cresc |
	g: |
	g4\f r |
%L
	R2*4 |
	c2\p |
	b4( c) |
	d8 r d, r |
	g2 |
	R2*4 |
	c,2 |
	b4( c) |
	d8 r d r |
	g,4 r |
	R2*5 |
	r4 r8 g'\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
%M
	d'2:8\f |
	d: |
	d4 r |
	R2 |
	d2:8\f |
	d: |
	d4 r |
	R2*3 |
	r4 r8 g\p |
	d'4 r8 d, |
	g4 r |
	R2 |
	r8 g-. c-. d-. |
	g,-. d-. b-. g-. |
	R2*2 |
	g'2 ~|
	g8 r r4 |
	R2 |
	d'16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d4 r |
	b,2\p |
	c |
	d4 d |
	g8-. d-. b-. g-. |
	R2*2 |
	g'2 ~|
	g8 r r4 |
	R2 |
%N
	d'16-.\f c-. b-. c-. d-. c-. b-. c-. |
	d c b c d c b c |
	d4 r |
	b,2\p |
	c |
	d8 r d r |
	g4 r |
	c r |
	d r |
	d, r |
	e r |
	c r |
	d r |
	d r |
	g8 r d'4( |
	g,8) r d4( |
	g8) r g16\f a b g |
	e fis g e a b c a |
	fis g a fis b c d b |
	g a b g c d e c |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d e fis e d e fis e |
	d4 r\fermata |
	R2*2 |
	r4 d\p\cresc |
	b g |
	d\f r |
	d r |
	g, r |
}>>
