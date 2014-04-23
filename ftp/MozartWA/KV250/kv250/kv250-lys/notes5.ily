\version "2.18.0"

semprep = \markup {\italic sempre \dynamic p}

global = {\tempo "Menuetto galante" \time 3/4
          s2.*50 \mark "Trio." s2.*35
          \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
          \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
          \mark "Menuetto da capo."
          \bar "|."}
midiTempo = 120

oboeI = <<\global \relative c'' { \key d \major
\repeat volta 2 {
	d4\f fis8. d16 a'8. fis16 |
	d'4 r d,\p |
	e e8. fis16 g4 |
	fis r fis |
	g g8. a16 b4 |
	a r a16(\f g fis e) |
	cis8( d) cis( d) fis16( e d cis)
	ais8( b) ais( b) d16( cis b a) |
	gis4 gis'8. e16 b'8. gis16 |
	d'4 r r |
	e,2.\p ~|
	e ~|
	e ~|
	e4 cis-.\f cis-. |
	cis4. d16 e fis gis a b |
	cis4( gis) a-. |
	fis( cis) b8.\trill a32 b |
	a4 cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 r r |
	R2.*4 |
	r4 r e8.(\p fis16) |
	g8.( e16) b4( e) |
	d( cis) r |
	R2. |
	r4 r a\p |
	a'4. gis16-. a-. b( a) g-. fis-. |
	e4 g4.\trill\f fis16 e |
	d4 fis8. d16 a'8. fis16 |
	d'4 r r |
	d2.\p ~|
	d ~|
	d ~|
	d4 r d16(\f cis b a) |
	fis8( g) dis( e) g16( fis e dis) |
	bis8( cis) gis( a) e'8. e16 |
	g4 g g |
	g r a\p |
	g4. fis16 g a( g) fis e |
	d4 d'8( cis) b( a) |
	\appoggiatura a8 g4. fis16 g a( g) fis e |
	d4 d-.\f d-. |
	d4. e16 fis g a b cis |
	d4-. a( fis) |
	b8.( g16) fis4 e8.\trill d32 e |
	d4 r r |
	d fis8. d16 a'8. fis16 |
	d'4 r r |
}
\key d \minor
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

oboeII = <<\global \relative c'' { \key d \major
\repeat volta 2 {
	d4\f fis8. d16 a'8. fis16 |
	d'4 r d,\p |
	cis cis8. d16 e4 |
	d r d |
	e e8. fis16 g4 |
	fis r a16(\f g fis e) |
	cis8( d) cis( d) fis16( e d cis) |
	ais8( b) ais( b) d16( cis b a) |
	gis4 gis'8. e16 b'8. gis16 |
	d'4 r r |
	R2.*3 |
	r4 a,-.\f a-. |
	a4. b16 cis d e fis gis |
	a4( d,) e-. |
	a,2-. gis8.\trill fis32 g |
	a4 cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 r r |
	R2.*8 |
	r4 r a\p |
	fis'4. e16-. fis-. g( fis) e-. d-. |
	cis4 g'4.\trill\f fis16 e |
	d4 fis8. d16 a'8. fis16 |
	d'4 r r |
	R2.*3 |
	r4 r d16(\f cis b a) |
	fis8( g) dis( e) g16( fis e dis) |
	bis8( cis) gis( a) cis8. cis16 |
	e4 cis e |
	cis r r |
	R2.*3 |
	r4 fis,-.\f fis-. fis4. g16 a b cis d e |
	fis2 d4 |
	b8.( e16) d4 cis8.\trill b32 cis |
	d4 r r |
	d fis8. d16 a'8. fis16 |
	d'4 r r |
}
\key d \minor
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

fagottoI = <<\global \relative c' { \key d \major \clef "bass"
\repeat volta 2 {
	d4\f a8. d16 fis,8. a16 |
	d,4 d' r |
	d,\p d d |
	d d d |
	d d d |
	d d' r |
	r r fis16( e b cis) |
	ais8( b) ais( b) d16( cis b a) |
	gis4 b8. d16 gis,8. b16 |
	e,4 r r |
	gis8-.\p r e-. r gis-. r |
	a r e r a r |
	gis r e r gis r |
	a4 r r |
	r a-.\f a-. |
	a( b) cis-. |
	d e e, |
	a cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 c,4.\trill b16 a |
	b4 r b'(\p |
	a) r fis( |
	g) r r |
	b2\fp r4 |
	g2\fp r4 |
	g\p g( gis) |
	a r r |
	R2. |
	a4 r r |
	R2. |
	a4-.\f b-. cis-. |
	d a8. d16 fis,8. a16 |
	d,4 d' r |
	fis,8-.\p r d-. r fis-. r |
	g r d r g r |
	fis r d r fis r |
	g4 g, r |
	r r g''16(\f fis e d) |
	bis8( cis) gis( a) g16( fis e d) |
	cis4-. e-. cis-. |
	a a' r |
	cis8-.\p r a-. r cis-. r |
	d r a r d r |
	cis r a r cis r |
	d4 r r |
	r d,-.\f d-. |
	d8 e16 fis g a b cis d4 |
	g, a a, |
	d r r |
	d' a8. d16 fis,8. a16 |
	d,4 d' r |
}
\key d \minor
\repeat volta 2 {
	d,\p r r |
	d r r |
	d8 r a' r a, r |
	d4 r r |
	d8 r a' r a, r |
	d4 r r |
	c'8 r bes r a r |
	g2\fp r4 |
	bes8 r a r g r |
	fis2\fp r4 |
	bes,2(\p c4) |
	d2( a4) |
	bes2( c4) |
	d, fis'\cresc e\! |
}
\repeat volta 2 {
	d r r |
	g r r |
	e r r |
	a r r |
	R2.*2 |
	d,8 r a' r a, r |
	d4 r r |
	g8 r d' r d, r |
	g4 r r |
	g8 r e r d r |
	cis2\fp r4 |
	g'8 r e r d r |
	cis2\fp r4 |
	g2(\p a4) |
	bes2( f4) |
	g2( a4) |
	bes8 r g r a\cresc r |
	bes r g' r a r |
}
\alternative {
	{d,4\f r r |}
	{d4\f r r |}
}
}>>

fagottoII = \fagottoI

cornodI = <<\global \relative c'' {
\repeat volta 2 {
	c4\f c c |
	c r c\p |
	c2. ~|
	c ~|
	c ~|
	c4 r r |
	R2.*2 |
	d4\f d d |
	d r r |
	R2.*3 |
	r4 d\f d |
	d g, g |
	d'2 d4 e d d |
	d g, g8. g16 |
}
\repeat volta 2 {
	c4 c c |
	c r r |
	R2.*5 |
	g2.\p ~|
	g ~|
	g ~|
	g ~|
	g4 f'\f d |
	c c c |
	c r r |
	c2.\p ~|
	c ~|
	c ~|
	c4 r r |
	R2. |
	r4 r d8.\f d16 |
	d4 d d |
	d r r |
	g,2.\p ~|
	g ~|
	g ~|
	g4 g\f g |
	g c c |
	c e g |
	f e d |
	c r r |
	c c8. c16 c8. c16 |
	c4 r r |
}
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

cornodII = <<\global \relative c' {
\repeat volta 2 {
	e4\f e e |
	e r c\p |
	c2. ~|
	c ~|
	c ~|
	c4 r r |
	R2.*2 |
	d'4\f d d |
	d r r |
	R2.*3 |
	r4 g,\f g |
	g g g |
	d'2 g,4 |
	c d d |
	g, g g8. g16 |
}
\repeat volta 2 {
	e4 c c |
	c r r |
	R2.*5 |
	g2.\p ~|
	g ~|
	g ~|
	g ~|
	g4 c'\f g |
	e e e |
	e r r |
	c2.\p ~|
	c ~|
	c ~|
	c4 r r |
	R2. |
	r4 r g'8.\f g16 |
	g4 g g |
	g r r |
	g,2.\p ~|
	g ~|
	g |
	c4 c\f c |
	c c c |
	c c' e |
	d c g |
	e r r |
	e e8. e16 e8. e16 |
	e4 r r |
}
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

trombeI = <<\global \relative c'' {
\repeat volta 2 {
	c4\f c c |
	c r r |
	R2.*6 |
	d4\f d d |
	d r r |
	R2.*4 |
	r4 g,\f g |
	d'2 d4 |
	e d d |
	g, g g8. g16 |
}
\repeat volta 2 {
	c4 c c |
	c r r |
	R2.*9 |
	r4 c\f d |
	c c c |
	c r r |
	R2.*5 |
	r4 r g8.\f g16 |
	g4 g g |
	g r r |
	g2.\p ~|
	g ~|
	g ~|
	g4 r r |
	r c,\f c |
	c r c' |
	d e d |
	c r r |
	c c8. c16 c8. c16 |
	c4 r r |
}
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

trombeII = <<\global \relative c' {
\repeat volta 2 {
	e4\f e e |
	e r r |
	R2.*6 |
	d'4\f d d |
	d r r |
	R2.*4 |
	r4 g,\f g |
	d'2 g,4 |
	c d d |
	g, g g8. g16 |
}
\repeat volta 2 {
	e4 c c |
	c r r |
	R2.*9 |
	r4 c\f g' |
	e e e |
	e r r |
	R2.*5 |
	r4 r g8.\f g16 |
	g4 g g |
	g r r |
	g,2.\p ~|
	g ~|
	g ~|
	g4 r r |
	r c\f c |
	c r c |
	c'2 g4 |
	e r r |
	e e8. e16 e8. e16 |
	e4 r r |
}
\repeat volta 2 {
	R2.*14 |
}
\repeat volta 2 {
	R2.*19 |
}
\alternative {
	{R2. |}
	{R2. |}
}
}>>

violinI = <<\global \relative c'' { \key d \major
\repeat volta 2 {
	<d d,>4\f fis8. d16 a'8. fis16 |
	d'4 r d,,\p |
	e e8. fis16 g4 |
	fis r fis |
	g g8. a16 b4 a r a'16(\f g fis e) |
	cis8( d) cis( d) fis16( e d cis) |
	ais8( b) ais( b) d16( c b a) |
	gis4 g'8. e16 b'8. gis16 |
	d'4 e,-.\p e-. |
	d4. cis16 d e( d) cis b |
	a4 a'8( gis) fis( e) |
	\appoggiatura e16 d4. cis16 d e( d) cis b |
	a4 cis-.\f cis-. |
	cis4. d16 e fis gis a b |
	cis4( gis) a-. |
	\tuplet 3/2 {fis8( gis a)} cis,4 b8.\trill a32 b |
	a4 cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 c,4.\trill b16 a |
	b4 g''\p g ~|
	g( fis) c ~|
	c( b) b'8.( cis16) |
	d8.(\fp b16) g4 g8.( a16) |
	b8.(\fp g16) e4 e8.(\p fis16) |
	g8.( e16) b4( e) |
	d( cis) a |
	a2 b16( a) g fis |
	e8 r fis r g r |
	a4. gis16 a b( a) g fis |
	e4 g'4.\f\trill fis16 e |
	<d d,>4 fis8. d16 a'8. fis16 |
	d'4 r d,\p |
	c4. b16 c d( c) b a |
	g4 g'8( fis) e( d) |
	c4. b16 c d( c) b a |
	g4 r d''16(\f cis b a) |
	fis8( g) dis( e) g16( fis e dis) |
	bis8( cis) gis( a) g16( fis e d) |
	cis4 <a e' cis'> <a' e'> |
	<a g'> r a\p |
	g4. fis16 g a( g) fis e |
	d4 d'8( cis) b( a) |
	\appoggiatura a16 g4. fis16 g a( g) fis e |
	d4 d'-.\f d-. |
	d4. e16 fis g a b cis |
	d4-. a( fis) |
	\tuplet 3/2 {e8( g b)} d,4 cis8.(\trill b32 cis) |
	d8. d,16-. fis8. d16-. a'8. fis16 |
	d'8. d16 fis8. d16 a'8. fis16 |
	<d, d' d'>4 r r |
}
\key d \minor
\repeat volta 2 {
	<d d'>4-\semprep r f'16(\trill e f g) |
	a4 r f16(\trill e f g) |
	a8 r f r e r |
	d4 r f16(\trill e f g) |
	a8 r f r e r |
	d4 r f16(\trill e f g) |
	a8-. r bes-. r c-. r |
	d4(\fp bes) e,16(\trill d e f) |
	g8-. r a-. r bes-. r |
	c4(\fp a) f\p |
	g( d e) |
	f2. |
	g4( d e) |
	f r8.\cresc a16 cis,4\! |
}
\repeat volta 2 {
	es4(\p d) r |
	es( d) r |
	f( e) r |
	f( e) r |
	\appoggiatura gis16 a4 r r |
	\appoggiatura gis16 a4 r f16(\trill e f g) |
	a8 r f r e r |
	d4 r bes'16(\trill a bes c) |
	d8 r bes8 r a r |
	g4 r cis,16(\trill b cis d) |
	e8 r g r a r |
	bes4(\fp g) cis,16(\trill b cis d) |
	e8 r g r a r |
	bes4(\fp g) f\p |
	es( bes cis) |
	d2. |
	es4( bes cis) |
	d8 r e r\cresc cis r |
	d r e r\cresc cis r |
}
\alternative {
	{d(\f cis) d( cis) d( es) |}
	{d4\f g4.\trill fis16 e |}
}
}>>

violinII = <<\global \relative c' { \key d \major
	\tupletSpan 4
\repeat volta 2 {
	<d d'>4\f <d a' fis'> q |
	q r d\p\upbow |
	cis cis8.(-- d16)-. e4 |
	d r d\upbow |
	e e8.(-- fis16)-. g4 |
	fis r a'16(\f\upbow g fis e) |
	cis8( d) cis( d) fis16( e d cis) |
	ais8( b) ais( b) d16( c b a) |
	gis4 <e b' gis'> q |
	q r r |
	b8-.\p e-. d-. e-. b-. e-. |
	cis-. e-. a,-. e'-. cis-. e-. |
	b-. e-. d-. e-. b-. e-. |
	cis4 a'-.\f\downbow a-. |
	a4. b16 cis d e fis gis |
	a8.( cis,16) d8.( b16) e8.( a,16) |
	\tuplet 3/2 {d8( e fis)} a,4 gis8.(\trill fis32 gis) |
	a4 cis4.(\trill\upbow b16 a) |
}
\repeat volta 2 {
	d4 c,4.(\trill b16 a) |
	b4 r d'(\p |
	c) r a ~|
	a( g) b8.( cis16) |
	d8.(\fp b16) g4 g8.( a16) |
	b8.(\fp g16) e4 r |
	b8.(\p e16) g4( b) |
	fis( e) fis |
	fis2 g16( fis e d) |
	cis8-. r d(-. r e)-. r |
	fis4. e16-. fis-. g( fis) e-. d-. |
	cis4 <d d'>\f <a' e'> |
	<d, d'> <d a' fis'> q |
	q r r |
	a8-.\p d-. c-. d-. a-. d-. |
	b-. d-. g,-. d'-. b-. d-. |
	a-. d-. c-. d-. a-. d-. |
	b4 r d''16(\f\upbow cis b a) |
	fis8( g) dis( e) g16( fis e dis) |
	bis8( cis) gis( a) g16( fis e d) |
	cis4 <a e' cis'> q |
	q r r |
	e'8-.\p a,-. cis-. a-. g'-. a,-. |
	fis' a, d a fis' a, |
	e' a, cis a g' a, |
	fis'4 fis-.\f\downbow fis-. |
	fis4. g16 a b cis d e |
	fis4-. fis( d) |
	b8.( g16) fis4 e8.(\trill d32 e) |
	d8.(-- d16)-. fis8.(-- d16)-. a'8.(-- fis16)-. |
	d'4 <d, a' fis'> q |
	q r r |
}
\key d \minor
\repeat volta 2 {
	\tuplet 3/2 {d8-.\p f-. a-. d,-. f-. a-. d,-. f-. a-. |
	d, f a d, f a d, f a |
	d, f a d, f a cis, e a |
	d, f a d, f a d, f a |
	d, f a d, f a cis, e a |
	d, f a d, f a d, f a |
	d, fis a d, g b d, a' c |
	d,\fp b' d d, g b c, e g |
	c, e g c, f a c, g' b |
	c,\fp a' c c, f a c,\p f a |
	b, d g b, d g b, e g |
	a, d f a, d f c f a |
	b, d g b, d g b, e g |
	a, c f c f a e g cis} |
}
\repeat volta 2 {
	\tuplet 3/2 {d,\p a' c! d, a' c d, a' c |
	d, g bes d, g bes d, g bes |
	e, b' d e, b' d e, b' d |
	e, a cis e, a cis e, a cis |
	g( a g) e( a e) f( a f) |
	g( a g) e( a e) f( a f) |
	d-. f-. a-. d,-. f-. a-. cis,-. e-. a-. |
	d, f a d, a' c d, g bes |
	d, g bes d, g bes d, fis a |
	d, g bes bes, d g g, bes e |
	bes e g cis, g' bes d, f a |
	g\fp bes e g, bes e g,, bes e |
	bes e g cis, g' bes d, f a |
	g\fp bes e g, bes e f,\p a d |
	g,, g' bes bes, es g a, e' g |
	bes, d f bes, d f d f a |
	g, g' bes bes, es g a, e' g |
	bes, d f bes, e g a,\cresc e' g |
	bes, d f bes, e g a, e' g} |
}
\alternative {
	{<f a,>4\f r r |}
	{q\f g'4.(\trill fis16 e) |}
}
}>>

viola = <<\global \relative c' { \key d \major \clef "alto"
\repeat volta 2 {
	d4\f d d |
	d d, d\p |
	d d d |
	d d d |
	d d d |
	d d' r |
	r r fis16(\f e d cis) |
	ais8( b) ais( b) d16( cis b a) |
	gis4 e' e |
	e r r |
	gis8-.\p r e-. r gis-. r |
	a r e r a r |
	gis r e r gis r |
	a4 r r |
	r a-.\f a-. |
	a( b) cis-. |
	d e e, |
	e cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 c4.\trill b16 a |
	b4 r d\p ~|
	d r d ~|
	d r r |
	d2\fp r4 |
	b2\fp r4 |
	g4(\p e') gis, |
	a2.:8 |
	a: |
	a: |
	a: |
	a4-.\f b-. cis-. |
	d d d |
	d d' r |
	fis,8-.\p r d-. r fis-. r |
	g r d r g r |
	fis r d r fis r |
	g4 g, r |
	r r g'16(\f fis e d) |
	bis8( cis) gis( a) g16( fis e d) |
	cis4-. g''-. e-. |
	<cis e> r r |
	cis8-.\p r a-. r cis-. r |
	d r a r d r |
	cis r a r cis r |
	d4 r r |
	r fis,4-.\f fis-. |
	fis8 g16 a b cis d e fis4 |
	g a a, |
	a r r |
	d d d |
	d d' r |
}
\key d \minor
\repeat volta 2 {
	<<{a( f)} \\ {f(\p d)}>> r |
	<<{a'( f)} \\ {f( d)}>> r |
	<<{
	a'2 cis4 |
	d( a)
	} \\ {
	f2 g4 |
	f2
	}>> r4 |
	<<{
	a2 cis4 |
	d( a)
	} \\ {
	f2 g4 |
	f2
	}>> r4 |
	<<{
	d'2 fis,4 |
	g( bes)
	} \\ {
	d,2. |
	d4(\fp g,)
	}>> r4 |
	<<{
	c'2 e,4 |
	f( a)
	} \\ {
	c,2. |
	c4(\fp f,)
	}>> a\p |
	bes2( c4) |
	d( f) a, |
	bes2( c4) |
	c\cresc a' <<\new Voice {\voiceOne a} {\voiceTwo g\!}>>\oneVoice |
}
\repeat volta 2 {
	<<{
	a2 fis4 |
	g2 b4 |
	b2 gis4 |
	a2 cis4 |
	} \\ {
	fis,2\p a,4 |
	b2 g'4 |
	gis2 b,4 |
	cis2 a'4 |
	}>>
	e( cis d) |
	e( cis d) |
	<<{
	a'2 cis4 |
	d( a) bes-. |
	d,2 fis4 |
	g2. |
	bes2( f4) |
	g( bes)
	} \\ {
	f2 g4 |
	f( fis) g-. |
	bes,2 c4 |
	bes2. |
	cis2( d4) |
	e(\fp g)
	}>> r |
	<<{
	bes2( f4) |
	g( bes)
	} \\ {
	cis,2( d4) |
	e(\fp g)
	}>> d\p |
	g,2( a4) |
	bes( d) f,-. |
	g2( a4) |
	bes8 r <<g' \\ e>> r <<\new Voice {\voiceOne e} {\voiceTwo cis\cresc}>>\oneVoice r |
	<<d \\ d>> r <<g \\ e>> r <<e \\ cis>> r |
}
\alternative {
	{d4\f r r |}
	{d\f r r |}
}
}>>

cello = <<\global \relative c' { \key d \major \clef "bass"
\repeat volta 2 {
	d4\f a8. d16 fis,8. a16 |
	d,4 d' r |
	d,\p d d |
	d d d |
	d d d |
	d d' r |
	r r fis16(\f e d cis) |
	ais8( b) ais( b) d16( cis b a) |
	gis4 b8. d16 gis,8. b16 |
	e,4 r r |
	gis8-.\p r e-. r gis-. r |
	a r e r a r |
	gis r e r gis r |
	a4 r r |
	r a-.\f a-. |
	a( b) cis-. |
	d e e, |
	a cis4.\trill b16 a |
}
\repeat volta 2 {
	d4 c,4.\trill b16 a |
	b4 r b'(\p |
	a) r fis( |
	g) r r |
	b2\fp r4 |
	g2\fp r4 |
	g\p g( gis) |
	a r r |
	R2. |
	a4 r r |
	R2. |
	a4-.\f b-. cis-. |
	d a8. d16 fis,8. a16 |
	d,4 d' r |
	fis,8-.\p r d-. r fis-. r |
	g r d r g r |
	fis r d r fis r |
	g4 g, r |
	r r g''16(\f fis e d) |
	bis8( cis) gis( a) g16( fis e d) |
	cis4-. e-. cis-. |
	a a' r |
	cis8-.\p r a-. r cis-. r |
	d r a r d r |
	cis r a r cis r |
	d4 r r |
	r d,-.\f d-. |
	d8 e16 fis g a b cis d4 |
	g, a a, |
	d r r |
	d' a8. d16 fis,8. a16 |
	d,4 d' r |
}
\key d \minor
\repeat volta 2 {
	d,4\p r r |
	d r r |
	d8 r a' r a, r |
	d4 r r |
	d8 r a' r a, r |
	d4 r r |
	cis'8 r bes r a r |
	g2\fp r4 |
	bes8 r a r g r |
	f2\fp r4 |
	bes,2(\p c4) |
	d2( a4) |
	bes2( c4) |
	f,\cresc f' e\! |
}
\repeat volta 2 {
	d\p r r |
	g r r |
	e r r |
	a r r |
	R2.*2 |
	d,8 r a' r a, r |
	d4 r r |
	g8 r d' r d, r |
	g4 r r |
	g8 r e r d r |
	cis2\fp r4 |
	g'8 r e r d r |
	cis2\fp r4 |
	g2(\p a4) |
	bes2( f4) |
	g2( a4) |
	bes8 r g r a\cresc r |
	bes r g' r a r |
}
\alternative {
	{d,4\f r r |}
	{d\f r r |}
}
}>>
