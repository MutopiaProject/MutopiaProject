\version "2.18.0"

global = {\tempo "Menuetto" \time 3/4
          \partial 4 \repeat volta 2 {s4 | s2.*15 | s2}
          \repeat volta 2 {s4 | s2.*23 | s2}
          \mark "Trio."
          \repeat volta 2 { s4 | s2.*7 | s2}
          \repeat volta 2 { s4 | s2.*17 | s2}
          \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \mark "Menuetto da capo."
          }
midiTempo = 150

flautoI = <<\global \relative c''' { \key g \minor
	\partial 4
\repeat volta 2 {
	r4 |
	bes2. |
	c |
	a |
	g4 r r |
	R2.*4 |
	gis4-.\f a-. fis-. |
	g!2 f!4 |
	g f e |
	d r f\p |
	e( g cis,) |
	d2( e4) |
	f2( g4)\trill |
	a r
}
\repeat volta 2 {
	r |
	R2.*3 |
	d4\f d d |
	d2. ~|
	d |
	bes2 a8. g16 |
	fis4 r r |
	R2.*4 |
	cis'4-.\f d-. b-. |
	c2 bes!4 |
	a g fis |
	g r r |
	R2. |
	d,2.\p ~|
	d ~|
	d4 r r |
	d''2.\f |
	c |
	fis,4-. fis( a) |
	g2
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r d,\p |
	g2 a4 |
	b2 c4 |
	d4 r r |
	r r c |
	b b b |
	b r
}
\repeat volta 2 {
	d |
	c2. |
	b4 r g' |
	fis2. |
	g4 r r |
	g,( a b) |
	g( a b) |
	R2. |
	g'4( fis e) |
	d fis a |
	d2 r4 |
	R2. |
	r4 r d,, |
	g2 a4 |
	b2 c4 |
	d r r |
	r r c |
	b b b |
	b r
}
}>>

flautoII = <<\global \relative c''' { \key g \minor
	\partial 4
\repeat volta 2 {
	r4 |
	g2. |
	a2. |
	fis2. |
	g4 r r |
	R2.*4 |
	f!4-.\f e-. es-. |
	d2. |
	e4 d cis |
	d r r |
	R2. |
	r4 r cis\f |
	d2( e4)\trill |
	f4 r
}
\repeat volta 2 {
	r |
	R2.*3 |
	d4\f d d |
	d2. ~|
	d |
	e |
	a,4 r r |
	R2.*4 |
	b'4-.\f a-. as-. |
	g2. |
	c,4 bes a |
	bes r r |
	R2. |
	d,2.\p ~|
	d ~|
	d4 r r |
	bes''2.\f |
	a |
	c,4 c c |
	bes2
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r d,\p |
	d2 fis4 |
	g2 a4 |
	bes r r |
	r r fis |
	g g g |
	g r
}
\repeat volta 2 {
	b |
	a2. |
	g4 r b |
	a2. |
	b4 r r |
	e,( fis g) |
	e( fis g) |
	R2. |
	e4( fis g) |
	a d fis |
	a,2 r4 |
	R2. |
	r4 r d, |
	d2 fis4 |
	g2 a4 |
	b r r |
	r r fis |
	g g g |
	g r
}
}>>

fagottoI = <<\global \relative c' { \key g \minor \clef "bass"
	\partial 4
\repeat volta 2 {
	r4 |
	d2. |
	e |
	c |
	bes4 r d\p |
	es2.( |
	d) |
	es( |
	d) |
	d4-.\f e-. c-. |
	b-. bes-. a-. |
	g a a, |
	d r r |
	R2. |
	a'2.\p ~|
	a ~|
	a4 r
}
\repeat volta 2 {
	r |
	cis(\f d) r |
	fis,( g) r |
	R2. |
	d'4\f d d |
	d( e) r |
	fis( g) r |
	cis,, cis cis |
	d d' d\p |
	es!2.( |
	d) |
	es( |
	d) |
	e4-.\f a,-. d-. |
	g,-. es-. d-. |
	c d d |
	g, r bes'\p |
	a( c fis,) |
	g2( a4) |
	bes2( c4)\trill |
	d r r |
	d2.\f |
	es |
	c |
	bes2
}
\repeat volta 2 {
	r4 |
	R2.*2 |
	d2.\p ~|
	d ~|
	d4 r r |
	r r c |
	b2. ~|
	b4 r
}
\repeat volta 2 {
	r4 |
	d2. ~|
	d ~|
	d ~|
	d2 r4 |
	e,2. |
	e |
	R2. |
	cis'4( d e) |
	fis d a |
	fis2 r4 |
	R2.*2 |
	d'2. ~|
	d2. ~|
	d4 r r |
	r r c |
	b2. ~|
	b4 r
}
}>>

fagottoII = <<\global \relative c' { \key g \minor \clef "bass"
	\partial 4
\repeat volta 2 {
	r4 |
	bes2. |
	c |
	a |
	g4 r bes\p |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	b-.\f cis-. a-. |
	b-. bes-. a-. |
	g a a, |
	d r r |
	R2. |
	a'2.\p ~|
	a ~|
	a4 r
}
\repeat volta 2 {
	r4 |
	cis(\f d) r |
	fis,( g) r |
	R2. |
	d4\f d d |
	bes'( a) r |
	a( g) r |
	cis, cis cis |
	d d' bes\p |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	g-.\f fis-. f-. |
	e-. es-. d-. |
	c d d g, r r |
	R2. |
	r4 r fis'\p |
	g2( a4) |
	bes r r |
	bes2.\f |
	c |
	a |
	g2
}
\repeat volta 2 {
	r4 |
	R2.*2 |
	g,4\p g g |
	g g g |
	g r r |
	r r d' |
	g, bes d |
	g g,
}
\repeat volta 2 {
	r |
	d' d d |
	g, g' r |
	d r d |
	g r r |
	e2. |
	e |
	R2. |
	a4 a a |
	d a fis |
	d2 r4 |
	R2.*2 |
	g,4 g g |
	g g g |
	g r r |
	r r d' |
	g, b d |
	g g,
}
}>>

cornogI = <<\global \relative c'' {
	\partial 4
\repeat volta 2 {
	r4 |
	c r r |
	d r r |
	d r r |
	c r r |
	R2.*4 |
	g4\f d' d |
	g,2. |
	c4 d d |
	d r r |
	R2. |
	g,,2.\p ~|
	g ~|
	g4 r
}
\repeat volta 2 {
	r4 |
	g'2\f r4 |
	g2 r4 |
	g g g |
	g r r |
	g2. ~|
	g |
	c2 d4 |
	d r r |
	R2.*4 |
	c4\f g g |
	c2. |
	r4 g g |
	g r r |
	R2. |
	c,2.\p ~|
	c2. ~|
	c4 r r |
	c'\f r r |
	d r r |
	d d d |
	c2
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r g\p |
	g'2 f4 |
	e2 d4 |
	c r r |
	r r d |
	c g g |
	g r
}
\repeat volta 2 {
	r |
	r r g |
	c e c |
	g r g |
	c e c |
	R2.*3 |
	d4 d d |
	d d d |
	d2 r4 |
	R2. |
	r4 r g, |
	g'2 f4 |
	e2 d4 |
	c4 r r |
	r r d |
	c g g |
	g r
}
}>>

cornogII = <<\global \relative c' {
	\partial 4
\repeat volta 2 {
	r4 |
	c r r |
	c' r r |
	g r r |
	c, r r |
	R2.*4 |
	g'4\f d' d |
	g,2. |
	c4 d d |
	g, r r |
	R2. |
	g,2.\p ~|
	g ~|
	g4 r
}
\repeat volta 2 {
	r4 |
	g2\f r4 |
	g2 r4 |
	g4 g g |
	g r r |
	g'2. ~|
	g |
	c,2 d'4 |
	g, r r |
	R2.*4 |
	c,4\f g' g |
	c,2. |
	r4 g' g |
	c, r r |
	R2. |
	c2.\p ~|
	c ~|
	c4 r r |
	c\f r r |
	c' r r |
	g g g |
	c,2
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r g'\p |
	e'2 d4 |
	c2 g4 |
	e r r |
	r r g |
	g c, c |
	c r
}
\repeat volta 2 {
	r4 |
	r r g' |
	c, e c |
	g' r g |
	c, e c |
	R2.*3 |
	d'4 d d |
	g, g g |
	g2 r4 |
	R2. |
	r4 r g |
	e'2 d4 |
	c2 g4 |
	e r r |
	r r g |
	g c, c |
	c r
}
}>>

violinA = \relative c'' {
	\partial 4
\repeat volta 2 {
	d4-. |
	g-. g( bes) |
	a-. a( c) |
	fis,-. fis( a) |
	g2 d4\p |
	es2.( |
	d) |
	es( d) |
	gis4-.\f a-. fis-. |
	g!2 f!4 |
	| e a, cis |
	d r f,\p |
	e( g cis,) |
	d2( e4) |
	f2( g4)\trill |
	a r
}
\repeat volta 2 {
	d,-.\f |
	bes'( a) d,-. |
	c'( bes) d,-. |
	d'2 c8. bes16 |
	a4 r d-. |
	d'( cis) d,-. |
	c'!( b) d,-. |
	bes'2 a8. g16 |
	fis4 r d\p |
	es2.( |
	d) |
	es( |
	d) |
	cis'4-.\f d-. b-. |
	c2 bes4 |
	a d, fis |
	g r bes,\p |
	a( c fis,) |
	g2( a4) |
	bes2( c4)\trill |
	d r d-.\f |
	g-. g( bes) |
	a-. a( c) |
	fis,-. fis( a) |
	<g bes, d,>2
}
}

violinsolo = <<\global \violinA \relative c'' { \key g \minor
	\tupletSpan 4
	\partial 4
	\repeat volta 2 {s4 | s2.*15 | s2}
	\repeat volta 2 {s4 | s2.*23 | s2}

\key g \major
\repeat volta 2 {
	d4^"Solo" |
	d' d8.( b16) c8.( a16) |
	b4 b8.( g16) a8.( fis16) |
	g2 a8.\trill g32 a |
	b2 c8.\trill b32 c |
	d4 \tuplet 3/2 {d8( b d c a c)} |
	b4 \tuplet 3/2 {b8( g b a fis a)} |
	g2 d8( b') |
	g4 r
}
\repeat volta 2 {
	g |
	fis ~ \tuplet 3/2 {fis8( a g fis g a)} |
	g4 r d |
	a' ~ \tuplet 3/2 {a8( c b a b c)} |
	b4 r b, |
	g'4.( dis8) e4-. |
	g4.( dis8) e4-. |
	g8.( a16 b8) a-. g-. fis-. |
	\appoggiatura fis16 e4 d cis |
	\appoggiatura e d4 \appoggiatura e16 d8. cis16 d8. e16 |
	d2 d4 |
	d' d8.( b16) c8.( a16) |
	b4 b8.( g16) a8.( fis16) |
	g2 a8.\trill g32 a |
	b2 c8.\trill b32 c |
	d4 \tuplet 3/2 {d8( b d c a c)} |
	b4 \tuplet 3/2 {b8( g b a fis a)} |
	g2 d8( b') |
	g4 r
}
}>>

violinI = <<\global \violinA \relative c'' { \key g \minor
	\partial 4
	\repeat volta 2 {s4 | s2.*15 | s2}
	\repeat volta 2 {s4 | s2.*23 | s2}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r4 r
}
\repeat volta 2 {
	r |
	R2.*17 |
	r4 r
}
}>>

violinII = <<\global \relative c' { \key g \minor
	\partial 4
\repeat volta 2 {
	d4-.\f |
	g-. g( bes) |
	a-. a( c) |
	fis,-. fis( a) |
	g2 bes4\p |
	as8( bes as bes fis4) |
	g8( fis g a! bes4) |
	as8( bes as g fis4) |
	g8( fis g a bes4) |
	gis-.\f a-. fis-. |
	g!2 f4-. |
	e-. a,-. cis-. |
	d-. r r |
	R2. |
	r4 r cis\p |
	d2( e4) |
	f r
}
\repeat volta 2 {
	d-.\f |
	g( fis) d-. |
	a'( g) d-. |
	bes'2 a8.(-. g16)-. |
	fis4 r d'-. |
	bes'( a) d,-. |
	a'( g) d,-. |
	g2 a8.(-. bes16)-. |
	a4 r bes\p |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	as8( bes as g fis4) |
	g8( fis g a! bes4) |
	cis-.\f d-. b-. |
	c!2 bes!4-. |
	a-. d,-. fis-. |
	g-. r r |
	R2. |
	r4 r fis\p |
	g2( a4) |
	bes r d,-.\f |
	g-. g( bes) |
	a-. a( c) |
	fis,-. fis( a) |
	<g g,>2
}
\repeat volta 2 {
	r4 |
	R2.*7 |
	r4 r
}
\repeat volta 2 {
	r |
	R2.*17 |
	r4 r
}
}>>

viola = <<\global \relative c'' { \key g \minor \clef "alto"
	\partial 4
\repeat volta 2 {
	r4 |
	<<{
	bes2. |
	c |
	a |
	g4
	} \\ {
	g2. |
	a |
	fis |
	g4
	}>>
	r
	<<{
	d4 |
	es2.( |
	d) |
	es( d) |
	f4-. e-. es-. |
	d-. bes-. a-. |
	} \\ {
	bes4\p |
	c2.( |
	bes) |
	c( |
	bes) |
	b4-. cis-. a-. |
	b-. bes-. a-. |
	}>>
	g' f e |
	d r r |
	R2. |
	r4 r g,\p |
	f2( e4) |
	d r
}
\repeat volta 2 {
	r |
	e'(\f fis) r |
	a,( bes) r |
	d d d |
	d r
	<<{
	d |
	d'( cis) d,-. |
	c'!( b) d,-. |
	} \\ {
	d |
	bes'( a) d,-. |
	a'( g) d-. |
	}>>
	e e e |
	fis d
	<<{
	d4 |
	es!2.( |
	d) |
	es( |
	d) |
	bes'4-. a-. as-. |
	g-. es-. d-. |
	} \\ {
	bes4\p |
	c2.( |
	bes) |
	c( |
	bes) |
	e4-.\f fis-. d-. |
	e-. es-. d-. |
	}>>
	c bes a |
	g r r |
	R2. |
	r4 r c\p |
	bes2( a4) |
	g r d'-.\f |
	<<{
	bes'2. |
	c |
	fis,4-. fis( a) |
	g2
	} \\ {
	g2. |
	a |
	d,4-. d d |
	d2
	}>>
}
\repeat volta 2 {
	r4 |
	R2.*7 |
	r4 r
}
\repeat volta 2 {
	r |
	R2.*17 |
	r4 r
}
}>>

cello = <<\global \relative c' { \key g \minor \clef "bass"
	\partial 4
\repeat volta 2 {
	r4 |
	g r r |
	c, r r |
	d r r |
	g, g' r |
	c,2.(\p |
	bes) |
	c( |
	bes) |
	d'4-.\f cis-. c-. |
	b-. bes-. a-. |
	g a a, |
	d d' r |
	R2. |
	d,4-.(\p d-. d-.) |
	d-.( d-. d-.) |
	d r
}
\repeat volta 2 {
	r4 |
	d2\f r4 |
	d2 r4 |
	d4 d d |
	d r r |
	d d d |
	d d d |
	cis cis cis |
	d d' r |
	c,2.(\p bes) |
	c( bes) |
	g''4-.\f fis-. f-. |
	e-. es-. d-. |
	c d d, |
	g g, r |
	R2. |
	g4-.(\p g-. g-.) |
	g-.( g-. g-.) |
	g g' r |
	g\f r r |
	c, r r |
	d d d |
	g,2
}
\repeat volta 2 {
	r4 |
	R2.*7 |
	r4 r
}
\repeat volta 2 {
	r |
	R2.*17 |
	r4 r
}
}>>
