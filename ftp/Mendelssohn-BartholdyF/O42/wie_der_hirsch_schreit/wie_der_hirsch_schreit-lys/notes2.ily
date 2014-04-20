\version "2.18.0"

pPiece = "No. 2. Arie."

Markings = {\time 2/4 \tempo "Adagio" s2*68 \bar "||"}
incmidi = "midi2.ily"

oboesolo = \relative c'' {\key f \major
	r4 a8(\p d |
	f d) cis( d16 e) |
	a,4. a8 |
	gis8 gis( b d) |
	d4( cis8) e |
	a8.(\sf fis16) d8 d |
	d4( cis8) e |
	a8.(\sf fis16) d8 d |
	d2 ~|
	d16\< f bes a g\> f e d\! |
%11
	cis( d g f e d c bes) |
	a8( f'4) e16( d) |
	d4 r |
	R2*3 |
	r4 r8 e |
	a8.(\sf fis16) d8 d |
	d4 r8 d |
	bes'8.( g16) e8 e |
%21
	e4 r |
	r8 bes'(\< a\> gis)\! |
	g4 r |
	r r8 c, |
	b b( d f) |
	f( e) r4 |
	r b\espressivo ~
	b8( c) r4 |
%29
	R2*11 |
	r4 c8(\p f\< |
%41
	a\> f)\! e( f16 g) |
	c,4 r |
	R2 |
	r8 bes( d f |
	bes\cresc g) fis( g16 a) |
	d,4\! r |
	R2*3 |
	r4 a8\< d( |
%51
	f\sf d) cis( d16 e) |
	a,4. a8 |
	gis gis( b d)\cresc |
	d( cis) a'4\f ~ |
	a2 ~|
	a8.( fis16) d8 d |
	d16( f bes a g f e d) |
	cis(\dim d) d4.\! ~|
	d8 r r4\fermata |
	r r8 d |
%61
	a'8.(\cresc fis16)\! d8 d |
	d4( cis8) e |
	a8.( fis16) d8 d |
	d4( cis8) e |
	d2\dim ~|
	d4\! r8 es(\espressivo |
	d2) ~|
	d2\p\laissezVibrer |
}

violinI = \relative c' {\key f \major
	r16 d(\p d d d d d d) |
	d d d d cis cis cis cis |
	r d d d d d d d |
	e2:16 |
	r16 e e e a a a a |
	a2:16 |
	r16 g g g a a b b |
	r a a a a\cresc a a\! a |
	g g f f e e e e |
	f2\pp ~|
%11
	f8 a( g e) |
	f r a4 ~|
	a16\pp a a a a a a a |
	a a a a bes bes bes bes |
	r a a a a a a a |
	e2:16 |
	e16 e e e r a a a |
	r a a a a a a a |
	r g g g r g g g |
	g g d' d c c bes bes |
%21
	a a a a bes bes g g |
	f r d''8(\< d\> a)\! |
	bes4 r8 g, |
	r16 f f f e\< e g c |
	as2\sf |
	as8(\p g) r16 e\< g c |
	as2\sf |
	bes8( g) r8 g\pp |
	c16 c( bes a) a8 a |
	a( g16) r g8(\< a |
%31
	bes c)\! d(\sf\> c16 bes)\! |
	bes8 a r g\p |
	c16 c( bes a) a8 a |
	a( g) r16 g r a |
	r bes r c r d r bes\cresc |
	r\! bes r d r c r c |
	c,\p c c c e e e e |
	f8 d'( c\dim bes)\! |
	a r e4 |
	f2:16\p |
%41
	f16 f f f e e e e |
	r c(-. f-. a)-. c8 c |
	c4.\sf\> r8\! |
	r16 d,\pp d d d d d d |
	d\cresc d d d d d d d |
	d d g b d8 d |
	d4.\sf\> r8\! |
	r8 e,-.\p a-. r |
	r a-. c-. r |
	r bes-. a-. gis-. |
%51
	r16 a a a a a a a |
	r d, d d f f f f |
	e2:16 |
	r16 e e\cresc e d\! d d d |
	d d d d cis cis cis cis |
	d\< d d d e e f f\! |
	f2\p ~|
	f8 a( g f) |
	f r cis4\fermata |
	d2:16 |
%61
	r16 d d d d d d d |
	r d g g g g e e |
	d2:16\cresc |
	r16\! d g g g g e e |
	r a a a r g g g |
	r g\dim fis fis g g g g |
	d d c c b b bes bes |
	a8\p r a r |
}

violinII = \relative c' {\key f \major
	r16 a\p a a a a a a |
	a2:16 |
	r16 a a a d d d d |
	d d d d d d b b |
	r a a a e' e e e |
	d2:16 |
	r16 d d d e e e e |
	r d d d d\cresc d d\! d |
	d2:16 |
	d2\pp ~|
%11
	d ~|
	d8 r g4( |
	f16) f\pp f f f f f f |
	f f f f g g g g |
	r f f f f f f f |
	d d d d d d b b |
	r a a a r e' e e |
	r d d d d d d d |
	r d d d r d d d |
	e e f f g g g g |
%21
	g g f f g g e e |
	d d d\< d es\> es d\! d |
	d d e e f f d d |
	r c c c c\< c e g |
	f2\sf ~|
	f8 c16\p c c\< c e g |
	f2\sf |
	f8( g) r8 e\pp |
	a16 a( g f) f8 f |
	f4 e8(\< f |
%31
	g a\!) bes(\sf\> a16 g)\! |
	g8 f r e\p |
	a16 a( g fis) fis8 fis |
	fis( g) r16 d r f |
	r g r a r bes r g\cresc |
	r\! g r bes r bes r bes |
	a\p a, a a bes bes bes bes |
	c8 bes'( g\dim f)\! |
	f r c4 ~|
	c2:16\p |
%41
	c2:16 |
	r16 a(-. c-. f)-. a8 a |
	a4.\sf\> r8\! |
	r16 bes, bes bes bes bes bes bes |
	bes\cresc bes bes bes c c c c |
	d b d g b8 b |
	b4.\sf\> r8\! |
	r e,-.\p e-. r |
	r a-. a-. r |
	r g-. f-. f-. |
%51
	r16 f f f g g e e |
	r d d d d d d d |
	d d d d d d b b |
	r a a\cresc a a\! a a a |
	a2:16 |
	a16\< a c c bes bes d d\! |
	d2\p ~|
	d2 ~|
	d8 r a4\fermata |
	a16 a a a a a bes bes |
%61
	r c c c c c c c |
	r bes d d e e cis cis |
	a2:16\cresc |
	r16\! bes d d e e cis cis |
	r d d d r d d d |
	r d\dim d d d8 r |
	r16 d d d d d d d |
	d8\p r d r |
}

viola = \relative c {\key f \major \clef alto
	r16 f(\p f f f f f f) |
	f f f f g g g g |
	r a a a a a a a |
	b b b b gis gis gis gis |
	a4( cis\< |
	c2)\> |
	bes8\! r e( cis) |
	cis2(\< |
	bes8)\! r b4( |
	a)\pp r |
%11
	R2 |
	r4 cis |
	d2 ~|
	d4( e) |
	f( d) |
	b( gis) |
	a8 r cis4( |
	c2) |
	b4 bes ~|
	bes8 bes( e d |
%21
	cis4) r |
	r16 d d\< d es\> es d\! d |
	d d bes bes c c bes bes |
	a8( as) g16(\< c) c <c e> |
	<c d>2\sf |
	r16 c\p c c c\< c c c |
	<c d>2\sf |
	r16 c\p c c c c c c |
	c c c c cis cis cis cis |
	d d d d d8(\< c |
%31
	bes a)\! g\sf\> c ~|
	c16\! c c c c c c\p c |
	<c es> <c es> <c es> <c es> d d d d |
	d d d d d8 c |
	bes( a g bes)\cresc |
	e(\! f g e) |
	c2\p ~|
	c8 f( e\dim f)\! |
	c r bes4 |
	a2:16\p |
%41
	a16 a a a bes bes bes bes |
	a4 r |
	fis'4.\sf\> r8\! |
	R2*3 |
	gis4.\sf\> r8\!
	r cis,-.\p cis-. r |
	r d-. es-. r |
	r d-. d-. d-. |
%51
	r16 d d d e e cis cis |
	r a a a a a a a |
	b4( gis) |
	g(\cresc f)\! ~
	f16 f f f g g g g |
	a\< a a a d d b b\! |
	a4\p r |
	R2 |
	r4 g\fermata |
	f16 f f f f f g g |
%61
	r a a a a a a a |
	bes8 r r a |
	c2(\cresc |
	bes4)\! r8 a |
	d( c b bes) |
	a4\dim d8( bes) |
	a4.( g8) |
	fis\p r fis r |
}

sopranosolo = \relative c'' {\key f \major \clef soprano
	R2*12 |
	r4 a8 d |
	f d cis d16 e |
	a,4. a8 |
	gis gis b d16 d |
	d4 cis |
	r d8 d |
	d( g4) f8 |
	e8( d) c bes |
%21
	a f' e cis |
	d2 ~|
	d8( bes) a g |
	f4 e8 r |
	r4 b'4 |
	b8( c) r c |
	b b d f16 f |
	f8 e r g, |
	c bes16 a a8 a |
	a g g a |
%31
	bes c d c16 bes |
	bes8 a r g |
	c bes16 a a8 a |
	a g g a |
	bes( c d) f |
	e8. d16 c4 |
	a'4(\f g8) e |
	f( d) c bes\dim |
	a4.(\! g8) |
	f4 r |
%41
	R2 |
	r4 es'\espressivo |
	d8 a16 bes c8 c |
	c bes r4 |
	R2 |
	r4 f'\espressivo |
	e8 b16 cis d8 d |
	d cis e cis |
	a( d4) c8 |
	c( bes) a gis |
%51
	a2 |
	d4 r |
	R2 |
	r4 a8\f d |
	f d cis d16 e |
	a,4 d8 d |
	d2( |
	cis16 d g f e d) c( bes) |
	a8( f'4)\fermata e16 d |
	d2 |
%61
	R2*8 |
}

sopranosoloLyrics = \lyricmode {
	Mei -- ne See -- le dür -- stet nach Gott, nach dem
	le -- ben -- di -- gen Got -- te, mei -- ne See -- le dür -- stet nach
	Gott, nach dem le -- ben -- di -- gen Got -- te, nach Gott, nach dem
	le -- ben -- di -- gen Got -- te. Wann wer -- de ich da -- hin
	kom -- men, dass ich Got -- tes An -- ge -- sicht schau -- e? Wann
	wer -- de ich da -- hin kom -- men, dass ich Got -- tes
	An -- ge -- sicht, Got -- tes An -- ge -- sicht schau -- e? Wann
	wer -- de ich da -- hin kom -- men? Wann wer -- de ich da -- hin
	kom -- men, dass ich Got -- tes An -- ge -- sicht schau -- e? Mei -- ne
	See -- le dür -- stet nach Gott, mei -- ne See -- le dür -- stet nach
	Gott.
}

cello = \relative c {\key f \major \clef bass
	d8\p r d r |
	d r e r |
	f r f r |
	e2( |
	a8) r a( g) |
	fis r fis r |
	g(\< bes a\> g) |
	fis\! r fis r |
	g\cresc r\! gis r |
	a2\pp ~|
%11
	a4 bes8( g) |
	a r a4( |
	d,) r |
	R2*2 |
	e2\p |
	a,8 r a'( g) |
	fis r fis r |
	g4 r |
	g8 r g r |
%21
	f4 r |
	r8 bes,( c d) |
	g,4 a8 bes |
	c4. r8 |
	R2*4 |
	r4 a( |
	bes8) r bes'(\< a |
%31
	g f\!) e4\sf\> ~|
	e8 f\! r bes,\p |
	a4 d8 c |
	bes r bes' a |
	g r g4\cresc ~|
	g8\! f e c |
	f4(\p g) |
	a8 bes,( c\dim d)\! |
	c r c,4( |
	f8) r f' r |
%41
	f r g r |
	a4 r |
	d,4.\sf\> r8\! |
	g,8 r g' r |
	g\cresc r a r |
	b4 r |
	e,4.\sf\> r8\! |
	r a-.\p g-. r |
	r f-. fis-. r |
	r g-. a-. bes-. |
%51
	a r a r |
	f r d r |
	e2( |
	a,8) r8 d16\cresc d d\! d |
	d d d d e e e e |
	f8(\< fis g gis)\! |
	a2\p ~
	a4 bes8( g) |
	a r a,4\fermata |
	d8 r a' g |
%61
	fis r fis r |
	g( bes a) g |
	fis r fis r |
	g(\cresc bes a)\! g |
	fis r fis r |
	d\dim r bes4 |
	fis( g) |
	d8\p r d r |
}

contrabasso = \relative c {\key f \major \clef bass
	R2*7 |
	r4 fis8 r |
	g\cresc r\! gis r |
	a4\pp r |
%11
	r2 |
	r4 a( |
	d,) r |
	R2*2 |
	e2\p |
	a,8 r r4 |
	R2*2 |
	g'8 r g r |
%21
	f4 r |
	r8 bes,( c d) |
	g,4 a8 bes |
	c4. r8 |
	R2*7 |
%32
	r4 r8 bes\p |
	a4 d8 c |
	bes r bes' a |
	g r g4\cresc ~|
	g8\! f e c |
	f4(\p g) |
	a8 r8 r4 |
	R2*4
%43
	d,4.\sf\> r8\! |
	g,8 r r4 |
	R2*2 |
	e'4.\sf\> r8\! |
	R2*3 |
%51
	r4 a8 r |
	f r d r |
	e2( |
	a,8) r8 d16\cresc d d\! d |
	d d d d e e e e |
	f8(\< fis g gis)\! |
	a4 r4 |
	R2 |
	r4 a,4\fermata |
	d8 r a' g |
%61
	fis r fis r |
	g( bes a) g |
	fis r fis r |
	g(\cresc bes a)\! g |
	fis r fis r |
	d\dim r bes4 |
	fis( g) |
	d8\p r d r |
}
