\version "2.18.0"

pPiece = "No. 1. Chor."

Markings = {\time 6/4 \tempo "Lento e Sostenuto" s1.*86 \bar "||"}
incmidi = "midi1.ily"

flautoI = \relative c'' {\key f \major
	R1.*2 |
	r2. c\mf\< |
	a'\f g4( e d) |
	c( f a) c2.\< ~ |
	c2(\sf bes4) a2( g4) |
	f f'2 ~ f4( e d) |
	c( f c) a(\dim bes g) |
	f\! r r r2. |
%10
	R1.*3 |
	r2. f\p ~|
	f1. ~|
	f2. ~ f4 f\mf f |
	bes2.\cresc a |
	bes4 c d es2. |
	d2 d4\f f c c |
	c2 c4 c2 d4 |
	e2 g,4\p c( a) g |
%21
	f2. ~ f4 r r |
	R1.*2 |
	r4 g\f g a2.\espressivo |
	g c4 d e |
	f2.( e2) r4 |
	R1. |
	r2. r4 r g\f |
	g2( f4) e2( d4) |
	c2. ~ c4 b a |
%31
	g2 r4 r2. |
	R1.*2 |
	r2. g\f ~|
	g4( c e) e2(\> d4)\! |
	c2 r4 r2. |
	R1.*5 |
%42
	r2. r4 r bes\p |
	bes( a) r r r a |
	a( gis) f' e( c) b |
	a2 a4 d( b) a |
	gis2 r4 r r a\cresc |
	a( d,)\! r r r g |
	g( cis,) a'\f d(\cresc bes) a |
	g2 g4 e'( c) bes |
	a2 f'4\f e( cis) d |
%51
	a2 f'4 e( cis) d |
	cis2 r4 r2. |
	R1. |
	r4 r a\ff f'-> f-> f-> |
	bes,2\sf bes4 es2 es4 |
	d2 r4 r2. |
	R1. |
	r4 r d d d d |
	es2 es4 f2 f4 |
	f2 d4 d d d |
%61
	g2 d4 f2 f4 |
	e g, g a2.\sf |
	g4 g g a2.\sf |
	c1.\f ~|
	c ~ |
	c4 r r r2. |
	R1. |
	r2. r4 r a\p |
	c( g a) bes2( a4) |
	g2 g4 f2 r4 |
%71
	R1.*2 |
	r4 r f\f a( c e) |
	f2. ~ f4 e( d) |
	c( f c) a( bes g) |
	f2 r4 r2. |
	R1.*2 |
	d'2\f c4 bes( g4.) f8 |
	f1. ~|
%81
	f ~|
	f2(\p bes4 a2.) |
	R1.*2 |
	r4 c,-.(\p c-. c-. c-. c-.) |
	f1.\espressivo\fermata |
}

flautoII = \relative c'' {\key f \major
	R1.*2 |
	r2. c\mf\< |
	a'\f g4( e d) |
	c( f a) c2.\< ~|
	c2(\sf bes4) a2( g4) |
	f f'2 ~ f4( e d) |
	c( f c) a(\dim g e) |
	f\! r r r2. |
%10
	R1.*3 |
	r2. f\p ~|
	f1. ~|
	f2. ~ f4 f\mf f |
	bes2.\cresc a |
	bes4 a bes c2. |
	bes2 d4\f c c c |
	c2 c4 c2 b4 |
	c2 r4 r2. |
%21
	R1.*3 |
	r4 g\f g a2.\espressivo |
	g c4 d e |
	f2.( e2) r4 |
	R1. |
	r2. r4 r g\f |
	g2( f4) e2( d4) |
	c2. ~ c4 b a |
%31
	g2 r4 r2. |
	R1.*2 |
	r2. g\f ~|
	g2( c4) c2(\> b4)\! |
	c2 r4 r2. |
	R1.*5 |
%42
	r2. r4 r g\p |
	g2 r4 r r f |
	f2 r4 r2. |
	R1. |
	r2. r4 r a\cresc |
	a( d,) r r r g |
	g( cis,) a'\f d(\cresc bes) a |
	g2 g4 e'( c) bes |
	a2 f'4\f e( cis) d |
%51
	a2 f'4 e( cis) d |
	cis2 r4 r2. |
	R1. |
	r4 r a\ff d-> d-> d-> |
	g,2\sf g4 a2 a4 |
	d2 r4 r2. |
	R1. |
	r4 r bes bes bes bes |
	es2 es4 es2 es4 |
	d2 d4 d d d |
%61
	d2 d4 d2 d4 |
	c e, e f2.\sf |
	e4 e e f2.\sf |
	e1.\f ~|
	e ~ |
	e4 r r r2. |
	R1.*6 |
%73
	r4 r f\f a( c e) |
	f2. ~ f4 e( d) |
	c( f c) f,( g e) |
	f2 r4 r2. |
	R1. |
	c'1.->\< ~ |
	c4\f bes a g( e4.) f8 |
	f1. ~|
%81
	f ~|
	f2(\p bes4 a2.) |
	R1.*2 |
	r4 c,-.(\p c-. c-. c-. c-.) |
	f1.\espressivo\fermata |
}

oboeI = \relative c'' {\key f \major
	R1.*2 |
	r2. c\mf\< |
	a'\f g4( e d) |
	c2. f\< ~|
	f\sf ~ f2( e4) |
	f2. ~ f4( e d) |
	c( f c) a(\dim bes g)\! |
	f r r r2. |
%10
	R1.*3 |
	r2. r4 c'\p c |
	d2.\espressivo c |
	f,4 f bes bes2(\mf a4) |
	r bes\cresc bes r c c |
	r c d r es es |
	r d d\f f c c |
	c2 c4 c2 d4 |
	e2 r4 r2. |
%21
	r2. r4 r d\p |
	g(\cresc e) d c2 c4 |
	f2 e4 d2( c4) |
	b g\f g a2.\espressivo |
	g c4 d e |
	f2.( e2) e4 |
	g d e f2 e4 |
	d2 d4 c2. ~|
	c ~ c2 b4 |
	c2 r4 r2. |
%31
	R1.*2 |
	r2. c\p ~|
	c\< g'\f ~|
	g4( e c) e2(\> d4)\! |
	c2 r4 r2. |
	R1. |
	r2. a\p ~|
	a4 bes a g2. ~|
	g4 a g fis2 c'4 |
%41
	bes( c) d es2.\sf ~|
	es4( d) r r r bes\p |
	bes( a) r r r a |
	a( gis) f' e( c) b |
	a2 a4 d( b) a |
	gis2 r4 r r a\cresc |
	a( d,) r r r g |
	g( cis,) a'\f d(\cresc bes) a |
	g2 g4 e'( c) bes |
	a2 f'4\f e( cis) d |
%51
	a2 f'4 e( cis) d |
	cis2 r4 r2. |
	R1. |
	r4 r a\ff f'-> f-> f-> |
	bes,2\sf bes4 es2 es4 |
	d d, d es2.(\sf |
	d4) d d es2.(\sf |
	d2) d'4\ff d d d |
	es2 es4 f2 f4 |
	f2 d4 d d d |
%61
	g2 d4 f2 f4 |
	e g g a2.\sf |
	g4 g g a2.\sf |
	g1.\f ~|
	g4 r r r2. |
	R1.*2 |
	r2. r4 r a,\p |
	c( g a) bes2( a4) |
	g2 g4 f2 r4 |
%71
	R1. |
	r4 r c' f2.\sf\< ~|
	f\f ~ f2 e4 |
	f2. ~ f4 e( d) |
	c( f c) a( bes g) |
	f2 r4 r2. |
	r4 c'\p c d2.\espressivo |
	c2 a'4\f g2( f4) |
	f2( fis4) g( e4.) f8 |
	f1. ~|
%81
	f1. ~|
	f2(\p g4 a2.) |
	R1.*2 |
	r4 c,-.(\p c-. c-. c-. c-.) |
	f1.\espressivo\fermata |
}

oboeII = \relative c'' {\key f \major
	R1.*2 |
	r2. c\mf\< |
	f\f e2( d4) |
	c2. ~ c2\< f4 |
	e2(\sf d4) c2( bes4) |
	a4 f'2 ~ f4( e d) |
	c2. f,4(\dim g e)\! |
	f r r r2. |
%10
	R1.*3 |
	r2. r4 a\p a |
	bes2.\espressivo a |
	f4 f bes bes2(\mf a4) |
	r bes\cresc bes r a a |
	r a bes r c c |
	r d bes\f c c c |
	c2 c4 c2 d4 |
	e2 r4 r2. |
%21
	R1.*3 |
	r4 g,\f g a2.\espressivo |
	g c4 d e |
	f2.( e2) e4 |
	g d e f2 e4 |
	d2 d4 c2. ~|
	c ~ c2 b4 |
	c2 r4 r2. |
%31
	R1.*2 |
	r2. c\p ~|
	c b\sf |
	c ~ c2(\> b4)\! |
	c2 r4 r2. |
	R1. |
	r2. a\p ~|
	a4 bes a g2. ~|
	g4 a g fis2 c'4 |
%41
	bes( c) d es2.\sf ~|
	es4( d) r r r g,\p |
	g2 r4 r r f |
	f2 r4 r2. |
	R1. |
	r2. r4 r a\cresc |
	a( d,) r r r g |
	g( cis,) a'\f d(\cresc bes) a |
	g2 g4 e'( c) bes |
	a2 f'4\f e( cis) d |
%51
	a2 f'4 e( cis) d |
	cis2 r4 r2. |
	R1. |
	r4 r a\ff d-> d-> d-> |
	g,2\sf g4 a2 a4 |
	d d, d es2.(\sf |
	d4) d d es2.(\sf |
	d2) bes'4\ff bes bes bes |
	es2 es4 es2 es4 |
	d2 d4 d d d |
%61
	d2 d4 d2 d4 |
	c e e f2.\sf |
	e4 e e f2.\sf |
	e1.\f ~|
	e4 r r r2. |
	R1.*6 |
%72
	r4 r c f2.\sf\< ~|
	f\f ~ f2 e4 |
	f2. ~ f4 e( d) |
	c( f c) f,( g e) |
	f2 r4 r2. |
	r4 a\p a bes2.\espressivo |
	a2 f'4\f e2( es4) |
	d2. ~ d4 c2 |
	f,1. ~|
%81
	f1. ~|
	f2(\p g4 a2.) |
	R1.*2 |
	r4 c-.(\p c-. c-. c-. c-.) |
	f1.\espressivo\fermata |
}

clarinettoI = \relative c' {\key g \major
	R1. |
	e1. |
	a2. d ~|
	d\f c |
	b d2\< g4 |
	fis2(\! e4) d2( c4) |
	b( c d) e( fis g) |
	a( g d) b(\dim c a)\! |
	r d, d e2. |
	d g ~|
%11
	g2 fis4 g2. |
	R1.*4 |
	r4 c\mf\cresc c r g g |
	r g g r a g |
	r g g\f g d' c |
	b2 bes4 a2 cis4 |
	d2 r4 r2. |
%21
	r4 r b\p e( cis) b |
	a2. r4 b\cresc b |
	b( cis) d ~ d cis( b) |
	a2 r4 r d\f d |
	fis2.\sf d2 c4 |
	b2( a4) a( d fis) |
	a e fis g2 fis4 |
	e2 e4 d( a) d |
	cis2\sf( b4) a2( g4) |
	fis( e fis) g2. |
%31
	a2 d4 fis2\sf e4 |
	d2 r4 r2. |
	R1. |
	e1.\< |
	fis2\f d4\> a2.\! |
	a2 r4 r2. |
	R1. |
	r4 r fis\p b( g) fis |
	e2 e4 a( fis) e |
	dis2 r4 e2. ~|
%41
	e4 f e d2. |
	r4 r d'(\p c2) r4 |
	r r fis( b,2) r4 |
	r r ais( b2) r4 |
	r r fis( e2) r4 |
	r r fis\mf b(\cresc g) fis |
	e2 e4 a( fis) e |
	dis2 b'4\f ~ b a g |
	a2. a |
	b2 b4\f a c c |
%51
	b2 e4 c c c |
	fis, b\ff b c2.(\sf |
	b4) b b c2.(\sf |
	b2) b4\ff b-> b-> e,-> |
	f2\sf f4 f2 d4 |
	a' r r r2. |
	R1. |
	r4 r c\ff c c c |
	c2 c4 c2 b4 |
	c2 r4 r2. |
%61
	R1. |
	r4 a' a b2.\sf |
	a4 a a b2.\sf |
	a1.\f ~|
	a4 r r r2. |
	d,,2.\p e |
	d g ~|
	g2 a4 b2. |
	R1. |
	r2. r4 r b |
%71
	d( a b) c2 b4 |
	a2 a4 g2 g'4\f |
	fis2(\sf e4) d2( c4) |
	b( c d) e( fis g) |
	a( g d) b( c a) |
	g d\p d e2.\espressivo |
	d4 b' b a2.\espressivo |
	b2 b4\f a2( g4) |
	g2 r4 r2. |
	g1. ~|
%81
	g1. ~|
	g2(\p a4 b2.) |
	R1.*2 |
	r4 b-.(\p b-. b-. b-. b-.) |
	d1.\espressivo\fermata |
}

clarinettoII = \relative c' {\key g \major
	r2. d\mf ~|
	d\< c |
	a'1.\! |
	b2.\f c |
	b d2.\< ~|
	d2(\! c4) b2( a4) |
	g( a b) c2. ~|
	c4 b2 g4(\dim a fis)\! |
	r b, b c2. |
	b d |
%11
	c d |
	R1.*4 |
	r4 c\mf\cresc f r f f |
	r g g r a g |
	r g g\f g g fis |
	g2 g4 a2 a4 |
	a2 r4 r2. |
%21
	R1.*3 |
	r2 r4 r d\f d |
	fis2.\sf d2 c4 |
	b2( a4) a( d fis) |
	a e fis g2 fis4 |
	e2 e4 d( a) a |
	a2\sf( g4) fis2( e4) |
	d( e fis) g2. ~|
%31
	g4 fis a4 a2\sf a4 |
	a2 r4 r2. |
	R1. |
	e'1.\< |
	d2\f gis,4 a2\> g4\! |
	fis2 r4 r2. |
	R1. |
	r4 r fis\p b( g) fis |
	e2 e4 a( fis) e |
	dis2 r4 e2. ~|
%41
	e4 f e d2. |
	r4 r bes'(\p a2) r4 |
	r r fis( b,2) r4 |
	r r e( fis2) r4 |
	r r d( b2) r4 |
	r r fis'\mf b(\cresc g) fis |
	e2 e4 a( fis) e |
	dis2. e |
	g fis |
	a2 g4\f a a a |
%51
	b2 b4 a a g |
	fis b\ff b c2.(\sf |
	b4) b b c2.(\sf |
	b2) a4\ff g-> g-> e-> |
	f2\sf f4 f2 d4 |
	a' r r r2. |
	R1. |
	r4 r a\ff a a a |
	a2 a4 g2 g4 |
	g2 r4 r2. |
%61
	R1. |
	r4 fis' fis g2.\sf |
	fis4 fis fis g2.\sf |
	fis1.\f ~|
	fis4 r r r2. |
	d,2.\p ~ d2 c4 |
	b2. d( |
	e2) fis4 g2. |
	R1. |
	r2. r4 r g |
%71
	fis2( f4) e( fis) g ~ |
	g fis2 g2 d'4\f |
	d2(\sf c4) b2( a4) |
	g( a b) c2. ~|
	c4 b2 g4( a fis) |
	g b,\p b c2.\espressivo |
	b4 g' g fis2.\espressivo |
	g2 g4\f fis2( f4) |
	e2 r4 r2. |
	g1. ~|
%81
	g1. ~|
	g2(\p a4 b2.) |
	R1.*2 |
	r4 g-.(\p g-. g-. g-. g-.) |
	b1.\espressivo\fermata
}

fagottoI = \relative c' {\key f \major \clef bass
	R1. |
	d1.\< ~|
	d2.\! c |
	c\f e |
	f ~ f2\< f4 |
	e2(\sf d4) c2( bes4) |
	a( bes c) d( e f) |
	g f2 ~ f4\dim g,( bes\! |
	a) a\p a f( g2) |
	a2. f |
%11
	g a2 a4 |
	c4( g a) bes2( a4) |
	g2 g4 f2. |
	r r4 c'\p\< c |
	d2.\! c4 f,\mf f |
	r4 bes\cresc bes r es es |
	r f bes, r bes a |
	r bes, bes'\f a a g |
	f2 f4 e2 d4 |
	c2 r4 r4 r4 c'\p |
%21
	f( d) c b2 b4 |
	b( c) g\cresc c( a) g |
	f2 g4 a( d) d |
	d2 r4 r c\f c |
	e2.\sf e4 f c |
	c2 d4 e2. |
	d4 d cis d( b) c |
	c2( b4) c2. ~|
	c ~ c2 f,4 |
	e( f g a b c) |
%31
	d( c) c e2\sf f4 |
	e2 r4 r2. |
	R1. |
	r2. f\f |
	e2 c4 c2(\< d4)\! |
	e1.\p ~|
	e2. d ~|
	d cis |
	d2 r4 r2. |
	r4 r a d( bes) a |
%41
	g2 g4 c( a) g |
	fis2 a4(\p bes2) r4 |
	r r a ~ a2 r4 |
	r2. r4 r e' |
	e( f) r r r d |
	d2 r4 r r a,\cresc |
	bes c d e f g |
	a2 a4\f bes2. |
	b2 b4 c2. |
	cis2 d4\f cis( e) bes |
%51
	a2 d4 cis( e) f |
	a,2 r4 r2. |
	R1. |
	r4 r a\ff d-> d-> d-> |
	es2\sf es4 es2 c4 |
	bes d d es2.(\sf |
	d4) d d es2.(\sf |
	d2) d4\ff d d d |
	es2 es4 es2 es4 |
	d2 bes,4 bes bes bes |
%61
	b2 b4 b2 b4 |
	c c' c f2.\sf |
	c4 c c a2.\sf |
	g1.\f ~|
	g4 r r r2. |
	c,2.\p d |
	c f ~|
	f2 g4 a2. |
	R1. |
	r2. r4 r a4 |
%71
	g2( a4) bes2( c4) |
	d4 c2 ~ c2 f4\f |
	e2(\sf d4) c2( bes4) |
	a( bes c) d( e f) |
	g c,2 ~ c2. |
	c4 a\p a g2.\espressivo |
	a4 r r r2. |
	r4 r a\f c( g) a |
	bes2. ~ bes4 c c, |
	f1. ~|
%81
	f1. ~|
	f1.\p |
	R1.*2 |
	r4 a-.(\p a-. a-. a-. a-.) |
	a1.\espressivo\fermata |
}

fagottoII = \relative c' {\key f \major \clef bass
	r2. c\mf ~|
	c\< bes ~|
	bes1.\! |
	a2.\f bes |
	c a,\< |
	bes\sf c |
	f4( g a) bes2. ~|
	bes4 a2 ~ a4\dim g( bes |
	a) f\p f f( c2) |
	f2. f |
%11
	g a2 a4 |
	c4( g a) bes2( a4) |
	g2 g4 f2. |
	r r4 c'\p\< c |
	c2(\! bes4) c f,\mf f |
	r4 g\cresc g r f f |
	r f f r c c |
	r bes bes'\f a a g |
	f2 f4 e2 d4 |
	c2 r4 r2. |
%21
	R1. |
	r4 r e\cresc a( f) e |
	d2 e4 f2 fis4 |
	g2 r4 r a\f a |
	c2.\sf c4 a g |
	a2 b4 c2. |
	b4 bes a d,2 e4 |
	f g d e2. |
	f2. g2 f4 |
	e( f g a b c |
%31
	g) c c c2\sf b4 |
	c2 r4 r2. |
	R1. |
	r2. d\f |
	c2 a4\< g2.\! |
	c1.\p ~|
	c2. b ~|
	b a |
	bes2 r4 r2. |
	R1.*2 |
%42
	r4 r fis(\p g2) r4 |
	r r g( f2) r4 |
	r2. r4 r c' |
	c( f) r r r a, |
	b2 r4 r r  a,\cresc |
	bes c d e f g |
	a2 a4\f bes2. |
	b2 b4 c2. |
	cis2 d4\f g, g g |
%51
	a2 d4 g, g g |
	a2 r4 r2. |
	R1. |
	r4 r a\ff d-> d-> d-> |
	es2\sf es4 es2 c4 |
	bes d d es2.(\sf |
	d4) d d es2.(\sf |
	d2) bes4\ff bes bes bes |
	c2 c4 c2 c4 |
	bes2 bes,4 bes bes bes |
%61
	b2 b4 b2 b4 |
	c c' c f2.\sf |
	c4 c c f,2.\sf |
	e1.\f ~|
	e4 r r r2. |
	c2.\p ~ c2 bes4 |
	a2. c( |
	d2) e4 f2. |
	R1. |
	r2. r4 r f4 |
%71
	e2( fis4) g2( a4) |
	bes4 c2 ~ c2. |
	c2(\sf bes4) a2( g4) |
	f( g a) bes2. ~|
	bes4 a2 ~ a4 bes2 |
	a4 f\p f e2.\espressivo |
	f4 r r r2. |
	r4 r a\f c( g) a |
	bes2. ~ bes4 c c, |
	f,1. ~|
%81
	f1. ~|
	f1.\p |
	R1.*2 |
	r4 f'-.(\p f-. f-. f-. f-.) |
	f1.\espressivo\fermata |
}

cornoI = \relative c'' {\key c \major
	R1*3/2 |
	r2. c\mf |
	d1.\< |
	e2.\f r |
	g, c ~|
	c g |
	c, ~ c4 r r |
	r2. g'\dim |
	c,2\! r4 r2. |
	R1.*4 |
	r4 c'\p c e2.\espressivo |
	c2. ~ c4 c\mf c |
	r2. r4 g\cresc g |
	r c c r2. r4 r c\f g g g |
	g2 g4 g2 c4 |
	b2 r4 r2. |
	R1.*3 |
	r2. \clef bass r4 c,,\sf c |
	\clef treble g''2. g ~|
	g4 g g g2 r4 |
	r r e' e2 d4 |
	r d d g,2. ~|
	g ~ g4 r r |
	R1.*2 |
	r2. d\p\< |
	e1.\! ~|
	e2. d\f ~|
	d2 r4 r2. |
	R1.*16 |
	r4 e'\ff e f2.(\sf |
	e4) e e f2.(\sf |
	e2) e,4\ff e'-> e-> e-> |
	d2\sf d4 e2 e4 |
	f2 r4 r2. |
	R1. |
	r4 r d\ff d d d |
	d2 d4 c2 c4 |
	c2 r4 r2. |
	R1. |
	r4 d d e2.\sf |
	d4 d d e2.\sf |
	d1.\f |
	g, ~|
	g4 r4 r4 r2. |
	R1.*5 |
	r2. c\f ~|
	c g |
	c, ~ c4 r r |
	r2. g' |
	\clef bass c,,1.\p ~|
	c ~|
	c4 r r \clef treble g''2\f c4 |
	c2 r4 r g g |
	\clef bass c,,1. ~|
	c ~|
	c\p |
	R1.*2 |
	\clef treble r4 g''-.(\p g-. g-. g-. g-.) |
	g1.\espressivo\fermata |
}

cornoII = \relative c'' {\key c \major
	R1. |
	r2. c\mf ~|
	c\< bes |
	c\f r |
	g c, ~|
	c g |
	c ~ c4 r r |
	r2. g\dim |
	c2\! r4 r2. |
	R1.*4 |
	r4 c'\p c c2.\espressivo |
	c,2. ~ c4 c\mf c |
	r2. r4 e\cresc e |
	r c c r2. r4 r c\f g g g |
	g2 g4 g2 c4 |
	g'2 r4 r2. |
	R1.*3 |
	r2. \clef bass r4 c,,\sf c |
	\clef treble g'2. g ~|
	g4 g g g2 g'4 |
	d' d d c2 g4 |
	r d' d g,2. ~|
	g ~ g4 r r |
	R1.*2 |
	r2. d'\p ~|
	d\< c ~|
	c\! c\sf|
	b2 r4 r2. |
	R1.*16 |
	r4 e\ff e f2.(\sf e4) e e f2.(\sf |
	e2) e,4\ff c'-> c-> c-> |
	d2\sf d4 d2 cis4 |
	d2 r4 r2. |
	R1. |
	r4 r d\ff d d d |
	d2 d4 c,2 c4 |
	c2 r4 r2. |
	R1. |
	r4 g' g c2.\sf |
	g4 g g c2.\sf |
	g1.\f |
	g, ~ |
	g4 r4 r4 r2. |
	R1.*5 |
	r2. c\f ~|
	c g |
	c ~ c4 r r |
	r2. g |
	\clef bass c,,1.\p ~|
	c ~|
	c4 r r \clef treble g''2\f c4 |
	c2 r4 r g g |
	\clef bass c,,1. ~|
	c ~|
	c\p |
	R1.*2 |
	\clef treble r4 g''-.(\p g-. g-. g-. g-.) |
	g1.\espressivo\fermata |
}

violinI = \relative c' {\key f \major
	r4 c(\p c) r c( c) |
	r c( c) r d(\cresc d) |
	r d( d) r e( e)\! |
	r c(\f f) e( g bes) |
	c( f a)\< c c c |
	c2(\sf bes4) a2( g4) |
	f2. ~ f4( e d) |
	c( f c) a(\dim bes g) |
	f c\p c r d d |
	r c c r f f |
%11
	r d e r f( a) |
	g2. ~ g2 f4 |
	r g( bes,) a c c |
	r d d r f f |
	r d'\cresc d r f\mf f |
	bes2.\cresc a2. |
	bes,4 c d es2.-> |
	d2 d4\f f c c |
	c2 c4 c2 d4 |
	e e,\p e r e e |
%21
	r f f r b\cresc b |
	r g g r c c |
	r f e r d c |
	b2 r4 r c'\f c |
	e2.\sf c,4 d e |
	f2. e2 e4 |
	g d e f2 e4 |
	d2 d4 c2. ~|
	c2 c'4 c2\sf b4 |
	c2. ~ c4 b a |
%31
	g2. ~ g4 r r |
	r e,\p e r e e |
	r c c r a'\cresc a |
	r d, d r b'\f b |
	c2 c4 e2(\> d4)\! |
	c8 g,-. c(\p e) g( c) r e,-. g( c) dis( e) |
	r f,-. a( c) e( f) r f,-. b( d) e( f) |
	r gis,-. b( d) e( gis) r g,-. a( cis) e( g) |
	r d-. f( bes) cis( d) r bes,-. e( g) a( bes) |
	r a,-. cis( e) bes'( a) r a,-. d( fis) a( d) |
%41
	r g,,-. c( es) fis( g) r es-. c( e) a( c) |
	r a,-. d( fis) a( d,) r d-.\p-"sempre" g( bes) cis( d) |
	r e,-. a,( cis) e( a) r f,-. a( d) e( f) |
	r d,-. gis( b) d( gis) r e,-. a( c) g( a) |
	r a-. c( f) gis( a) r d,-. f( a) cis( d) |
	r b,-. e(\cresc gis) b( e,) r e,-. a( cis) e( a) |
	r d,,-. bes'( d) f( bes) r g,-. bes( g') bes( d)
	r cis,-. a( cis) e( a) d4(\f bes) a |
	g2\cresc g4 e'( c) bes |
	a4. a,8 d f e4 cis d |
%51
	a4. a8 d f e4 cis d |
	cis8-.\ff cis,-. e-. a-. cis-. e-. g-. d,-. g-. bes-. d-. g-. |
	e cis, e a cis e g d, g bes d g |
	e cis, e a cis e f(\ff d) f( d) f( d) |
	g( es) g( es) g( es) a( es) a( es) a( es) |
	d-. d,-. g-. bes-. d-. g-. es c, fis a c fis |
	g d, g bes d g es c a c fis a |
	bes g d\ff d g a bes( g) bes( g) bes( g) |
	c( g) c( g) c( g) c( es,) c'( es,) c'( es,) |
	d'-. bes-. f-. d-. bes-. c-. d( bes) d( bes) d( bes) |
%61
	g'-. g,-. b-. d-. g-. d-. f( d) f( d) f( d) |
	e g, c( d) e( c) r c,-.\f f-. a-. c-. f-. |
	e-. g,-. c( d) e( c) r f,-. a-. c-. f-. a-. |
	g-. g,-.\f c( d) e( g,) c( d) e( g,) c( d) |
	e( g,) c( d) e( g,) c(\dim d) e( g,) c( d) |
	e( g,)\p c( d) e( g,) d'( e) f( d) f( g) |
	a( c,) f( g) a( c,) f( g) a( c,) f( a) |
	bes( d c bes g e) c( a' g f c a) |
	g2. ~ g4 e( f) ~|
	 f f( e) f f f |
%71
	r g a r bes a |
	r4 g\cresc c f a c\f |
	c2(\sf bes4) a2( g4) |
	f2. ~ f4 e( d) |
	c( f) c a( bes) g |
	f c\p c r d d |
	r c c r g' g |
	r a'\f a g2 f4 |
	d'2 c4 bes( g4.) f8 |
	f1. ~|
%81
	f ~|
	f2(\p g4 a2.) |
	R1.*2 |
	r4 c,,(\p c) r c( c) |
	f1.\espressivo\fermata |
}

violinII = \relative c' {\key f \major
	r4 a(\p a) r a( a) |
	r a( a) r bes(\cresc bes) |
	r bes( bes) r bes( bes)\! |
	r a(\f c) bes( e g) |
	r c( f\< a) f f |
	f2.\sf ~ f2 e4 |
	f( d bes) bes2. ~|
	bes4( a c) f,(\dim g e) |
	f a,\p a r bes bes |
	r a a r c c |
%11
	r bes bes r c( f) |
	e2. d4( e) f |
	r f( e) f a, a |
	r bes bes r c c |
	r c\cresc bes r bes'\mf a |
	r bes\cresc bes f'2. |
	bes,4 a bes r g f |
	r d' bes\f c c bes |
	a2 as4 g2 b4 |
	c c,\p c r c c |
%21
	r a a r f'\cresc f |
	r e e r f g |
	r b c r b a |
	g g'\f g a2.\sf |
	g2. c,4 c c |
	c( a) g g c e |
	d g, g f( d') g, |
	a( g) g g2 g'4\f |
	g2\sf f4 e2 d4 |
	c d e f2. ~|
%31
	f4( e) c r2. |
	r4 c,\p c r c c |
	r a a r c\cresc c |
	r a a r d\f d |
	g2 fis4 g\> c( b)\! |
	c2 r4 g\p r r |
	a r r a r r |
	gis r r a r r |
	a r r g r r |
	g r r fis r r |
%41
	g r r c r r |
	a, r r bes r r |
	e r r d r r |
	d r gis a r e |
	a, r a' d, r a' |
	gis b e\cresc a( f) e |
	d2 d4 g( e) d |
	cis4. cis8-. a-. g-. f-.\f f-. bes( d) e( f) ~|
	f\cresc g,-. b( d) f( g) ~ g e,-. g( c) e( g) ~|
	g a,-. cis( e) a,( d) r g,-. cis( e) g( b) |
%51
	a a,, d( f) a( d)  bes-. bes-. e( g) bes( d) |
	a-.\ff a,,-. cis-. e-. a-. cis-. d-. bes,-. d-. g-. bes-. d-. |
	cis a, cis e a cis d bes, d g bes d |
	cis a, cis e a cis d(\ff a) d( a) d( a) |
	es'( bes) es( bes) es( bes) es( c) es( c) es( c) |
	g-. bes,-. d-. g-. bes-. d-. c c, c fis a c |
	bes bes, d g bes d c a fis a c fis |
	g d bes\f bes d fis g( d) g( d) g( d) |
	g( es) g( es) g( es) f( es) f( es) f( es)
	f-. f-. d-. bes-. f-. a-. bes( f) bes( f) a( f) |
%61
	g-. d-. g-. b-. d-. g,-. d'( g,) d'( g,) d'( g,) |
	g4 r r a,\f c8 f a c |
	c2 r4 c, f8-. a-. c-. f-. |
	e-. g,-.\f c( d) e( g,) c( d) e( g,) c( d) |
	e( g,-.) c( d) e( g,) c(\dim d) e( g,) c( d) |
	e( g,)\p c( d) e( g,) d'( e) f( d) f( g) |
	a( c,) f( g) a( c,) f( g) a( c,) f( a) |
	bes( d c bes g e) c( a' g f c a) |
	g2( e4) d2( c4) |
	d4( c2) r4 c c |
%71
	r e fis r g c, |
	r4 e\cresc g c f f\f |
	f2.\sf ~ f2( e4) |
	f( d) c bes2. ~|
	bes4( a) f f( g) e |
	f a,\p a r bes bes |
	r a a r e' e |
	r f'\f f e2 es4 |
	d2 fis,4 g( e4.) f8 |
	f1. ~|
%81
	f ~|
	f2(\p g4 a2.) |
	R1.*2 |
	r4 a,(\p a) r a( a) |
	c1.\espressivo\fermata |
}

viola = \relative c {\key f \major \clef alto
	r4 <c f>(\p^"divisi." <c f>) r <c f>( <c f>) |
	r f( f) r <d f>(\cresc <d f>) |
	r <d g>( <d g>) r <c g'>( <c g'>)\! |
	r f(\f a) r bes( e) |
	r a( c\< f) f f |
	e2(\f d4) c2( bes4) |
	a( bes c) d( e, f) |
	g( f) f f(\dim e bes)\! |
	a f\p f r <e g> <e g> |
	r f f r f f |
%11
	r g g r a( c) |
	c2. bes2( c4) |
	r c( bes ~ bes) f f |
	r f f r a a |
	r f' f r c'\mf f, |
	f2\cresc es4( es) es es |
	d f bes, r bes a |
	r bes f'\f f f e |
	f2 f4 g2 f4 |
	e g,\p g r g g |
%21
	r d' d r d\cresc d |
	r g g r a g |
	r f g r d' d |
	d2 r4 r <c e>\f <c e> |
	r4 c c c2 bes4 |
	a( c,) b c e g |
	g d cis d( c) d |
	c2 b4 c g' c\f |
	b2\sf a4 g2 f4 |
	e f g a d, d |
%31
	d( c) r r2. |
	r4 <e, g>\p <e g> r <e g> <e g> |
	r <c a'> <c a'> r <f a>\cresc <f a>\! |
	r f f r <g f'>\f <g f'> |
	<g e'>2 c4 c2(\> f4)\! |
	e,2 r4 e\p r r |
	c r r f r r |
	e r r cis r r |
	d r r d r r |
	cis r r d r r |
%41
	d r r c r r |
	fis r r g r r |
	a r r a r r |
	b r d e r c |
	c r c f, r d' |
	d r gis\cresc a r g |
	f r f bes r e, |
	e r8 a,-. g'-. e-. d\f-. d-. g( bes) cis( d) ~|
	d\cresc d,-. g( b) d( f) e-. c,-. e( g) c( e) ~|
	e e,-. a( g) f( a) g-. e-. g( e') bes( g) |
%51
	r f,-. a( d) f( a) e g bes4 d, |
	a8-.\ff e-. a-. cis-. e-. a-. bes4 <d, e> <d e> |
	<cis e>8 e, a cis e a bes4 <d, e> <d e> |
	<e cis>8 e, a c e a a(\ff f) a( f) a( f) |
	bes( g) bes( g) bes( g) c( a) c( a) c( a) |
	d, g, bes d g bes g4 <es c> <es c> |
	<d bes>8 g, bes d g bes g4 <es c> <es c> |
	<d bes>8 bes d\ff  g bes d d( bes) d( bes) d( bes) |
	es( bes) es( bes) es( bes) es( bes) es( bes) es( a,) |
	d-. d-. bes-. f-. d-. f-. f( d) f( d) f( d) |
%61
	d'-. b,-. d-. g-. g-. f-. g( f) g( f) g( f) |
	e4 r r f,\f a8 c f a |
	g2 r4 a, c8-. f-. a-. c-. |
	c-. g-.\f c( d) e( g,) c( d) e( g,) c( d) |
	e( g,-.) c( d) e( g,) c(\dim d) e( g,) c( d) |
	e4 r r r2. |
	R1. |
	r2. r4 r f,(\p |
	e2) c4 bes2 c4 |
	d( g, c) r f, f |
%71
	r <e' c> <es c> r <d bes> c |
	r c\cresc e f c' f\f |
	e2(\sf d4) c2( bes4) |
	a r r d,( e f) |
	g( f) f f( e) bes |
	a f\p f r e e |
	r f f r bes bes |
	r a\f a c( g) a |
	bes4 bes'( a) g c,2 |
	f,1. ~|
%81
	f ~|
	f1.\p |
	R1.*2 |
	r4 f(\p f) r f( f) |
	<a f>1.\espressivo\fermata |
}

soprano = \relative c'' {\key f \major \clef soprano
	R1.*12 |
	r2. r4 c\p c |
	d2.\espressivo c2 r4 |
	f, f bes bes2 a4 |
	r bes\cresc bes c2 f,4 |
	bes( c) d es2. |
	d2 d4\f f c, c |
	c2 c4 c2 d4 |
	e2 r4 r2. |
%21
	r2. r4 r d\p |
	g'4\cresc e d c2 c4 |
	f2 e4 d2 c4 |
	b g\f g a2. |
	g2 r4 c d e |
	f2. e2 e4 |
	a e f g2 f4 |
	d2 d4 c2. ~|
	c ~ c4 g b |
	c( d e f2.) ~|
%31
	f4( e) c e2 d4 |
	c2 r4 r2. |
	R1.*3 |
	r4 r c\p e c b |
	a2 a4 d( b) a |
	gis2 r4 a2. ~|
	a4( bes) a g2. ~|
	g4( a) g fis r c' |
%41
	bes c d es2. ~|
	es4( d) c bes2 bes4 |
	bes( a2) r4 r a\p |
	a( gis) f' e c b |
	a2 a4 d( b) a |
	gis2 gis4 a2. |
	R1. |
	r4 r a\cresc d bes a |
	g2 g4 e'( c) bes |
	a2 f'4\f e cis d |
%51
	a2 f'4 e( cis) d |
	cis2 r4 r2. |
	r4 cis4\ff cis d2.\f |
	cis2 a4 f' f f |
	bes,2 bes4 es2 es4 |
	d2 r4 r2. |
	R1. |
	r4 r d\ff d d d |
	es2 es4 es2 es4 |
	d2 d4 d d d |
%61
	g2 d4 f2 f4 |
	e2 r4 r c\f c |
	e2. c4 c c |
	e1. |
	c1. ~|
	c4 r4 r r2. |
	R1.*3 |
	r2. r4 r a\p |
%71
	c g a bes2 a4 |
	g2 g4 f2. ~|
	f a4(\f c) e |
	f2. ~ f4( e d |
	c2) f,4 a( g4.) f8 |
	f2 r4 r2. |
	r2. r4 r bes\p |
	a2. g2\< f4 |
	d2\f c4 bes( g4.) f8 |
	f4 c'\f c d2.\sf |
%81
	c2 r4 f g a |
	bes2. a2 a4\p |
	a g f f2 g4 |
	f2. e2. |
	f1. ~|
	f\fermata |
}

sopranoLyrics = \lyricmode {
	Wie der Hirsch schreit nach fri -- schem Was -- ser wie der Hirsch nach
	fri -- schem Was -- ser, so schreit mei -- ne See -- le, Gott, zu dir,
	so schreit mei -- ne See -- le, Gott, zu dir, zu dir, wie der Hirsch
	schreit nach fri -- schem Was -- ser, so schreit mei -- ne See -- le,
	Gott, zu dir. mei -- ne See -- le, Got, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, Gott, zu dir, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir. zu dir, so schreit mei -- ne See -- le, Gott,
	zu dir, zu dir, so schreit mei -- ne See -- le, Gott, zu dir, so schreit
	mei -- ne See -- le, Gott, zu dir, wie der Hirsch schreit, so schreit
	mei -- ne See -- le, Gott, zu dir, so schreit mei -- ne See -- le, Gott,
	zu dir, so schreit mei -- ne See -- le, Gott, zu dir, wie der Hirsch
	schreit, wie der Hirsch schreit, so schreit mei -- ne See -- le, Gott,
	zu dir, mei -- ne See -- le, Gott, zu dir, zu dir, mei -- ne See -- le,
	Gott, zu dir, wie der Hirsch schreit nach fri -- schem Was -- ser, so
	schreit mei -- ne See -- le, Gott, zu dir.
}

alto = \relative c' {\key f \major \clef soprano
	R1.*8 |
	r4 c\p c d2.\espressivo |
	c2 r4 f g a |
%11
	bes2. a2 a4 |
	c g a bes2 a4 |
	g2 g4 f2. |
	r4 f f a2.\espressivo |
	f2 r4 f f f |
	f2\cresc es4 a2. |
	bes4( a) bes g2( f4) |
	f2 f4\f f c' bes |
	a2 as4 g2 b4 |
	c2 d4\p c a g |
%21
	f2 a4 d( b) a |
	g2 r4 r a\cresc a |
	a( b) c c( b) a |
	g g\f g a2. |
	g4 c c c2( bes4) |
	a2 g4 g c g |
	g2. f4 r r |
	r2. r4 r4 c\f |
	b2( a4) g2 f4 |
	e( f) g a( b) c |
%31
	g2 r4 g2 g4 |
	g2 r4 r2. |
	R1.*5 |
	r4 r e'\p a f e |
	d2 d4 g( e) d |
	cis2 r4 d2. ~|
%41
	d4( es) d c2( c'4) ~|
	c( bes) a g2. ~|
	g4 r e\p a2 r4 |
	r r gis a2 r4 |
	R1. |
	r4 r e a\cresc f e |
	d2 d4 g( e) d |
	cis2(\cresc a'4) ~ a( g) f |
	f2. r4 g g |
	g2 f4\f g g g |
%51
	a2 a4 bes2 r4 |
	r a\ff a bes2.\sf |
	a4 a a bes2.\sf |
	a2 a4 a a a |
	g2 g4 a2 a4 |
	bes2 r4 r2. |
	R1. |
	r4 r bes\f bes bes bes |
	bes2 bes4 bes2 a4 |
	bes2 bes4 bes bes a |
%61
	g2 g4 d'2 g,4 |
	g g\f g a2. |
	g4 g g a2 a4 |
	g1. |
	g1. |
	r4 c,4\p c d2.\espressivo |
	c2 r4 f4 g a |
	bes2. a2 a4 |
	c g a bes2 a4 |
	g2 g4 f2. |
%71
	R1. |
	r2. r4 r c'4\f |
	c2( bes4) a2 g4 |
	f( g) a bes2. ~|
	bes4( a) f f( e4.) f8 |
	f2 r4 r2. |
	r4 r f\p e2. |
	r2. c'\f ~|
	c4( bes) a g( e4.) f8 |
	f4 f\f f d2.\sf |
%81
	f2 r4 d d f |
	d2( e4) f2 f4\p |
	d d d d2 d4 |
	c2. c2. |
	c1. ~|
	c\fermata |
}

altoLyrics = \lyricmode {
	Wie der Hirsch schreit nach fri -- schem Was -- ser, so schreit
	mei -- ne See -- le, Gott, zu dir, wie der Hirsch schreit nach
	fri -- schem Was -- ser, nach fri -- schem Was -- ser, so schreit
	mei -- ne See -- le, Got, zur dir. so schreit mei -- ne See --le, Gott,
	zu dir, mei -- ne See -- le, Gott, zu dir, wie der Hirsch nach
	fri -- schem Was -- ser, so schreit mei -- ne See -- le, so schreit
	mei -- ne See -- le, Gott, zu dir. Gott, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, Gott, zu dir, zu dir, zu dir, zu dir, so
	schreit mei -- ne See -- le, Gott, zu dir, zu dir, Gott, zu dir, so
	schreit mei -- ne See -- le, Gott, wie der Hirsch schreit, wie der
	Hirsch schreit, so schreit mei -- ne See -- le, Gott, zu dir, so
	schreit mei -- ne See -- le, Gott, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, wie der Hirsch schreit, wie der Hirsch, der
	Hirsch schreit, wie der Hirsch schreit nach fri -- schem Was -- ser,
	so schreit mei -- ne See -- le, Gott, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, zu dir, zu dir, Gott, zu dir, zu dir, wie der
	Hirsch schreit anch fri -- schem Was -- ser, so schreit mei -- ne
	See -- le, Gott, zu dir.
}

tenor = \relative c {\key f \major \clef tenor
	R1.*13 |
	r2. r4 c\p c |
	d2.\espressivo c2 r4 |
	bes4\cresc bes es es2.( |
	d4) c bes bes2 a4 |
	bes c d\f c f e |
	f2 c4 c2 f4 |
	e2 r4 r r c\p |
%21
	f d c b2 b4 |
	b( c) g\cresc c a g |
	f2 g4 a( d) d |
	d2 r4 r f\f f |
	e2. e4 f c |
	c2( d4) e2 e4 |
	d d cis d( b) c |
	c2 b4 c( e) g |
	g2( f4) e2 d4 |
	c2. c4 d d |
%31
	d( c) c c2 f4 |
	e2 r4 r2. |
	R1.*7 |
	r4 r a\p d bes a |
%41
	g2 g4 c( a) g |
	fis2 d'4 ~ d( cis d |
	e f) e d2 r4 |
	r r d\p e2. ~|
	e4( f e) d2. ~|
	d4( c) b a2 a4\cresc |
	d b a g2 g4 |
	g'( f) e d2.\cresc ~|
	d4 f f e2. ~|
	e2 d4\f cis e bes |
%51
	a2 a4 g'2 f4 |
	e2 r4 r2. |
	R1. |
	r4 r a,\ff d d d |
	es2 g4 g2 fis4 |
	g d d es2.\sf |
	d4 d d es2.\sf |
	d2 d4\ff d bes g |
	g'2 es4 c2 c4 |
	d2 f4 f f f |
%61
	d2 d4 d2 d4 |
	c e\f e f2. |
	e4 e e f2 f4 |
	e1. |
	e1. ~|
	e4 r r r2. |
	R1.*3 |
	r2. r4 r f\p |
%71
	e c es d2 c4 |
	bes2 bes4 a( c) f\f |
	e2( d4) c2 bes4 |
	a( bes) c d( e) f |
	c2 r4 c( bes4.) a8 |
	a2 r4 r r bes\p |
	a2. r2. |
	r4 r f'\f e2 es4 |
	d2. ~ d4 r r |
	r4 c\f c f2.\sf |
%81
	c2 r4 d d c |
	bes2. c2 c4\p |
	c bes a g2 bes4 |
	a2. bes2. |
	a1. ~|
	a\fermata |
}

tenorLyrics = \lyricmode {
	Wie der Hirsch schreit nach fris -- schem Was -- ser, nach fri -- schem
	Was -- ser, so schreit mei -- ne See -- le, Gott, zu dir. so schreit
	mei -- ne See -- le Gott, so schreit mei -- ne See -- le, Gott, zu dir,
	wie der Hirsch nach fri -- schem Was -- ser, so schreit mei -- ne
	See -- le, Gott, zu dir, so schreit mei -- ne See -- le, mei -- ne
	See -- le, Got, zu dir, so schreit mei -- ne See -- le, Gott, zu dir,
	Gott, zu dir, zu dir, Gott, zu dir, so schreit mei -- ne See -- le,
	Gott, zu dir, Gott, zu dir, so schreit mei -- ne See -- le, Gott, zu
	dir, so schreit mei -- ne See -- le, Gott, zu dir, wie der Hirsch
	schreit, wie der Hirsch schreit, so schreit mei -- ne See -- le, Gott,
	zu dir, so schreit mei -- ne See -- le, Gott, zu dir, wie der Hirsch
	schreit, wie der Hirsch, der Hirsch schreit, so schreit mei -- ne
	See -- le, Gott, zu dir, so schreit mei -- ne See -- le, Gott, zu dir,
	Gott, zu dir, zu dir, zu dir, zu dir, wie der Hirsch schreit nach
	fri -- schem Was -- ser, so schreit mei -- ne See -- le, Gott, zu dir.
}

basso = \relative c {\key f \major \clef bass
	R1.*14 |
	r2. r4 f\mf f |
	g2.\espressivo f2 r4 |
	f es d c2. |
	bes2 bes'4\f a a g |
	f2 f4 e2 d4 |
	c2. c2.\p |
%21
	d2. ~ d4 r d |
	e2 e4\cresc a f e |
	d2 e4 f2 fis4 |
	g2 r4 r f\f f |
	c'2. c4 a g |
	a2( b4) c2 c4 |
	b bes a d,2 e4 |
	f( g) d e2. |
	f g |
	a a4 d c |
%31
	b( c) e, g2 g4 |
	c,2 r4 r2. |
	R1.*9 |
%42
	r4 r d\p g e d |
	c2 c4 f( d) c |
	b2 r4 c2 c4 |
	f2. ~ f4 f f |
	e2( d4) cis2 a4\cresc |
	bes c d e f g |
	a2 a4\cresc bes2. |
	b2 b4 c2.( |
	cis2) d4\f e, e e |
%51
	f2 f4 g2 g4 |
	a2 r4 r2. |
	R1. |
	r4 r a\ff d d d |
	d2 d4 c2 c4 |
	bes2 r4 r2. |
	r4 bes bes c2.\sf |
	bes2 g4\ff g g g |
	c,2 c4 f2 f4 |
	bes2 bes4 bes bes bes |
%61
	b2 b4 b2 b4 |
	c2 r4 r f,\f f |
	c'2. f,4 f f |
	c1. |
	c1. |
	r4 c\p c d2.\espressivo |
	c2 r4 f g a |
	bes2. a2 a4 |
	c g a bes2 a4 |
	g2 g4 f2. |
%71
	R1. |
	r2. a\f |
	bes c2 c,4 |
	d2. ~ d4( g f |
	e f) a, c2 c4 |
	f2 f4\p e2. |
	R1. |
	r4 r a\f c g a |
	bes2. ~ bes4 c bes |
	a a\f a bes2.\sf |
%81
	a2 r4 bes bes a |
	g2. f2 a,4\p |
	bes bes bes bes2 bes4 |
	c2. c2. |
	f1. ~|
	f\fermata |
}

bassoLyrics = \lyricmode {
	Wie der Hirsch schreit nach fri -- schem Was -- ser, so schreit
	mei -- ne See -- le, Gott, zu dir, zu dir, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, wie der Hirsch nach fri -- schem Was -- ser,
	so schreit mei -- ne See -- le, Gott, zu dir, mei -- ne See -- le,
	mei -- ne See -- le, Gott, zu dir. so schreit mei -- ne See -- le, Gott,
	zu dir, Gott, zu dir, mei -- ne See -- le, so schreit mei -- ne
	See -- le zu dir, zu dir, Gott, zu dir, so schreit mei -- ne See -- le,
	Gott, zu dir, so schreit mei -- ne See -- le, Gott, zu dir, wie der
	Hirsch schreit, so schreit mei -- ne See -- le, Gott, zu dir, so schreit
	mei -- ne See -- le, Gott, zu dir, wie der Hirsch schreit, wie der
	Hirsch schreit, wie der Hirsch schreit nach fri -- schem Was -- ser, so
	schreit mei -- ne See -- le, Gott, zu dir, so schreit mei -- ne
	See -- le, Gott, zu dir, zu dir, so schreit mei -- ne See -- le zu dir,
	wie der Hirsch schreit nach fri -- schem Was -- ser, so schreit
	mei -- ne See -- le, Gott, zu dir.
}

bass = \relative c, {\key f \major \clef bass
	f2\p r4 f2 r4 |
	f2 r4 f2\cresc r4 |
	f2 r4 f2 r4\! |
	f2.\f g |
	a1. |
	bes2. c |
	d2. ~ d4( g f) |
	e( f) a, c2\dim c,4\! |
	f1.\p ~|
	f2. a |
%11
	g f2 f'4 |
	bes,2. g2 a4 |
	bes2 c4 f,2 r4 |
	f2 r4 f2 r4 |
	f2 r4 r4 f'4\mf\< f\> |
	g2.\! f |
	f4\cresc es d c2. |
	bes2 bes'4\f a a g |
	f2 f4 e2 d4 |
	c2 r4 c2\p r4 |
%21
	d2 r4 d2 r4 |
	e2 e4\cresc a f e |
	d2 e4 f2 fis4 |
	g2 r4 r4 f,\f f |
	c'2.\sf c\espressivo |
	c\espressivo ~ c2 c'4 |
	b bes a d,2 e4 |
	f( g) d e2. |
	f g2 g,4 |
	a2. ~ a4 d c |
%31
	b c e g2 r4 |
	c,2 r4 c2\p r4 |
	c2 r4 c2\cresc r4 |
	c2 r4 c2.\f^\markup {\dynamic sf} ~|
	c4 e a g2\> g,4\! |
	c2 r4 c\p-"senza Organo" r r |
	f r r d r r |
	e r r a, r r |
	bes r r e r r |
	a r r d, r r |
%41
	es r r a, r r |
	r r d\p g e d |
	cis2 cis4 f( d) c |
	b2 r4 c r c |
	f r r r r f |
	e2 d4 cis2 a4\cresc |
	bes c d e f g |
	a2 a4\cresc bes2. |
	b2 b4 c2.( |
	cis2) d,4\f e\cresc e e |
%51
	f2 f4 g g g |
	a2.\ff r4 g g |
	a2. r4 g, g |
	a2 a'4\ff d d d |
	d2 d4 c2 c4 |
	bes2 r4 r c, c |
	g2. r4 c c |
	g'2 g4\f g g g |
	c,2 c4 f2 f4 |
	bes,2 bes4 bes bes bes |
%61
	b2 b4 b2 b4 |
	c2 r4 r f,\f f |
	c'2. r4 f,4 f |
	c'1.\sf-"coll Organo" |
	c1.\sf ~ |
	c2. f,\p ~|
	f a |
	g f |
	c' g2 a4 |
	bes( c) bes a2 f4 |
%71
	c'2 r4 g'2 a4 |
	bes\cresc c bes, a2.\f |
	bes c |
	d ~ d4 g f |
	e( f) a, c2. |
	f,2 r4 f2\p r4 |
	f2 r4 f2 r4 |
	f1.\f |
	bes2. ~ bes4 c bes |
	a2 r4 bes2 r4 |
%81
	f2 r4 r2. |
	R1.*3 |
	f2\p r4 f2 r4 |
	f1.\espressivo\fermata |
}
