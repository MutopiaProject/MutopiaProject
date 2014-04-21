\version "2.18.0"

global = {\tempo "Menuetto" \time 3/4 \partial 4
          \repeat volta 2 {s4 | s2.*7 | s2}
          \repeat volta 2 {s4 | s2.*21 | s2}
          \repeat volta 2 {s4 | \mark "Trio I." s2.*7 | s2}
          \repeat volta 2 {s4 | s2.*15 | s2}
          \repeat volta 2 {s4 | \mark "Trio II." s2.*7 | s2}
          \repeat volta 2 {s4 | s2.*15 | s2}
          \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \mark "Menuetto a DC"
         }
midiTempo = 140

flautoI = <<\global \relative c'' { \key d \major
	\partial 4
\repeat volta 2 {
	r4 |
	d2.\f |
	d' |
	b4 b b |
	a r r |
	R2. |
	r4 r a,\p |
	d( g fis) |
	e r
}
\repeat volta 2 {
	a4 |
	e'2. |
	cis |
	d8-. a-. d-. a-. fis-. d-. |
	a'4 r r |
	R2.*3 |
	r4 r d8(\f cis) |
	d4 fis, gis8.\trill fis32 gis |
	a4 g! fis |
	b8( e) d4 cis |
	d r r |
	R2. |
	d2. ~|
	d4 r\fermata r |
	a( fis) d'-. |
	b( g) d'-. |
	a fis e d r r |
	r r a |
	a'2( cis4) |
	d r
}

\key g \major
\repeat volta 2 {
	r4 |
	d,,2.\p ~|
	d |
	d'' ~|
	d4 fis,( g) |
	a( e' d) |
	cis( a d) |
	cis2.( |
	b4) r
}
\repeat volta 2 {
	r4 |
	R2.*3 |
	r4 r a\p |
	c8( b) a-. g-. g-. g-. |
	c( b) a-. g-. g-. g-. |
	fis-. g-. a-. b-. cis-. d-. |
	d,4 r d |
	d'( c! b) |
	d( c b) |
	b( d c) |
	c2( b4) |
	a( e' d) |
	c( a d) |
	c2.( |
	b4) r
}

\key d \major
\repeat volta 2 {
	a,4\p |
	fis' fis fis |
	e8-. fis-. g-. a-. b-. cis-. |
	d4 fis, fis |
	e8-. fis-. g-. a-. b-. cis-. |
	d4( a fis) |
	d'( a fis) |
	g2 fis4\trill |
	e r
}
\repeat volta 2 {
	a, |
	a'( g fis) |
	g8-. fis-. g-. a-. b4 |
	R2. |
	r4 r d, |
	g-. g( fis) |
	b-. b( a) |
	a( g) fis-. |
	e r a, |
	fis' fis fis |
	e8-. fis-. g-. a-. b-. cis-. |
	d4( a fis) |
	e8-. fis-. g-. a-. b-. cis-. |
	d4( a fis) |
	g( e cis) |
	d fis8 d fis a |
	d4 r
}
}>>

flautoII = <<\global \relative c'' { \key d \major
	\partial 4
\repeat volta 2 {
	r4 |
	a2.\f |
	fis' |
	g4 g g |
	a r r |
	R2. |
	r4 r a,\p |
	a( e' d) |
	cis r
}
\repeat volta 2 {
	a'\f |
	cis2. |
	e, |
	fis8-. a-. d-. a-. fis-. d-. |
	a'4 r r |
	R2.*3 |
	r4 r d,8(\f cis) |
	d4 fis gis8.\trill fis32 gis |
	a4 g! fis |
	b8( g) fis4 e |
	fis r r |
	R2. |
	d2.\p ~|
	d4 r\fermata r |
	fis(\f d) a'-. |
	g( d) b'-. |
	fis d cis |
	d r r |
	r r a\p |
	a2( g'4) |
	fis r
}

\key g \major
\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\key d \major
\repeat volta 2 {
	a,4\p |
	d d d |
	cis8-. d-. e-. fis-. g-. e-. |
	fis4 d d |
	cis8-. d-. e-. fis-. g-. e-. |
	fis2( d4) fis2( d4) |
	e2 d4\trill |
	cis r
}
\repeat volta 2 {
	a |
	fis'( e dis) |
	e8-. dis-. e-. fis-. g4 |
	r2. |
	r4 r d |
	g,-. g( fis) |
	b-. b( a) |
	a( e') d-. |
	cis r a |
	d d d |
	cis8-. d-. e-. fis-. g-. e-. |
	fis4 fis( d) |
	cis8-. d-. e-. fis-. g-. e-. |
	fis2( d4) |
	cis2( g4) |
	fis a8 fis a d |
	fis4 r
}
}>>

bassA = \relative c' {\key d \major
	\partial 4
\repeat volta 2 {
	r4 |
	d\f r r |
	d, r r |
	g g g |
	fis d r |
	R2. |
	r4 r g\p |
	fis( cis d) |
	a' a,
}
\repeat volta 2 {
	a'8(\f gis) |
	a-. b-. cis-. d-. e-. fis-. |
	g( e) g( e) cis-. a-. |
	d-. a-. d-. a-. fis-. d-. |
	a'4 a, r |
	e'(\p dis b) |
	e r r |
	d( cis a) |
	d r d'8(\f cis) |
	d( cis d cis) d( e) |
	d( cis) b-. a-. d-. b-. |
	g4 a a, |
	d r r |
	R2.*2 |
	r4 r\fermata r |
	fis r r |
	g r r |
	a a a |
	d, r a(\p |
	d) r a'( |
	d,) r a'( |
	d) r
}
}

fagottoI = <<\global \bassA \relative c' { \clef "bass"
	\partial 4
	\repeat volta 2 {s4 | s2.*7 | s2}
	\repeat volta 2 {s4 | s2.*21 | s2}

\key g \major 
\repeat volta 2 {
	d,4\p |
	d'( c b) |
	d( c b) |
	b( d c) |
	c2( b4) |
	a( e' d) |
	c( a d) |
	c2.( |
	b4) r
}
\repeat volta 2 {
	r4 |
	R2.*3 |
	r4 r d\p |
	d2. |
	g4( b, cis) |
	d r r |
	R2. |
	d,,2. ~|
	d |
	d'' ~|
	d |
	e4( c b) |
	a( fis b) |
	a2.( |
	g4) r
}

\key d \major
\repeat volta 2 {
	r |
	d'2.\p |
	e\fp |
	d |
	e\fp |
	d4\p r r |
	d r r |
	r cis( d) |
	a a,
}
\repeat volta 2 {
	a' |
	dis( e fis) |
	e r r |
	cis( d! e) |
	d r d |
	d2. ~|
	d |
	a |
	a4 r r |
	d2. |
	e\fp |
	d |
	e\fp |
	d4\p r r |
	a( c e) |
	d a a |
	a r
}
}>>

fagottoII = <<\global \bassA \relative c { \clef "bass"
	\partial 4
	\repeat volta 2 {s4 | s2.*7 | s2}
	\repeat volta 2 {s4 | s2.*21 | s2}

\key g \major
\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\key d \major
\repeat volta 2 {
	r4 |
	fis2.\p |
	e\fp |
	fis |
	e\fp |
	fis4\p r r |
	fis r r |
	r cis'( d) |
	a a,
}
\repeat volta 2 {
	a' |
	fis( g a) |
	g r r |
	e( fis g) |
	fis r d |
	g2( fis4) |
	b2( a4) |
	cis,2( d4) |
	a r r |
	fis'2. |
	g\fp |
	fis |
	g\fp |
	fis4\p r r |
	a,( cis e) |
	d fis fis |
	fis r
}
}>>

cornodI = <<\global \relative c'' {
	\partial 4
\repeat volta 2 {
	r4 |
	e2.\f |
	c |
	c4 c c |
	c r r |
	g2.\p ~|
	g ~|
	g ~|
	g4 r
}
\repeat volta 2 {
	g\f |
	d'2. |
	d |
	e4 c8 g' e c |
	g4 r r |
	R2.*3 |
	r4 r c\f |
	c e fis |
	g f! e |
	f e d |
	c2.\p ~|
	c ~|
	c ~|
	c4 r\fermata r |
	c r r |
	c r r |
	e2 d4 |
	c r g\p |
	c e d |
	c e d |
	c r
}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\repeat volta 2 {
	g4\p |
	e' e e |
	f2\fp d4 |
	e e e |
	f2\fp d4 |
	c(\p e g) |
	c,( e g) |
	f2 e4\trill |
	d r
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r d\p |
	f( e d) |
	e8 d e f g4 |
	c,2. ~|
	c |
	d2 e4 |
	d r g, |
	e' e e |
	f2\fp d4 |
	e e e |
	f2\fp d4 |
	c(\p e g) |
	g2. |
	e4 e e |
	e r
}
}>>

cornodII = <<\global \relative c'' {
	\partial 4
\repeat volta 2 {
	r4 |
	c2.\f |
	c, |
	c4 c c |
	c r r |
	g2.\p ~|
	g ~|
	g ~|
	g4 r
}
\repeat volta 2 {
	g'\f |
	g2. |
	g |
	c4 c8 g e c |
	g4 r r |
	R2.*3 |
	r4 r c\f |
	c c' d |
	d2 c4 |
	d c g |
	c,2.\p ~|
	c ~|
	c ~|
	c4 r\fermata r |
	c\f r r |
	c r r |
	c'2 g4 |
	e r g\p |
	e c' g |
	e c' g |
	e r
}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\repeat volta 2 {
	g4\p |
	c c c |
	d2\fp g,4 |
	c c c |
	d2\fp g,4 |
	c,(\p e g) |
	c,( e g) |
	d'2 c4 |
	g r
}
\repeat volta 2 {
	r4 |
	R2. |
	r4 r d'\p |
	d( c g) |
	c8 g c d e4 |
	c,2. ~|
	c |
	g'2 c4 |
	g r g |
	c c c |
	d2\fp g,4 |
	c c c |
	d2\fp g,4 |
	c,(\p e g) |
	g2. |
	c4 c c |
	c r
}
}>>

trombeI = <<\global \relative c'' {
	\partial 4
\repeat volta 2 {
	r4 |
	c\f r r |
	c r r |
	c c c |
	c r r |
	R2.*3 |
	r4 r
}
\repeat volta 2 {
	g8.\f g16 |
	g4 r g8. g16 |
	g4 r g8. g16 |
	c4 c8 g e c |
	g'4 r r |
	R2.*3 |
	r4 r c\f |
	c r r |
	d2 e4 |
	r e d |
	c r r |
	R2.*2 |
	r4 r\fermata r |
	c\f r r |
	c r r |
	g' e d |
	c r r |
	R2.*2 |
	r4 r
}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}
}>>

trombeII = <<\global \relative c' {
	\partial 4
\repeat volta 2 {
	r4 |
	e\f r r |
	e r r |
	c c c |
	c r r |
	R2.*3 |
	r4 r
}
\repeat volta 2 {
	g'8.\f g16 |
	g4 r g8. g16 |
	g4 r g8. g16 |
	e4 e8 g e c |
	g4 r r |
	R2.*3 |
	r4 r c\f |
	c r r |
	g'2 c4 |
	r c g |
	e r r |
	R2.*2 |
	r4 r\fermata r |
	c\f r r |
	c r r |
	g' c g |
	e r r |
	R2.*2 |
	r4 r
}

\repeat volta 2 {
	r4 |
	R2.*7 |
	r2
}
\repeat volta 2 {
	r4 |
	R2.*15 |
	r2
}

\repeat volta 2 {
	r4 |
	c\p r c8 c16 c |
	c4 c c |
	c r c8 c16 c |
	c4 c c |
	c r r |
	c r e8 c |
	g'4 g g |
	g r
}
\repeat volta 2 {
	r4
	R2.*7 |
	r4 g, g |
	c r c8 c16 c |
	c4 c c |
	c r c8 c16 c |
	c4 c c |
	c c8 c16 c c4 |
	r g'8 g16 g g4 |
	c g e |
	c r
}
}>>

violinI = <<\global \relative c''' { \key d \major
	\partial 4
\repeat volta 2 {
	d8(\f cis) |
	d( a) fis( d) d'( cis) |
	d( a) fis( d) d'( cis) |
	d( cis) d( cis) d( cis) |
	d( a) fis( d) a'(\p gis) |
	a( gis a gis) a( b) |
	a( g fis e) d( cis) |
	d-. a-. g'-. a,-. fis'-. a,-. |
	e'4 r
}
\repeat volta 2 {
	a,8(\f gis) |
	a-. b-. cis-. d-. e-. fis-. |
	g( e) g( e) cis-. a-. |
	d-. a-. d-. a-. fis-. d-. |
	<<a'4 \\ a>> r a'8(\p gis) |
	a( gis a gis) a( b) |
	a( g!) fis-. e-. g( fis) |
	g( fis g fis) g( a) |
	g( fis) e-. d-. d'(\f cis) |
	d4 fis, gis8.\trill fis32 gis |
	a4 g fis |
	e8( g) d( fis) cis( e) |
	d(\p fis) e( g) fis( a) |
	g( b) fis( a) e( gis) |
	fis( a) r4 e8( gis) |
	fis( a) r4\fermata d8(\f cis) |
	d( a) fis( d) d'( cis) |
	d( a) g( d) b'( g) |
	a4 d, cis |
	d8-.\p a-. fis'-. a,-. e'-. a,-. |
	d-. a-. fis'-. a,-. e'-. a,-. |
	d-. a-. fis'-. a,-. e'-. a,-. |
	d4 r
}

\key g \major
\repeat volta 2 {
	d,\p |
	d'( c b) |
	d( c b) |
	b( d c) |
	c2( b4) |
	a( e' d) |
	c( a d) |
	c2.( |
	b4) r
}
\repeat volta 2 {
	d,\f |
	cis8( d) e( d) g( fis) |
	cis( d) e( d) b'( a) |
	cis,( d) e( d) d'( c) |
	c2 c4\p |
	b r b |
	b r cis |
	d r r |
	r r d, |
	d'( c! b) |
	d( c b) |
	b( d c)
	c2( b4) |
	a( e' d) |
	c( a d) |
	c2.( |
	b4) r
}

\key d \major
\repeat volta 2 {
	r4 |
	<fis a>\p^"divisi" q q |
	<g a>2.\fp |
	<fis a>4 q q |
	<g a>2.\fp |
	fis8(\p a) d-. d-. d-. d-. |
	fis,( a) d-. d-. d-. d-. |
	\repeat unfold 3 {\appoggiatura gis16 a8 r} |
	\appoggiatura gis16 a4 r 
}
\repeat volta 2 {
	r |
	\repeat unfold 3 {\appoggiatura ais16 b8 r} |
	\appoggiatura ais16 b4 r r |
	\repeat unfold 3 {\appoggiatura gis16 a8 r} |
	\appoggiatura gis16 a4 r r |
	d,8(\trill cis) d-. d-. d4 |
	d8(\trill cis) d-. d-. d4 |
	\repeat unfold 3 {\appoggiatura gis,16 a8 r} |
	\appoggiatura gis16 a4 r r |
	<fis a>\p^"divisi" q q |
	<g a>2.\fp |
	<fis a>4 q q |
	<g a>2.\fp |
	fis8(\p a) d-. d-. d-. d-. |
	e( g) cis-. cis-. cis-. cis-. |
	\repeat unfold 3 {\appoggiatura cis16 d8 r} |
	\appoggiatura cis16 d4 r 
}
}>>

violinII = <<\global \relative c' { \key d \major
	\partial 4
\repeat volta 2 {
	r4 |
	<d a' fis'>\f r r |
	q r r |
	<d b' g'> q <d b' b'> |
	<d a' a'> r a'8(\p gis) |
	a( gis a gis) a( b) |
	a( g fis e) d( cis) |
	d4( e d) |
	cis r
}
\repeat volta 2 {
	a'8(\f gis) |
	a-. b-. cis-. d-. e-. fis-. |
	g( e) g( e) cis-. a-. |
	d-. a-. d-. a-. fis-. d-. |
	<<a'4 \\ a>> r a8(\p gis) |
	a( gis a gis) a( b) |
	a( g) fis-. e-. g( fis) |
	g( fis g fis) g( a) |
	g( fis e-. d-.) d'(\f cis) |
	d4 a b |
	e,8( e') d-. cis-. d-. d,-. |
	g( b) fis( a) e( g) |
	d(\p fis) e( g) fis( a) |
	g( b) fis( a) e( gis) |
	fis( a) r4 e8( gis) |
	fis( a) r4 d8(\f cis) |
	d( a) fis( d) d'( cis) |
	d( b) g( d) b''( g) |
	a4 fis, e |
	d r cis(\p |
	d) r g( |
	fis) r cis'( |
	d) r
}

\key g \major
\repeat volta 2 {
	d,\p |
	b'( a g) |
	b( a g) |
	gis( b a) |
	a2( g4) |
	fis( c' b) |
	a( fis) fis-. |
	a2.( |
	g4) r
}
\repeat volta 2 {
	d\f |
	cis8( d) e( d) g( fis) |
	cis( d) e( d) b'( a) |
	cis,( d) e( d) d'( c) |
	c2 a4\p |
	g r g |
	g r g |
	fis r r |
	r r d |
	b'8-. d,-. a'-. d,-. g-. d-. |
	b'-. d,-. a'-. d,-. g-. d-. |
	gis-. d-. b'-. d,-. a'-. d,-. |
	a'-. fis-. d-. a'-. g!-. d-. |
	e-. a-. cis-. e,-. b'-. g-. |
	a-. g-. fis-. e-. d-. d-. |
	d( e fis g a fis) |
	g4 r
}

\key d \major
\repeat volta 2 {
	r |
	d(-.\p\upbow d-. d-.) |
	e2.\fp |
	d4(-. d-. d)-. |
	e2.\fp |
	d8(\p fis) d-. d-. d-. d-. |
	d( fis) d-. d-. d-. d-. |
	\repeat unfold 3 {\appoggiatura gis16 a8 r} |
	\appoggiatura gis16 a4 r 
}
\repeat volta 2 {
	r |
	\repeat unfold 3 {\appoggiatura ais16 b8 r} |
	\appoggiatura ais16 b4 r r |
	\repeat unfold 3 {\appoggiatura gis16 a8 r} |
	\appoggiatura gis16 a4 r r |
	d,8(\trill cis) d-. d-. d4 |
	d8(\trill cis) d-. d-. d4 |
	\repeat unfold 3 {\appoggiatura gis,16 a8 r} |
	\appoggiatura gis16 a4 r r |
	d(-.\p\upbow d-. d-.) |
	e2.\fp |
	d4(-. d-. d)-. |
	e2.\fp |
	d8(\p fis) d-. d-. d-. d-. |
	e( g) cis-. cis-. cis-. cis-. |
	\repeat unfold 3 {\appoggiatura cis16 d8 r} |
	\appoggiatura cis16 d4 r 
}
}>>

viola = <<\global \relative c' { \key d \major \clef "alto"
	\partial 4
\repeat volta 2 {
	r4 |
	d\f r r |
	d r r |
	g g g |
	fis d r |
	R2. |
	r4 r e,\p |
	a a a |
	a r
}
\repeat volta 2 {
	a8(\f gis) |
	a-. b-. cis-. d-. e-. fis-. |
	g( e) g( e) cis'-. a-. |
	d-. a-. d-. a-. fis-. d-. |
	a'4 a, r |
	c(\p b dis) |
	e r r |
	bes( a cis!) |
	d r d8(\f cis) |
	d( cis d cis) d( e) |
	d( cis) b-. a-. d-. fis-. |
	b4 a a |
	a r r |
	R2.*2 |
	r4 r\fermata r |
	<a d,> r r |
	<b d,> r r |
	fis a a |
	a r g,(\p |
	fis) r cis'( |
	d) r g( |
	fis) r
}

\key g \major
\repeat volta 2 {
	d,\p |
	d( fis g) |
	d( fis g) |
	d'2. ~|
	d4 d d |
	d( fis, g) |
	a( cis) a' |
	d,2. ~|
	d4 r
}
\repeat volta 2 {
	d\f |
	cis8( d) e( d) g( fis) |
	cis( d) e( d) b'( a) |
	cis,( d) e( d) d'( c) |
	c2 d,4\p |
	d r d |
	e r g, |
	a r r |
	fis'8-. g-. fis-. e-. d-. c-. |
	b4( fis g) |
	d( fis g) |
	d'( gis, a) |
	a( d) d |
	c r r |
	d r r |
	d2. ~|
	d4 r
}

\key d \major
\repeat volta 2 {
	r |
	a\p a a |
	cis2.\fp |
	d4 a a |
	cis2.\fp |
	d4\p r r |
	d r r |
	cis cis( d) |
	a r
}
\repeat volta 2 {
	r |
	b r r |
	b r r |
	a r r |
	a r r |
	b2( a4) |
	g2( fis4) |
	cis'2( d4) |
	a r r |
	a a a |
	cis2.\fp |
	d4 a a |
	cis2.\fp |
	d4\p r r |
	a r r |
	a a a |
	a r
}
}>>

cello = <<\global \bassA \relative c' { \clef "bass"
	\partial 4
	\repeat volta 2 {s4 | s2.*7 | s2}
	\repeat volta 2 {s4 | s2.*21 | s2}

\key g \major
\repeat volta 2 {
	r4 |
	g,\p r r |
	g r r |
	d r r |
	d r r |
	d r r |
	r r d-. |
	fis( g) g-. |
	g g,
}
\repeat volta 2 {
	d'\f |
	cis8( d) e( d) g( fis) |
	cis( d) e( d) b'( a) |
	cis,( d) e( d) d'( c) |
	c2 fis,4\p |
	g r g |
	e r e |
	d r r |
	d'8-. e-. d-. c-. b-. a-. |
	g4 r r |
	g, r r |
	d' r r |
	d( fis g) |
	c, r r |
	d r r |
	g, g' g |
	g g,
}

\key d \major
\repeat volta 2 {
	r |
	d'\p d d |
	d2.\fp |
	d4 d d |
	d2.\fp |
	d4\p r r |
	d r r |
	cis cis'( d) |
	a a,
}
\repeat volta 2 {
	r |
	b' r r |
	e, r r |
	a r r |
	d, r r |
	b'2( a4) |
	g2( fis4) |
	cis2( d4) |
	a a' r |
	d, d d |
	d2.\fp |
	d4 d d |
	d2.\fp |
	d4\p r r |
	a' r r |
	d a fis |
	d d'
}
}>>
