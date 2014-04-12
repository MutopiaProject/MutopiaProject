\version "2.18.0"

pPiece = ""
Markings = {\time 4/4 \tempo "Allegro assai" s1*73 \bar "||"}
incmidi = "midi3b.ily"

flautoI = \relative c'' {\key c \major
	R1*22 |
	r4 e(\p\< f g\! |
	a) b( c d) |
	c,2\p b |
	r4 e(\< f g |
	a)\! b(\f c d) |
	c2\p b |
	r2 r4 b,4\p |
	c2.( b4) |
%31
	a r r2 |
	R1 |
	a'4.(\p e8)\< f4(\> e)\! |
	a4.( e8)\< f4(\> e)\! |
	e( a8\cresc b c4) c |
	d2\f e |
	R1*4 |
%41
	r2 e4.\cresc e8 |
	e4 d cis cis |
	d a f'4.\sf e8 |
	d4 c( b) a |
	e( fis\cresc gis a) |
	b(\f c d e) |
	a,2\p r |
	R1*5 |
%53
	r4 e(\< f g |
	a\cresc b c d) |
	c2(\f\> b)\! |
	r4 e,(\p\cresc f g |
	a b\f c d) |
	c2(\sf b_"dim.") |
	R1*2 |
%61
	a4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r a(\p g! f) |
	e1\< ~|
	e |
	e\f |
	a,4 r r2 |
	e''1(\f |
	c4) r r2 |
	e1\p ~|
%71
	e\dim ~|
	e4 r c r |
	a1\pp |
}

flautoII = \relative c'' {\key c \major
	R1*22 |
	r4 cis(\p\< d e\! |
	f) gis( a b) ~|
	b a\p gis2 |
	r4 cis,(\< d e |
	f)\! gis(\f a b) ~|
	b a\p gis2 |
	R1*4 |
%33
	a4.(\p e8)\< f4(\> e)\! |
	a4.( e8)\< f4(\> e)\! |
	e( a8\cresc g fis4) c' ~|
	c\f b c2 |
	R1*4 |
%41
	r2 e4.\cresc d8 |
	cis4 d cis cis |
	d a d4.\sf cis8 |
	d4 a( gis) a |
	e( fis\cresc gis a) |
	gis(\f a b gis) |
	a2\p r |
	R1*5 |
%53
	r4 cis,(\< d e |
	f\cresc gis a b) ~|
	b\f\> a gis2\! |
	r4 cis,(\p\cresc d e |
	f gis\f a b) ~ |
	b a gis2_"dim." |
	R1*2 |
%61
	a4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r a(\p g! f) |
	e1\< ~|
	e |
	e\f |
	a,4 r r2 |
	e'1\f ~|
	e4 r r2 |
	e1\p ~|
%71
	e\dim ~|
	e4 r e r |
	e1\pp |
}

oboeI = \relative c'' {\key c \major
	a2\p bes ~|
	bes c4( bes) |
	a r r2 |
	R1*3 |
	r4 g(\p a g) |
	r g( a g) |
	g( c8 d) e4\< e\! |
	e2\sf( d) |
%11
	e r |
	R1*3 |
	e,4( fis\cresc gis a) |
	b(\f c) d2\sf |
	c4\p r r2 |
	R1 |
	a4(\p d2 c4) |
	bes( a) gis( b) |
%21
	c r r2 |
	R1 |
	r4 e,(\p\< f g\! |
	a) b( c d) |
	c,2\p b |
	r4 e(\< f g |
	a)\! b(\f c d) |
	c2\p b |
	R1*2 |
%31
	a4.\mf a8\< b4. b8\! |
	b4( d\espressivo c b) |
	a4.( e8)\< f4(\> e)\! |
	a4.( e8)\< f4(\> e)\! |
	e( a8\cresc b c4) c |
	d2\f e |
	R1*4 |
%41
	r2 e4.\cresc e8 |
	e4 d cis cis |
	d a f'4.\sf e8 |
	d4 c( b) a |
	e( fis\cresc gis a) |
	b(\f c d e) |
	a,2\p f' |
	e1 |
	a,4( d2 c4) |
	bes( a gis) b( |
%51
	c d c bes) |
	a d(\p b2) |
	a4 e(\< f g |
	a\cresc b c d) |
	c2(\> b)\! |
	r4 e,(\p\cresc f g |
	a b\f c d) |
	c2(\sf b_"dim.") |
	R1*2 |
%61
	a4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r a(\p g! f) |
	e1\< ~|
	e |
	e\f |
	a4 r r2 |
	e'1(\f |
	c4) r r2 |
	e1(\p |
%71
	c4) r r2 |
	c4\pp r c r |
	c1\fermata |
}

oboeII = \relative c'' {\key c \major
	a1\p |
	gis2 a4( bes) |
	a r r2 |
	R1*3 |
	r4 e(\p f2) |
	r4 e( f2) |
	e4( g8 b) c4\< c\! |
	c2(\sf b) |
%11
	c r |
	R1*3 |
	e,1\cresc |
	gis4(\f a) b(\sf gis) |
	a\p r r2 |
	R1 |
	a2(\p gis4 a) |
	f2 e4( gis) |
%21
	a r r2 |
	R1 |
	r4 cis,(\p\< d e\! |
	f) gis( a b) ~|
	b a\p gis2 |
	r4 cis,(\< d e |
	f)\! gis(\f a b) ~|
	b a\p gis2 |
	R1*2 |
%31
	a4.\mf a8\< b4. b8\! |
	b4( d\espressivo c b) |
	a4.( e8)\< f4(\> e)\! |
	a4.( e8)\< f4(\> e)\! |
	e( a8\cresc g fis4) c' ~|
	c\f b c2 |
	R1*4 |
%41
	r2 e4.\cresc d8 |
	cis4 d cis cis |
	d a d4.\sf cis8 |
	d4 a( gis) a |
	e( fis\cresc gis a) |
	gis(\f a b gis) |
	a2\p d2 ~|
	d cis |
	a( gis4 a) |
	f2( e4) gis( |
%51
	a b a g) |
	f b(\p gis2) |
	a4 cis,(\< d e |
	f\cresc gis a b) ~|
	b\> a gis2\! |
	r4 cis,(\p\cresc d e |
	d gis\f a b) ~ |
	b a gis2_"dim." |
	R1*2 |
%61
	a4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r a(\p g! f) |
	e1\< ~|
	e |
	e\f |
	a4 r r2 |
	e1(\f |
	a4) r r2 |
	e1(\p |
%71
	a4) r r2 |
	a4\pp r a r |
	a1\fermata |
}

clarinettoI = \relative c' {\key d \major
	R1*2 |
	r4 fis(\p g fis) ~|
	fis8 r fis4( g fis) |
	fis b8(\< cis d4) d\! |
	e2 fis ~|
	fis4 r4 r2 |
	R1*3 |
%11
	r2 cis\p |
	b2. a4 |
	g r r2 |
	R1*2 |
	fis'1\f |
	fis,2\p g |
	fis fis |
	R1*2 |
%21
	r4 e'(\p d c |
	b) e( cis2) |
	b4 r r2 |
	R1*2 |
	b1\p\cresc ~|
	b4 fis'2\f r4 |
	R1 |
	r4 fis\p b,2 ~|
	b2 ais |
%31
	b4 r cis,2\mf ~|
	cis4( e\espressivo d cis) |
	d d(\< e2)\> |
	r4\! d(\< e2)\> |
	d4\! fis\cresc gis d' |
	e2\f fis4 r |
	a,2\p b4( a) |
	a2 b4( a) |
	a r r2 |
	R1 |
%41
	r2 c\sf |
	b a8( c b a) |
	g4( b) r2 |
	r4 fis( g) e |
	fis( gis,\cresc ais b) |
	cis(\f d e fis) |
	b,4.\p b8 cis4. cis8 |
	cis4 fis( dis b) ~|
	b r r2 |
	r2 r4 g''4(\sf |
%51
	fis2.) d4 ~|
	d e\p( cis2) |
	b4 r r2 |
	R1*2 |
	b1\p\cresc ~|
	b4 fis'2\f r4 |
	R1 |
	r4 fis,2(\p eis4) |
	fis1 |
%61
	b4.\mf b8 cis4. cis8 |
	cis4\< e(\> d cis)\! |
	R1 |
	r4 fis,( gis\< ais |
	b cis d e)\! |
	d2(\f cis) |
	b4 r r2 |
	cis1(\f |
	d4) r r2 |
	cis1(\p |
%71
	d4) r r2 |
	fis,4\pp r fis r |
	fis1\fermata |
}

clarinettoII = \relative c' {\key d \major
	R1*2 |
	r4 d(\p e2) |
	d( e) |
	d4 b'8(\< a gis4) d'\! |
	d cis d2 ~|
	d4 r4 r2 |
	R1*3 |
%11
	r2 a\p ~|
	a4 g fis2 |
	g4 r r2 |
	R1*2 |
	fis1\f |
	d2\p e ~|
	e dis |
	R1*2 |
%21
	r4 cis'(\p b a |
	g2) fis ~|
	fis4 r r2 |
	R1*2 |
	b,1\p\cresc ~|
	b4 fis'2\f r4 |
	R1 |
	r4 fis2\p eis4 |
	fis1 |
%31
	fis4 r cis2\mf ~|
	cis4( e\espressivo d cis) |
	d d(\< e2)\> |
	r4\! d(\< e2)\> |
	d4\! fis\cresc gis d' |
	a2\f d4 r |
	fis,2(\p g) |
	fis( g) |
	fis4 r r2 |
	R1 |
%41
	r2 a2\sf ~|
	a4 g fis2 |
	e4( g) r2 |
	r4 fis( g) e |
	fis( gis,\cresc ais b) |
	ais(\f b cis ais) |
	b4.\p b8 cis4. cis8 |
	cis4 fis( dis b) ~|
	b r r2 |
	r2 r4 g''(\sf |
%51
	fis2.) d4 ~|
	d c\p( ais2) |
	b4 r r2 |
	R1*2 |
	b,1\p\cresc ~|
	b4 fis'2\f r4 |
	R1 |
	r4 fis2(\p eis4) |
	fis1 |
%61
	b4.\mf b8 cis4. cis8 |
	cis4\< e(\> d cis)\! |
	R1 |
	r4 fis,( d\< e |
	fis ais b cis)\! |
	b2(\f ais) |
	b4 r r2 |
	b(\f ais) |
	b4 r r2 |
	b(\f ais) |
%71
	b4 r r2 |
	d,4\pp r d r |
	d1\fermata |
}

fagottoI = \relative c' {\key c \major \clef bass
	e2(\p f) |
	e ~ e4 d |
	c4.( e,8) f4( e) |
	a4.( e8) f4( e) |
	e a8(\< b c4) c\! |
	d2 e |
	c4.( g8) a4( g) |
	c4.( g8) a4( g) |
	g( c8 d) e4\< e\! |
	e2(\sf d) |
%11
	e d\p |
	cis4 d a2 ~|
	a4 r r2 |
	R1 |
	e4( fis\cresc gis a) |
	b(\f c) d2\sf |
	c4 r r2 |
	R1*4 |
%22
	r4 d(\p b2) |
	a4 r r2 |
	R1*2 |
	r4 e(\< f g |
	a)\! b(\f c d) |
	c2.\p b4 |
	r bes a2 ~|
	a d |
%31
	c4\mf a a2 |
	gis4( b a gis) |
	a a2( b4) |
	r a2( b4) |
	e,( a8\cresc b c4) c |
	d2\f e |
	R1*2 |
	r4 g,(\p c e) |
	e2( d) |
%41
	c bes\sf |
	a8 r r4 r2 |
	R1*2 |
	e1 |
	e'1 ~|
	e4 r b2 ~|
	b4 bes a2 ~|
	a8 r d2( c4 |
	bes a gis) f'( |
%51
	e d) c2 ~|
	c4 f\p( d2) |
	c4 e,(\< f g\! |
	a\cresc b c d) |
	c2(\f\> b)\! |
	r4 e,(\p f\cresc g |
	a b\f c d) |
	c2(\sf b2)-"dim." |
	r4 bes(\p a2) ~|
	a d |
%61
	c4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r4 a(\p g! f) |
	e2(\< fis4 gis |
	a b c d)\! |
	c2(\f b) |
	c4 r r2 |
	b1(\f |
	a4) r r2 |
	b1(\p |
%71
	a4) r r2 |
	e4\pp r e r |
	e1\fermata |
}

fagottoII = \relative c' {\key c \major \clef bass
	c2\p d ~|
	d( c4) gis |
	a r r2 |
	R1 |
	r2 r4 c |
	c( b) c2 ~|
	c4 r4 r2 |
	R1 |
	e,4( g8 b) c4\< c\! |
	c2(\sf b) |
%11
	c g\p |
	a1 |
	d,4 r r2 |
	R1 |
	e1\cresc |
	gis4(\f a) b\sf gis |
	a4 r r2 |
	R1*4 |
%22
	r4 b(\p gis2) |
	a4 r r2 |
	R1*2 |
	r4 cis,(\< d e |
	f)\! gis(\f a b) ~|
	b\p a gis2 |
	r4 c, f2 |
	e1 |
%31
	a,8\mf r c r d r f r |
	e r gis r a r e r |
	c r a r d r gis, r |
	r4 a8 r d r gis, r |
	a r c(\cresc e a4) c ~
	c\f b c2 |
	R1*2 |
	r4 e,(\p g c) |
	c2( b) |
%41
	c g\sf |
	a8 r d, r a' r a, r |
	d4 r d'8 r a r |
	f r r4 r2 |
	gis,4( a\cresc b c) |
	b(\f a gis e) |
	a\p r a r |
	g r g' r |
	fis8 r f r e r f r |
	d r r4 e8 r d r |
%51
	c r gis' r a r e r |
	f4 d\p e2 |
	a4 cis,\< d e\! |
	f\cresc gis a b ~|
	b\f\> a gis2\! |
	r4 cis,(\p d\cresc e |
	f gis\f a b) ~ |
	b a gis2-"dim." |
	r4 c,(\p f2) |
	e1 |
%61
	a4.\mf a8 b4. b8 |
	b4\< d(\> c b)\! |
	r4 a(\p g! f) |
	e1\< ~ |
	e4 gis a b\! |
	a2(\f gis) |
	a4 r r2 |
	a2(\f gis) |
	a4 r r2 |
	a2(\f gis) |
%71
	a4 r r2 |
	a,4\pp r a r |
	a1\fermata |
}

violinI = \relative c' {\key c \major
	r16 a-.\p-"leggiero" c-. e-. a-. g-. f-. e-. d8 r r4 |
	r16 d' b gis e gis b d c8 r r4 |
	r16 a,-\markup {\italic {sempre piano e leggiero}} c e a g f e d8 r r4 |
	r16 a c e a g f e d8 r r4 |
	r16 a' e c a c e d c8 r8 r4 |
	r16 c' d c b a g f e8 r8 r4 |
	r16 g c e g e d c a8 r8 r4 |
	r16 g c e g e d c a8 r8 r4 |
	r16 c, e\< g c a g f e8\! r8 r4 |
	r16 c' e g e c g c d8 r r4 |
%11
	r16 g, c e g e c e g,8\p r r4 |
	r16 a f' e d c bes a g8 r r4 |
	r16 a g bes a f e g f8 r r4 |
	r16 c' b d c e c a f8 r r4 |
	r16 b e, d c8\cresc r r16 d' b gis e8 r |
	r16 gis\f b e e,8 r r16 d' e gis b8 r |
	r16 a,,\p c e a g f e d8 r8 r4 |
	r16 e g b e d cis b a8 r r4 |
	r16 a fis a d c b a gis8 r r4 |
	r16 d c b a d f a gis8 r r4 |
%21
	r16 c b a a gis b d c8 r r4 |
	R1 |
	r16 c, e a a,8 r r16 d f a cis,8 r |
	r16 f\cresc a d e,8\! r r16 a c e b8 r |
	r16 e,\p a c e c b a d8 r r4 |
	r16 a e c a8 r r16 a' f d\cresc e8 r\! |
	r16 d' a f e8 r r16 a' e c d8 r |
	r16 e,\p a c e c b a d8 r r4 |
	R1*2 |
%31
	r16 a,\p c e a g f e d8 r r4 |
	r16 d' b gis e gis b d c8 r r4 |
	r16 a, c e a e d c d8 r r4 |
	r16 a c e a e d c d8 r r4 |
	r16 a' e c a\cresc c e d c8 r r4 |
	r16 g'\f d' c b a g f e8 r r4 |
	r16 g\p c e g e d c a8 r r4 |
	r16 g c e g e d c a8 r r4 |
	r16 c, e g c g f g e8 r r4 |
	r16 c' e g e c g c d8 r r4 |
%41
	r16 g, c e g e c e g,8 r r4 |
	r16 g\cresc e cis d\! f a d cis8 r r4 |
	r16 d, f bes a g f e d8 r r4 |
	r16 a' gis b a e d e f8 r r4 |
	r16 b e, d c8 r r16 d'\cresc b gis e8 r |
	r16 gis\f b e e,8 r r16 d' b' a gis8 r |
	r16 e,\p c e a g f e d8 r r4 |
	r16 e g b e d cis d a8 r r4 |
	r16 a fis a d c b a gis8 r r4 |
	r16 f' d bes a f a d e,8 r r4 |
%51
	r16 c' b a e gis b d c8 r r4 |
	R1 |
	r16 c, e a a,8 r r16 d f a cis,8 r |
	r16 f\cresc a d e,8 r r16 a c e b8 r |
	r16 e,\f g c e c b a d8\p r r4 |
	r16 a\cresc e c a8 r r16 a' f d g8 r |
	r16 d' a f e8 r r16 a'\f e c b8 r |
	r16 e, g c e c b a e'8 r r4 |
	R1*2 |
%61
	r16 a,,\p c e a g f e d8 r r4 |
	r16 d' b gis e gis b d c8 r r4 |
	R1 |
	r16 d, b d e\cresc d c b c8 r r4 |
	r16 a' e a b8 r r16 c a c d8 r |
	r16 c\f a c e8 r8 r16 d b d e8 r |
	r16 e,\f a c e c b c a8 r r4 |
	R1 |
	r16 e a c e\dim c b c a8 r r4 |
	R1 |
%71
	r16 a,\p c e a e d e c8 r r4 |
	r2 a4\pp-"pizz." r |
	a r r2\fermata |
}

violinII = \relative c' {\key c \major
	r2 r16 d-.\p-"leggiero" f-. a-. d-. c-. b-. a-. |
	gis8 r r4 r16 e a c e b gis e |
	a8 r r4 r16 a f d b c d e |
	c8 r r4 r16 a' f d b c d e |
	c8 r r4 r16 fis a c e c b a |
	d,8 r r4 r16 e d e fis g a b |
	c8 r r4 r16 c a f d e f g |
	e8 r r4 r16 c' a f d e f g |
	e8 r r4 r16 e\< g c e c b c\! |
	g8 r r4 r16 f' d b g f d f |
%11
	e8 r8 r4 r16 e'\p bes g e g bes g |
	e'8 r r4 r16 a, e f g a b cis |
	d8 r r4 r16 a g bes a d cis e |
	d8 r r4 r16 a gis b a d a f |
	e8 r r16 fis\cresc a c d8 r r16 a c e |
	e,8 r8 r16 a c e b8 r r16 d b gis |
	e8 r r4 r16 d\p f a d c b a |
	b8 r r4 r16 a cis e a e d c |
	d8 r r4 r16 e, fis g a b c a |
	fis8 r r4 r16 c' b a gis b d f |
%21
	e8 r r4 r16 d e f g e c bes |
	a8 r r4 r2 |
	r4 r16 cis, e a a,8 r r16 e'\cresc g cis |
	d,8\! r r16 gis b e e,8 r r16 d' f a |
	a,8 r r4 r16 b\p gis f e d b e |
	c8 r r16 a' e cis a8 r r16 cis' g e |
	f8 r r16 d' b gis e8 r r16 d' f a |
	a,8 r r4 r16 b\p gis f e d b e |
	a,4 r r2 |
	R1 |
%31
	r2 r16 d\p f a d c b a |
	gis8 r r4 r16 e a c e b gis e |
	a8 r r4 r16 a f d b' gis e d |
	c8 r r4 r16 a' f d b' gis e d |
	c8 r r4 r16 e\cresc a c a c b a |
	d8 r r4 r16 c,\f d e f g a b |
	c8 r r4 r16 c a f d e f g |
	e8 r r4 r16 c' a f d e f g |
	e8 r r4 r16 e g c e c b c |
	g8 r r4 r16 f' d b g f d f |
%41
	e8 r r4 r16 e'\cresc bes g e\! g bes g |
	a8 r r4 r16 e' g e cis a g e |
	f8 r r4 r16 f a d f d cis e |
	d8 r r4 r16 d, cis e d a gis a |
	b8 r r16 fis'\cresc a c d8 r r16 a c e |
	e,8\f r r16 a c e e,8 r r16 f' e d |
	c8 r r4 r16 a\p f a d c b a |
	b8 r r4 r16 a, cis e a g f e |
	d8 r r4 r16 e fis gis a b c a |
	f8 r r4 r16 gis b a gis b d f |
%51
	e8 r r4 r16 a g f c e g bes |
	a8 r r4 r2 |
	r4 r16 cis, e a a,8 r r16 e g cis |
	d,8\cresc r r16 gis b e e,8 r r16 d' f g! |
	c,8\! r r4 r16 b\p gis f e d b e |
	a,8 r r16 a'\cresc e cis a8 r r16 cis' a g |
	f8 r r16 d' b gis e8 r r16 d'\f f g! |
	e8 r r4 r16 b\dim gis f e d b e |
	a,8\! r r4 r2 |
	R1 |
%61
	r2 r16 d\p f a d c b a |
	gis8 r r4 r16 e a c e b g e |
	a8 r r4 r2 |
	r r16 e\cresc c e gis f e d |
	e8 r r16 b' e, b' c8 r r16 d a d |
	e8\f r r16 c a c e8 r r16 d b c |
	a8 r r4 r16 e\f d e c a b a |
	e'8 r r4 r2 |
	r r16 e\dim d e c a b a |
	e'8 r r4 r2 |
%71
	r r16 a,\p c e a e d e |
	c8 r r4 a4\pp-"pizz." r |
	a r r2\fermata |
}

viola = \relative c {\key c \major \clef alto
	<c' e>4\p^"pizz." r <d f> r |
	<d e> r <c e> <e, b' e> |
	<a e'> r r <b e> |
	<c e> r r <b e> |
	<c e> r r <c fis> |
	<g g'> r <g e'> r |
	<g e'> <g g'> a <g d'> |
	g <g g'> a <g d'> |
	<g e'> r c\< r\! |
	<g e'> r <g f'> r |
%11
	<g e'> r r2 |
	R1 |
	r8 e'\p^"pizz." f cis d e f g |
	a gis a e f e f d |
	<b d>4 c\cresc <d e> <c e> |
	<b e>\f <c e> <d e> <d e> |
	<c e>\p r <d f> r |
	<b e> r <cis e> r |
	<d a'> d e a, |
	f' r b, gis' |
%21
	a e r <g bes> |
	a f e r |
	a, a'8 g f4 e |
	d\cresc c8\! b a4 g8 f |
	e4 r e'\p r |
	a, a'8 g f4 e\cresc |
	d\! c8 b a4 g8 f |
	e4 r e'\p r |
	R1*2 |
%31
	r2 r16 d,\p^"arco" f a d c b a |
	gis8 r r4 r16 e a c e b gis e |
	a8 r r4 r16 a f d b' gis e d |
	c8 r r4 r16 a' f d b' gis e d |
	c8 r r4 r16 e\cresc a c a c b a |
	d8 r r4 r16 c,\f d e f g a b |
	c8 r r4 r2 |
	R1*4 |
%42
	r16 g\cresc e cis d\! f a d cis8 r r4 |
	r16 d, f bes a g f e d8 r r4 |
	r16 a' gis b a e d e f8 r r4 |
	r16 b e, d c8 r r16 d'\cresc b gis e8 r |
	r16 gis\f b e e,8 r r16 d' b' a gis8 r |
	r16 e,\p c e a g f e d8 r r4 |
	r16 e g b e d cis d a8 r r4 |
	r16 a fis a d c b a gis8 r r4 |
	r16 f' d bes a f a d e,8 r r4 |
%51
	r16 c' b a e gis b d c8 r r4 |
	R1 |
	r4 a'8-"pizz." g f4 e |
	d\cresc c8 b a4 g!8 f |
	e4\! r e'\p r |
	a,8 r r16 cis,\cresc-"arco" e a a8 r r16 g a cis |
	d8 r gis,16 b e gis a8 r d,16\f f b d |
	c8 r r4 r16 e,,\dim gis b e b g e |
	a8\! r r4 r2 |
	R1 |
%61
	<e c>2\p^"divisi" <f d> |
	e1 ~|
	e4 a( g! f) |
	e1\cresc ~|
	e ~|
	e\f |
	a4 r r2 |
	e1(\f |
	a4) r r2 |
	e1(\p |
%71
	a4) r r2 |
	a4\pp-"pizz." r a r |
	a r r2\fermata |
}

sopranosolo = \relative c'' {\key c \major \clef soprano
	a4. a8 bes4. bes8 |
	bes4 d\espressivo c bes |
	a4. e8 f4 e |
	a4. e8 f4 e |
	e a8 b c4 c |
	d2\sf e4 r |
	c4. g8 a4 g |
	c4. g8 a4 g |
	g c8 d\< e4\! e |
	g1\f |
%11
	e4 r e4.\sf e8 |
	e4 d cis cis |
	d a f' f8 e |
	d4 c b a |
	e'1\sf |
	e,2 r |
	a4. a8 b4. b8 |
	b4 e cis a |
	r d2 c4 |
	bes a gis( f') |
%21
	e d c2 ~|
	c4 d b2 |
	a r |
	r4 b c\cresc d |
	e1\sf |
	a,4 r r2 |
	r4 b c d\< |
	e2\f e ~|
	e4 e a, b |
	c2.( b4) |
%31
	a r r2 |
	R1*5 |
	c4. g8 a4 g |
	c4. g8 a4 g |
	g c8 d\< e4 e |
	g1\f |
%41
	e2 e4.\f e8 |
	e4 d cis cis |
	d a f' f8 e |
	d4 c b a |
	e'1\f |
	e,2 r |
	a4. a8 b4. b8 |
	b4 e cis a ~|
	a d2 c4 |
	bes a gis( f') |
%51
	e d c2 ~|
	c4 d b2 |
	a4 r r2 |
	r4 b\cresc c d |
	e1\f |
	a,2 r2 |
	r4 b\f c d |
	e2 e ~|
	e4 e\p a, b |
	c2( b) |
%61
	a r |
	R1 |
	r4 a\cresc g f |
	e1\f ~|
	e |
	e |
	R1*7 |
}

sopranosoloLyrics = \lyricmode {
	Denn ich woll -- te gern hin -- ge -- hen mit dem Hau -- fen und mit
	ih -- nen wal -- len zum Hau -- se Got -- tes, mit Froh -- lo -- cken
	und mit Dan -- ken wal -- len zum Hau -- se Got -- tes, mit
	Froh -- lo -- cken und mit Dan -- ken un -- ter dem Hau -- fen, die da
	fei -- ern, denn ich woll -- te gern hin -- ge -- hen und mit ih -- nen
	wal -- len zum Hau -- se Got -- tes, mit ih -- nen wal -- len zum
	Hau -- se Got -- tes, zum Hau -- se Got -- tes, mit Froh -- lo -- cken
	und mit Dan -- ken wal -- len zum Hau -- se Got -- tes, mit
	Froh -- lo -- cken und mit Dan -- ken un -- ter dem Hau -- fen, die da
	fei -- ern, denn ich woll -- te gern hin -- ge -- hen und mit ih -- nen
	wal -- len zum Hau -- se Got -- tes, mit ih -- nen wal -- len zum
	Hau -- se Got -- tes, zum Hau -- se Got -- tes, zum Hau -- se Got -- tes.
}

soprano = \relative c'' {\key c \major \clef soprano
	R1*30 |
	a4.\p a8 b4. b8 |
	b4 d c b |
	a4. e8 f4 e |
	a4. e8 f4 e |
	e a8\cresc b\! c4 c |
	d2\f e |
	R1*2 |
	r4 g,\pp c c |
	<<{\voiceOne
	e2( d) |
%41
	c e4.\f e8 |
	e4 d cis cis |
	d a f' f8 e |
	d4 c b a |
	} \new Voice {\voiceTwo
	c2( b) |
%41
	c bes4.\f bes8 |
	a4 a a a |
	a f d' d8 cis |
	d4 c b a |}
	>>\oneVoice
	e'1\sf |
	e,2 r |
	a4. a8 b4. b8 |
	b4 e cis a ~|
	a d2 c4 |
	bes a gis( f') |
%51
	e d <<{\voiceOne c2 ~ c4 d b2 a4} \new Voice {\voiceTwo c( bes a) a gis2 a4}>> \oneVoice r r2 |
	r4 b\cresc c d |
	<<{\voiceOne e1\f} \new Voice {\voiceTwo c2(\f b)}>>\oneVoice |
	a2 r2 |
	r4 b\f c d |
	<<{\voiceOne
	e2 e ~|
	e4 e\p a, b |
	c2( b) |
	a2
	} \new Voice {\voiceTwo
	c2 b |
	r4 e, a a |
	a2( gis) |
	a2
	}>>\oneVoice r2 |
%62
	R1 |
	r4 a\cresc g f |
	e1\f ~|
	e |
	e |
	R1*7
}

sopranoLyrics = \lyricmode {
	Denn ich woll -- te gern hin -- ge -- hen mit dem Hau -- fen und mit
	ih -- nen wal -- len zum Hau -- se Got -- tes, zum Hau -- se Got -- tes,
	mit Froh -- lo -- cken und mit Dan -- ken un -- ter dem Hau -- fen, die
	da fei -- ern, denn ich woll -- te gern hin -- ge -- hen und mit
	ih -- nen wal -- len zum Hau -- se Got -- tes, mit ih -- nen wal -- len
	zum Hau -- se Got -- tes, zum Hau -- se Got -- tes, zum Hau -- se
	Got -- tes.
}

alto = \relative c'' {\key c \major \clef soprano
	R1*30 |
	a4.\p a8 a4. a8 |
	gis4 b a gis |
	a4. e8 f4 e |
	a4. e8 f4 e |
	e a8\cresc b c4 c |
	c4(\f b) c2 |
	R1*2 |
	r4 e,\pp g c |
	g1 |
%41
	c2 g4.\f g8 |
	g4 f e g |
	f d a' a8 a |
	d4 a gis a |
	e1\sf |
	g2 r |
	a4. a8 b4. b8 |
	b4 e, a a ~|
	a d2 c4 |
	bes a gis2 |
%51
	a4 b a( g |
	f) f d2 |
	c4 r r2 |
	r4 gis'\cresc a b |
	b(\f a gis2) |
	a2 r |
	r4 gis\f a b |
	b( a) gis2 |
	r4 e\p e dis |
	e1 |
%61
	d2 r |
	R1 |
	r4 a'\cresc g f |
	e1\f ~|
	e |
	e |
	R1*7 |
}

altoLyrics = \sopranoLyrics

cello = \relative c { \key c \major \clef bass
	a4^"pizz." r a r |
	a r r2 |
	r4 a d gis, |
	r a d gis, |
	a c8 b a4 r |
	g r c r |
	r c f b, |
	r c f b, |
	c r r a'\< |
	g\! r g, r |
%11
	c r g'\p r |
	a d, a' a, |
	d r d' a |
	f r r2 |
	gis,4(^"arco" a\cresc b c) |
	b(\f a) gis( e) |
	a r a\p^"pizz." r |
	g r g' r |
	fis f e f |
	d, r e d' |
%21
	c gis a e |
	f d e r |
	a a'8 g f4 e |
	d\cresc c8\! b a4 g8 f |
	e4 r e'\p r |
	a, a'8 g f4 e\cresc |
	d\! c8 b a4 g8 f |
	e4 r e'\p r |
	c r r2 |
	R1 |
%31
	r16 a\p^"arco" c e a g f e d8 r r4 |
	r16 d' b gis e gis b d c8 r r4 |
	r16 a, c e a e d c d8 r r4 |
	r16 a c e a e d c d8 r r4 |
	r16 a' e c a\cresc c e d c8 r r4 |
	r16 g'\f d' c b a g f e8 r r4 |
	r4 c\p^"pizz." f b, |
	r c f b, |
	c e8 d c4 a' |
	g r g, r |
%41
	c4 r4 r16 e'\cresc^"arco" bes g e\! g bes g |
	a8 r r4 r16 e' g e cis a g e |
	f8 r r4 r16 f a d f d cis e |
	d8 r r4 r16 d, cis e d a gis a |
	b8 r r16 fis'\cresc a c d8 r r16 a c e |
	e,8\f r r16 a c e e,8 r r16 f' e d |
	c8 r r4 r16 a\p f a d c b a |
	b8 r r4 r16 a, cis e a g f e |
	d8 r r4 r16 e fis gis a b c a |
	f8 r r4 r16 gis b a gis b d f |
%51
	e8 r r4 r16 a, g f c e g bes |
	a8 r r4 r2 |
	a,4-"pizz." a'8 g f4 e |
	d\cresc c8 b a4 g |
	c\! d e\p r |
	a,16\cresc-"arco" a c e a8 r r16 a, d f a8 r |
	d,16 f a d gis,8 r a,4\f-"pizz." g |
	c d e\dim d |
	c\! r r2 |
	R1 |
%61
	a4\p r a r |
	a r a' e |
	c r r d |
	gis, r a\cresc b |
	c b a f |
	e\f r e' r |
	a4 r r2 |
	R1 |
	a,4\f-"pizz." r c\dim r |
	e r e r |
%71
	a, r r2 |
	a4\pp r a r |
	a r r2\fermata |
}

contrabasso = \relative c {\key c \major \clef bass
	a4^"pizz." r a r |
	a r r2 |
	r4 a d gis, |
	r a d gis, |
	a c8 b a4 r |
	g r c r |
	r c f b, |
	r c f b, |
	c r r a'\< |
	g\! r g, r |
%11
	c r g'\p r |
	a d, a' a, |
	d r d' a |
	f r r2 |
	gis,4(^"arco" a\cresc b c) |
	b(\f a) gis( e) |
	a r a\p^"pizz." r |
	g r g' r |
	fis f e f |
	d, r e d' |
%21
	c gis a e |
	f d e r |
	a a'8 g f4 e |
	d\cresc c8\! b a4 g8 f |
	e4 r e'\p r |
	a, a'8 g f4 e\cresc |
	d\! c8 b a4 g8 f |
	e4 r e'\p r |
	c r r2 |
	R1 |
%31
	a4^"pizz." c d f |
	e e a e |
	c a d gis, |
	r a d gis, |
	a c8\cresc e a4 a |
	g\f r b, r |
	r c\p f b, |
	r c f b, |
	c e8 d c4 a' |
	g r g, r |
%41
	c r g' r |
	a d, a' a, |
	d r d' a |
	f r r2 |
	gis,4(^"arco" a)\cresc b( c) |
	b(\f a) gis( e') |
	a, r a\p^"pizz." r |
	g r g' r |
	fis f e f |
	d r e d' |
%51
	c gis a e |
	f d e r |
	a,-"pizz." a'8 g f4 e |
	d\cresc c8 b a4 g |
	c\! d e\p r |
	a,4 a'8\cresc g f4 e |
	d c8 b a4\f g |
	c d e\dim d |
	c\! r r2 |
	R1 |
%61
	a4\p r a r |
	a r a' e |
	c r r d |
	gis, r a\cresc b |
	c b a f |
	e\f r e' r |
	a4 r r2 |
	R1 |
	a,4\f-"pizz." r c\dim r |
	e r e r |
%71
	a, r r2 |
	a4\pp r a r |
	a r r2\fermata |
}
