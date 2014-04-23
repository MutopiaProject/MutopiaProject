\version "2.18.0"

global = {\tempo "Adagio" \time 4/4 s1*16 \bar "||"}
midiTempo = 60

oboeI = <<\global \relative c''' { \key d \major
	R1*4 |
\repeat unfold 2 {
	d4(\f g,8) r r2 |
	d'4(\f g,8) r r2 |
	r c4(\f b8) r |
	R1 |
	f4\p e8( d) cis4 d8( e) |
	a,4 cis8.\trill b32 cis d4 r |
}
}>>

oboeII = <<\global \relative c'' { \key d \major
	R1*4 |
\repeat unfold 2 {
	g4(\f d'8) r r2 |
	g,4(\f d'8) r r2 |
	r fis4(\f g8) r |
	R1*3 |
}
}>>

fagottoI = <<\global \relative c { \key d \major \clef "bass"
	r8 d(\p fis d) a'4.( g8) |
	fis4 r8 d8-. e( a,) d-. r |
	g4( fis8) r cis4( d8) r |
	g,4.( gis8) a a a r |
	b\f b' b b, a a' a a, |
	b\f b' b b,\p ais ais' ais ais, |
	a! a'! a a, a'\f a g g |
	fis\p fis e d cis\pp cis d d |
	gis gis gis gis g g fis gis |
	a a a, a d4 r |
	b8\p b' b b,\p a a' a a, |
	b\f b' b b,\p ais ais' ais ais, |
	a! a'! a a, a'\f a g g |
	fis\p fis e d cis\pp cis d d |
	gis, gis gis gis g g' fis gis |
	a a a, a d4 r |
}>>

fagottoII = \fagottoI

cornodI = <<\global \relative c'' {
	R1*4 |
\repeat unfold 2 {
	c4\f ~ c8 r r2 |
	c4\f ~ c8 r r2 |
	r c4\f ~ c8 r |
	R1*3 |
}
}>>

cornodII = <<\global \relative c' {
	R1*4 |
\repeat unfold 2 {
	c4\f ~ c8 r r2 |
	c4\f ~ c8 r r2 |
	r c4\f ~ c8 r |
	R1*3 |
}
}>>

trombeI = \cornodI

trombeII = \cornodII

violinI = <<\global \relative c'' { \key d \major
	a4\p d8( fis) fis16( e d cis) b( a) b( cis) |
	d( e fis cis) d( a) b( fis) a8( g)\trill fis r |
	e4( d8) r g4( fis8) r |
	b( a) g( fis) a4( e8) r |
	d''4(\f g,8) r16 g,\p g( fis eis fis) fis4 |
	d''(\f g,8) r16 g,\p g( fis eis fis) fis4 ~|
	fis16 fis8 fis fis fis16 c''4(\f b8) r |
	a4(\p gis8) r g4(\pp fis8) r |
	f4 e8( d) cis4 d8( e) |
	a,4 cis8.\trill b32 cis d16 d,( cis d) cis( d) cis( d) |
	d''4(\f g,8) r16 g,\p g( fis eis fis) fis4 |
	d''4(\f g,8) r16 g,-.\p g( fis eis fis) fis4 ~|
	fis16 fis8 fis fis fis16 c''4(\f b8) r |
	a4(\p gis8) r g4(\pp fis8) r |
	f4 e8( d) cis4 d8( e) |
	a,4 cis8.\trill b32 cis d16( cis b a) gis( g fis e) |
}>>

violinII = <<\global \relative c' { \key d \major
	fis4\p a8( d,) d16( cis fis e) d( cis) d( e) |
	a,4 r8 d(\upbow b cis) d16 a a a |
	a a a a a a a a a a a a a a ais ais |
	b b dis dis e e d d <fis a,> q q q <e a,> q q q |
\repeat unfold 2 {
	<g g,>\f q q q q q d\p d d4:16 d: |
	<g g,>:\f q16 q d\p d cis cis cis fis fis( e dis e) |
	e dis8 dis dis dis16 <c' d,>4:\f <b d,>: |
	<a b,>:\p <gis b,>: e':\pp d: |
	d,: e16 e f f e4: d: |
	fis: g: fis4 r |
}
}>>

viola = <<\global \relative c' { \key d \major \clef "alto"
	d4\p a a'2 ~|
	a4 r8 fis-. fis( e)\trill d r |
	cis4( d8) r e4( d8) r |
	d b4 b8 <d a>4:16 cis: |
\repeat unfold 2 {
	<d b>:\f q16 q b\p b a4: a: |
	<d b>:\f q16 q b\p b ais4: cis: |
	c16 c8 c c c16 fis4:\f g: |
	dis:\p e: bes':\pp a: |
	b,: b: bes: a16 a b b |
	d4: e: d4 r |
}
}>>

cello = \fagottoI
