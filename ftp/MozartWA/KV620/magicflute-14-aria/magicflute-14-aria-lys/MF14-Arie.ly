\version "2.14.2"

markings = {\time 4/4 s1*99 \bar "|."}
incmidi = "midi.ly"

flautoI = \relative c''' {
	\key f \major
	r1
	d\sfp
	r
	r2 a\f
	r cis
	r d\f
% 2
	R1*3
	r4 c\f( d e)
	f r r2
	R1*2
	r4 bes,2\mf bes4

	r1
	r4 a2\fp a4
	bes r r2
	R1*7
	r8 c8-.\p c-. c-. c-. c-. c-. c-.
	f2 r
	r8 a,-. a-. a-. a-. a-. a-. a-.
	d2 r
	r1
	r2 c8 r d r
	
	c4 r c8 r d r
	c4 r r2
	R1*3
	r8 c-. c-. c-. c-. c-. c-. c-.
	f2 r
	r8 a,-. a-. a-. a-. a-. a-. a-.

	d2 r
	r1
	r2 c8-. r d-. r
	c4 r c8-. r d-. r
	c4 r r2
	r1
	a1\f ~
	a4 a8. a16 c4 c8. c16
% 4
	f,4 r r e'(
	f) r r e(
	f) d8 f bes, d g, bes
	e,4 c' bes g
	f r r2
	f'1\f
	r

	f\f
	r
	f\f
	r
	f\f
	ees2\fp( c
	a d)
% 5
	g,4 r r2
	g'1\f
	r
	g\f
	f2\fp( d
	b e)
	a,4 a2\sf a4

	R1*9
	r8 d,-.\p f-. a-. d-. a-. d-. c-.
	bes-. g-. c-. bes-. a-. f-. bes-. a-.
	g-. e-. a-. g-. f-. a-. d,-. f-.
	ees1 ~
	ees2.\cresc( d4)
% 6
	cis4 a'\f a r
	r cis cis r
	r e e r
	r1
	r4 bes2 bes4
	a2 r^\fermata
	r d\f
	r f\f
	r f\f

	g4 f g f
	g r r2
	r4 r8. e16 e4 r8. f16
	f2 r
	r1
	r2 cis
	d8( cis d e f fis g gis)
	a4 r a, r
	d2 r
}

flautoII = \relative c''' {
	\key f \major
	r1
	d
	r
	r2 f,
	r bes\f
	r a
% 2
	R1*3
	r4 c( b bes)
	a r r2
	R1*2
	r4 g2 g4

	r1 
	r4 f2 f4
	f r r2
	R1*7
	r8 g-. g-. g-. g-. g-. g-. g-.
	a2 r
	r8 e-. e-. e-. e-. e-. e-. e-.
	f2 r
	r1
	r2 a8 r bes r
	
	a4 r a8 r bes r
	a4 r r2
	R1*3
	r8 g-. g-. g-. g-. g-. g-. g-.
	a2 r
	r8 e-. e-. e-. e-. e-. e-. e-.

	f2 r
	r1
	r2
	a8 r bes r
	a4 r a8 r bes r
	a4 r r2
	r1
	f1 ~
	f4 a8. a16 g4 g8. g16
% 4
	f4 r r bes(
	a) r r bes(
	a) d8 f bes, d g, bes
	e,4 a g e
	f r r2
	f1
	r

	f
	r
	f
	r
	f
	r r
% 5
	g4 r r2
	g1
	r
	g
	R1*2
	r4 a2 a4

	R1*14
% 6
	r4 e e r
	r a a r
	r cis cis r
	r1
	r4 bes2 bes4
	a2 r
	r d
	r f
	r d

	ees4 d ees d
	ees r r2
	r4 r8. cis16 cis4 r8. d16
	d2 r
	r1
	r2 cis
	d8 cis d e f fis g gis
	a4 r a, r
	a2 r
}

oboeI = \relative c''' {
	\key f \major
	r1
	a\sfp
	r
	r2 d,\f
	r g\f
	r f\f
% 2
	R1*3
	r4 c\f( d e)
	f r r2
	R1*2
	r4 d2\mf d4

	r1 r4 c2\fp c4
	d r r2
	R1*7
	r8 e-.\p e-. e-. e-. e-. e-. e-.
	d2 r
	r8 c-. c-. c-. c-. c-. c-. c-.
	bes2 r 
	r1
	r2 f'8 r f r
	
	f4 r f8 r f r
	f4 r r2
	R1*3
	r8 e-. e-. e-. e-. e-. e-. e-.
	d2 r
	r8 c-. c-. c-. c-. c-. c-. c-.
	
	bes2 r
	r1
	r2 f'8-. r f-. r
	f4 r f8-. r f-. r
	f4 r r2
	r1
	c1\f ~
	c4 f8. f16 e4 e8. e16
% 4
	f4 r r g(
	f) r r g(
	f) d8 f bes, d g, bes
	e,4 c' d e
	f r r2
	f1\f r
	
	f\f
	r
	f\f
	r
	f\f
	ees2\fp( c 
	a d)
% 5
	g,4 r r2
	g'1\f
	r
	g\f
	f2\fp( d
	b e)
	a,4 e'2\sf e4

	R1*14
% 6
	r4 cis\f cis r
	r e e r
	r a a r
	r1
	r4 g2 g4
	g2 r^\fermata
	r d\f
	r f\f
	r f\f

	g4 f g f
	g r r2
	r4 r8. bes16 bes4 r8. b16
	b2 r
	r1
	r2 g
	f8( cis d e f fis g gis)
	a4 r a r 
	f2 r
}

oboeII = \relative c'' {
	\key f \major
	r1
	f
	r
	r2 a,
	r cis
	r d
% 2
	R1*3
	r4 c( b bes)
	a r r2
	R1*2
	r4 bes2 bes4

	r1 r4 a2 a4
	bes r r2
	R1*27
	a1 ~
	a4 c8. c16 bes4 bes8. bes16
% 4
	a4 r r bes(
	a) r r bes(
	a) d8 f bes, d g, bes
	e,4 a bes g
	a r r2
	f1
	r

	f
	r
	f
	r
	f
	R1*3
	g1
	r
	g
	R1*2
	r4 cis2 cis4

	R1*14
% 6
	r4 a a r
	r cis cis r
	r e e r
	r1
	r4 d cis d
	e2 r
	r d
	r f
	r d

	ees4 d ees d
	ees r r2
	r4 r8. e16 e4 r8. f16
	f2 r
	r1
	r2 e
	d8 cis d e f fis g gis
	a4 r a, r
	d2 r
}

fagottoI = \relative c' {
	\key f \major
	r1
	f\sfp
	r
	r2 d\f
	r cis\f
	r f\f
% 2
	R1*3
	r4 c\f( d e)
	f r r2
	R1*2
	r4 g2\mf g4

	r1
	r4 c,2\fp c4
	d r r2
	R1*27
	c1\f ~
	c4 c8. c16
	c,4 c8. c16
% 4
	f4 r r c
	f r r c
	f d'8 f bes, d g, bes
	e,4 f bes, c
	f, r r2
	r8 a'8\f bes c d c d bes
	a4 r r2

	r8 a\f bes c d c d bes
	a4 r r2
	r8 a\f bes c d c d bes
	a4 r r2
	r8 a\f bes c d c d bes
	ees2( c 
	a d)
% 5
	g,4 r r2
	r8 bes\f c d ees d ees c
	bes4 r r2
	r8 bes\f c d ees d ees c
	f2( d
	b e)
	a,4 e'2\sf e4

	R1*14
% 6
	r4 e\f e r
	r e e r
	r e e r
	r1
	r4 d cis d
	e2 r^\fermata
	r d\f
	r f\f
	r d\f

	ees4 d ees d
	ees r r2
	r4 r8. g,16 g4 r8. gis16
	gis2 r
	r1
	r2 a
	bes2. b4
	a r a r
	d,2 r
}

fagottoII = \relative c' {
	\key f \major
	r1
	d
	r
	r2 a
	r bes
	r d
% 2
	R1*3
	r4 c( b bes)
	a r r2
	R1*2
	r4 bes2 bes4

	r1 r4 a2 a4
	bes r r2
	R1*27
	c1 ~
	c4 c8. c16 c,4 c8. c16
% 4
	f4 r r c
	f r r c
	f d'8 f bes, d g, bes
	e,4 f bes, c
	f, r r2
	r8 f' g a bes a bes g
	f4 r r2

	r8 f g a bes a bes g
	f4 r r2
	r8 f g a bes a bes g
	f4 r r2
	r8 f g a bes a bes g
	fis4\fp r r2
	R1*2
	r8 g a bes c bes c a
	g4 r r2
	r8 g a bes c bes c a
	gis4\fp r r2
	r1
	r4 cis2 cis4

	R1*14
% 6
	r4 cis cis r
	r cis cis r
	r cis cis r
	r1
	r4 bes2 bes4
	a2 r
	r d,
	r f
	r f

	g4 f g f
	g r r2
	r4 r8. g16 g4 r8. gis16
	gis2 r
	r1
	r2 a
	bes2. b4
	a r a r 
	d,2 r
}

cornifI = \relative c'' {
	r1
	e\sfp
	r
	r2 c\f
	r f
	r e\f
% 2
	R1*3
	r2 r4 g,4\f
	g2 r
	R1*4

	r4 c2\fp c4
	c r r2
	R1*27
	e1\f ~
	e4 e8. e16 d4 d8. d16
% 4
	c4 r r d
	e r r d
	e r r2
	r4 g f d
	c r r2
	c1\f
	r

	c\f
	r
	c\f
	r
	c\f
	R1*3
	d1\f
	r
	d\f
	R1*2
	r4 e2\sf e4

	R1*14
% 6
	r4 e\f e r
	r e e r
	r e e r
	r1
	r4 d2 d4
	d2 r^\fermata
	r1
	r2 c\f 
	r c\f

	d4 c d c
	d r r2
	r4 r8. d16 d4 r8. c16\f
	c2 r
	r1
	r2 e
	r1
	c4 r e r
	c2 r
}

cornifII = \relative c' {
	r1
	e
	r
	r2 c
	r d'\f
	r e,
% 2
	R1*3
	r2 r4 g4
	g2 r 
	R1*4

	r4 c,2 c4
	c r r2
	R1*27
	c'1 ~
	c4 c8. c16 g4 g8. g16
% 4
	e4 r r g
	c r r g
	c r r2
	r4 e d g,
	e r r2
	c1
	r

	c
	r
	c
	r
	c
	R1*3
	d'1
	r
	d
	R1*2
	r4 e,2 e4

	R1*14
% 6
	r4 e e r
	r e e r
	r e e r
	r1
	r4 d'2 d4
	d2 r
	r1
	r2 c,
	r c'

	d4 c d c
	d r r2
	r4 r8. d16 d4 r8. c,16
	c2 r
	r1
	r2 e
	r1
	e4 r e r
	e2 r
}

trombedI = \relative c'' {
	r1
	c\sfp
	r
	r2 g\f
	r1
	r2 c\f
% 2
	R1*60
	r4 g2\sf g4

	R1*14
% 6
	r4 g\f g r
	r g g r
	r g g r
	R1*2
	g2 r^\fermata
	r c\f
	r c\f

	R1*3
	r2 r4 r8. c16\f
	c2 r
	r1
	r2 g
	c8 c c c c c c c
	c4 r g r
	g2 r
}

trombedII = \relative c' {
	r1
	c
	r
	r2 c
	r1
	r2 c
% 2
	R1*60
	r4 g2 g4

	R1*14
% 6
	r4 g g r
	r g g r
	r g g r
	R1*2
	g2 r
	r c
	r c

	R1*3
	r2 r4 r8. c16
	c2 r
	r1
	r2 g
	c8 c c c c c c c
	c4 r g r
	c2 r
}

timpanida = \relative c {
	r1
	d4\f r r2
	r1
	r2 d4\f r
	r1
	r2 d4\f r
% 2
	R1*60
	r4 a8.\sf a16 a4 a

	R1*14
% 6
	r4 a\f a r
	r a a r
	r a a r
	R1*2
	a4 r r2^\fermata
	r d4\f r
	r2 d4\f r
	R1*3
	r2 r4 r8. d16\f
	d2 r
	r1
	r2 a4 r
	d1\trill
	a4 r a r
	d2 r	
}

violinoI = \relative c' {
	\key f \major
	d16\p d d d d d d d d d d d d d d d
	d\sf d d d d d d d d\p d d d d d d d
	d'8 r a r f' r e r
	d4 r f\f( e16 d cis d)
	cis4\p r g'\f( f16 e d e)
	d4\p r a'\f( g16 f e d)
% 2
	ees8\fp ees ees ees fis\fp fis fis fis
	g\p g a a bes\cresc bes4 bes8\! ~
	bes\p bes g g ees ees d d
	cis4 a,\f( gis g)
	<a f'>2\fp a'4-. c-.
	f-. a,-. c-. f-.
	a8( g) f-. e-. d-. c-. bes-. a-.
	bes\cresc g bes d g bes, d g\!

	bes\p( a) g-. f-. e-. d-. c-. bes-.
	a\cresc f a c f a c f,\!
	bes4\p bes, d f
	bes8\fp bes bes bes a\fp a a a 
	aes-. aes4( f8) aes8-. aes4( f8)
	e c,\sf( b c b c) r c'\p(
	f4.) \acciaccatura {g32[ f e]}
	f8( g4.) \acciaccatura {a32[ g f]}
	g8(
	a) c,,\sf( b c b c) r c'\p(
% 3
	f4.) \acciaccatura {g32[ f e]}
	f8( e4.) \acciaccatura {a32[ g f]}
	e8(
	a) a-. a-. a-. a-. a-. a-. a-.
	g2 r
	r8 f-. f-. f-. f-. f-. f-. f-.
	e2 r
	r8 d-. d-. d-. d-. d-. d-. d-.
	c4 r c r
	c r r2

	r1
	r2 f8\fp f f f
	g\fp g g g bes\fp bes bes bes
	c,\f c4\p c c8( d e)
	f-. a-. a-. a-. a-. a-. a-. a-.
	g2 r
	r8 f-. f-. f-. f-. f-. f-. f-.
	e2 r

	r8 d-. d-. d-. d-. d-. d-. d-.
	c4 r c r
	c r r2
	r1
	r2 f8\fp f f f 
	g\fp g g g aes\fp aes aes aes
	a\cresc a c, c f f a a 
	c4\f r <g, bes e> r
% 4
	f'16( c d e f g a bes) c( bes a g) a( g f e)
	f( c d e f g a bes) c( bes a g) a( g f e)
	f f a a d, d f f bes, bes d d g, g bes bes
	e,4 <f c' a'> <f d' bes'> <e c' g'>
	f'16\p f f f f f f f f f f f f f f f
	f\f f f f f f f f f f f f f f f f
	f\p f f f f f f f f f f f f f f f

	f\f f f f f f f f f f f f f f f f
	f\p f f f f f f f f f f f f f f f
	f\f f f f f f f f f f f f f f f f
	f\p f f f f f f f f f f f f f f f
	f\f f f f f f f f f f f f f f f f
	ees\fp ees ees ees ees ees ees ees c c c c c c c c 
	a a a a a a a a d d d d d d d d
% 5
	g g g g g g g g g g g g g g g g
	g\f g g g g g g g g g g g g g g g
	g\p g g g g g g g g g g g g g g g
	g\f g g g g g g g g g g g g g g g
	f\fp f f f f f f f d d d d d d d d
	b b b b b b b b e e e e e e e e
	a,4 a2\sf a4 ~

	a e\p e e
	r f f f
	r e e e
	r f f f
	r e e e
	f8 d'-. f-. a-. d-. a-. bes-. g-. 
	a4 r a,8-. r bes-. r

	a-. d-. f-. a-. d-. a-. bes-. g-.
	a4 r a,8 r bes r
	a4 r r d8 r
	d r c r c r bes r
	bes r a r a4 r
	ees16 ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees
	ees ees ees ees ees ees ees ees ees\cresc ees ees ees d d d d
% 6
	cis4 <e cis' a'>\f a, r
	r <e' cis' a'> a, r
	r <e' cis' a'> a, r
	r1
	r4 g'16 g g g e e e e d d d d
	cis2 r^\fermata
	r4 r8 \times 2/3 {a'16\f( b cis} d2)
	r4 r8 \times 2/3 {cis16\f( d e} f2)
	r d,\sf

	ees16^\markup{\italic "sopra una corda"} g f ees d f ees d ees g f ees d f ees d
	ees4 r r2
	r4 r8. <e' cis'>16 <e cis'>4 r8. <f d'>16
	<f d'>2 r
	r1
	r2 <a, e' cis'>2
	d'8 d4 d d d8 ~
	d4 r <e,, cis' a'> r
	<d d'>2 r
}

violinoII = \relative c' {
	\key f \major
	a16\p a a a a a a a a a a a a a a a
	a\sf a a a a a a a a\p a a a a a a a 
	f'8 r f r d' r cis r
	d4 r a,16\f a a a a a a a
	g'4\p r cis,16\f cis cis cis cis cis cis cis
	a'4\p r d,16\f d d d d d d d
% 2
	bes'8\fp bes bes bes c\fp c c c
	d\p d d d d\cresc d4 d8(\!
	ees)\p ees bes bes g g f f
	e4 a,\f( gis g) c16\fp c c c c c c c c c c c c c c c
	c c c c c c c c c c c c c c c c
	c c c c c c c c c c c c c c c c
	d\cresc d d d d d d d d d d d d d d d\!
	
	c16\p c c c c c c c c c c c c c c c
	c\cresc c c c c c c c c c c c c c c c\!
	d4\p r r2
	f'8\fp f f f f\fp f f f 
	f,8-. f4( aes8) f-. f4( aes8)
	g c,\sf( b c b c) r e\p(
	c'4) r8 a( bes4) r8 e,(
	f) c\sf( b c b c) r e\p(
% 3
	c'4) r8 a( bes4) r8 e,(
	f) c'-. c-. c-. c-. c-. c-. c-.
	c2 r
	r8 a-. a-. a-. a-. a-. a-. a-.
	a2 r
	r8 f-. f-. f-. f-. f-. f-. f-.
	f4 r g r
	a r r2

	r1
	r2 a8\fp a a a 
	d\fp d d d g\fp g g g 
	g,8\f g4\p g g8( a bes)
	a-. c-. c-. c-. c-. c-. c-. c-.
	c2 r
	r8 a-. a-. a-. a-. a-. a-. a-.
	a2 r

	r8 f-. f-. f-. f-. f-. f-. f-.
	f4 r g r
	a r r2
	r1
	r2 f'8\fp f f f
	f\fp f f f f\fp f f f
	f\cresc f a, a c c f f 
	a4\f r <g, bes e> r
% 4
	f'16( c d e f g a bes) c( bes a g) a( g f e)
	f( c d e f g a bes) c( bes a g) a( g f e)
	f16 f a a d, d f f bes, bes d d g, g bes bes
	e,4 <f c' a'> <f d' bes'> <e c' g'>
	<f c' f> r r2
	r8 a,\f bes c d c d bes
	a a'\p bes c d c d bes

	a a,\f bes c d c d bes
	a a'\p bes c d c d bes
	a a,\f bes c d c d bes
	a a'\p bes c d c d bes
	a a,\f bes c d c d bes
	c16\fp c c c c c c c ees ees ees ees ees ees ees ees
	c c c c c c c c c c c c c c c c
% 5
	bes8 bes'-. c-. d-. ees-. d-. ees-. c-.
	bes-. bes,\f c d ees d ees c
	bes bes'\p c d ees d ees c
	bes bes,\f c d ees d ees c
	d16\fp d d d d d d d f f f f f f f f
	d d d d d d d d d d d d d d d d 
	cis4 <cis\sf e>2 <cis e>4 ~
	
	<cis e> cis\p cis cis
	r d d d
	r cis cis cis
	r d d d
	r cis cis cis
	d r a'8-. r bes-. r
	a4 r f8-. r g-. r

	f4 r a8 r bes r
	a4 r f8 r g r
	f4 r r a8 r
	bes r g r a r f r
	g r e r f4 r
	bes,16 bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes
	bes bes bes bes bes bes bes bes bes_\markup{\italic "cresc."} bes bes bes b b b b
% 6
	a4 <e' cis' a'>\f a, r
	r <e' cis' a'> a, r
	r <e' cis' a'> a, r
	r1
	r4 g'16 g g g e e e e d d d d
	cis2 r^\fermata
	r4 r8 \times 2/3 {a'16\f( b cis} d2)
	r4 r8 \times 2/3 {cis16\f( d e} f2)
	r d,\sf

	ees16^\markup{\italic "sopra una corda"} g f ees d f ees d ees g f ees d f ees d
	ees4 r r2
	r4 r8. <cis' e>16 <cis e>4 r8. <d f>16
	<d f>2 r
	r1
	r2 <a g'>
	f'8 cis16 cis d d e e f f fis fis g g gis gis
	a4 r <e, cis' a'> r 
	<d d'>2 r
}

viola = \relative c {
	\key f \major
	f16\p f f f f f f f f f f f f f f f
	f\sf f f f f f f f f\p f f f f f f f 
	a8 r d r a' r g r
	f4 r f16\f f f f f f f f
	e4\p r g16\f g g g g g g g
	f4\p r a16\f a a a a a a a
% 2
	g8\fp g g g a\fp a a a
	bes bes fis fis g g\cresc g g\!
	g\p g g g g g b b 
	a4 a,\f( gis g)
	a16\fp a a a a a a a a a a a a a a a
	a a a a a a a a a a a a a a a a
	a a a a a a a a a a a a a a a a
	g\cresc g g g g g g g bes bes bes bes bes bes bes bes\!

	g\p g g g g g g g g g g g g g g g
	f\cresc f f f f f f f a a a a a a a a\!
	bes4\p r r2
	d8\fp d d d c\fp c c c
	d d d d d d d d
	e c\sf( b c b c bes\p g)
	a-. c-. a-. f-. e-. g-. e-. c-.
	f c'\sf( b c b c bes\p g)
% 3
	a-. c-. a-. f-. e-. g-. e-. c-.
	f-. f'-. f-. f-. f-. f-. f-. f-.
	e2 r
	r8 d-. d-. d-. d-. d-. d-. d-.
	c2 r
	r8 bes-. bes-. bes-. bes-. bes-. bes-. bes-.
	a4 r e' r
	f r r2

	r1
	r2
	f8\fp f f f 
	bes\fp bes bes bes d\fp d d d 
	e,\f e4\p e e8( f g)
	f-. f-. f-. f-. f-. f-. f-. f-.
	e2 r
	r8 d-. d-. d-. d-. d-. d-. d-.
	c2 r
	
	r8 bes-. bes-. bes-. bes-. bes-. bes-. bes-.
	a4 r e' r
	f r r2
	r1
	r2 c'8\fp c c c
	d\fp d d d d\fp d d d 
	c\cresc c c c a a f f
	c4\f r <c, c'> r
% 4
	f'4 r r c
	f r r c
	f d'8 f bes, d g, bes
	e,4 f bes, c
	f, r r2
	r8 f\f g a bes a bes g
	f f'\p g a bes a bes g

	f f,\f g a bes a bes g
	f f'\p g a bes a bes g
	f f,\f g a bes a bes g
	f f'\p g a bes a bes g
	f f,\f g a bes a bes g
	a16\fp a a a a a a a a a a a a a a a
	d d d d d d d d d d d d d d d d
% 5
	g,8 g'-. a-. bes-. c-. bes-. c-. a-.
	g-. g,\f a bes c bes c a
	g g'\p a bes c bes c a
	g g,\f a bes c bes c a
	b16\fp b b b b b b b b b b b b b b b
	e e e e e e e e e e e e e e e e
	e8 a cis\sf a e a cis, e

	a,4 a\p a a
	r a a a
	r a a a
	r a a a
	r a a a
	a r f'8-. r g-. r
	f4 r d8 r d r

	d4 r f8 r g r
	f4 r d8 r d r
	d4 r r f8 r
	g r e r f r d r
	e r cis r d4 r
	g,16 g g g g g g g g g g g g g g g
	g g g g g g g g g\cresc g g g f f f f
% 6
	e4 a'\f a, r
	r a' a, r
	r a' a, r
	r1
	r4 g e d
	cis2 r^\fermata
	r4 r8 \times 2/3 {a'16\f( b cis} d2)
	r4 r8 \times 2/3 {cis16\f( d e} f2)
	r f,\sf

	g8 g f f g g f f
	g4 r r2
	r4 r8. bes'16 bes4 r8. b16
	b2 r
	r1
	r2 e,
	d8 cis16 cis d d e e f f fis fis g g gis gis
	a4 r a, r
	<d, d'>2 r
}

konigindernacht = \relative c'' {
	\key f \major
 \unset melismaBusyProperties 
	r1
	r2 r8 a a a
	d4. a8 f' f e e
	d4 a r2
	g'2 r4 e8 cis
	a'4 d, r2
% 2
	ees2 fis4. fis8
	g4 a bes2 ~
	bes4 g ees d
	cis r r2
	f, a4 c
	f2 r4 r8 c
	a'( g) f( e) d( c) bes( a)
	bes4 g' r r8 g

	bes( a) g( f) e( d) c( bes)
	a4 f' r2
	r4 bes, d f 
	bes2 a
	aes4. f8 aes4. f8
	e2 r4 c
	f2 g
	a r4 c,8 c
% 3
	f4. f8 g4. g8
	a2\melisma r4 \acciaccatura g8
 a16( g a bes)
	c8-. c-. c-. c-. c-. c-. c-. c-.
	f,2 r4 \acciaccatura g8
 f16( e f g)
	a8-. a-. a-. a-. a-. a-. a-. a-.
	d,2 r4 \acciaccatura e8
 d16( c d e)
	f8 f f c g' g g c, a' f a c f c d bes

	a f a c f c d bes
	c4\melismaEnd r f,4. f8
	g2 bes |
	c,2. d8( e)
	f2\melisma r4 \acciaccatura bes8
 a16( g a bes)
	c8-. c-. c-. c-. c-. c-. c-. c-. |
	f,2 r4 \acciaccatura g8
 f16( e f g)
	a8-. a-. a-. a-. a-. a-. a-. a-.

	d,2 r4 \acciaccatura e8
 d16( c d e)
	f8 f f c g' g g c, a' f a c f c d bes
	c f, a c f c d bes
	c4\melismaEnd r f,2
	g4. g8 aes4. aes8
	a2 f
	c2. d8( e)
% 4
	f4 r r2
	R1*4
	r2 r4 r8 f
	f4. f8 f4. f8

	f4 f, r r8 f'8
	f4. f8 f4. f8
	f4 f, r r8 f'8
	f4. f8 f4. f8
	f4 f, r f8 f
	ees'2 c 
	a d
% 5
	g,4 r r r8 g'
	g4 g, r r8 g' 
	g4 g, r g'8 g
	g4 g, r g8 g
	f'2 d
	b e
	a,4 r r2 |

	a2 e'
	\times 2/3 {f8\melisma g f} \times 2/3 {a bes a} \times 2/3 {f g f} \times 2/3 {d e d}
	\times 2/3 {cis d cis} \times 2/3 {a b a} \times 2/3 {cis d cis} \times 2/3 {e f e}
	\times 2/3 {f g f} \times 2/3 {a bes a} \times 2/3 {f g f} \times 2/3 {d e d}
	\times 2/3 {cis d cis} \times 2/3 {a b a} \times 2/3 {cis d cis} \times 2/3 {e f e}
	f4 r r2
	r8 d-. f-. a-. d-. a-. bes-. g-.

	a4 r r2
	r8 d,-. f-. a-. d-. a-. bes-. g-.
	a-. d,-. f-. a-. d-. a-. d-. c-.
	bes-. g-. c-. bes-. a-. f-. bes-. a-.
	g-. e-. a-. g-.
	f4\melismaEnd d |
	ees2 g |
	bes4 g ees d
% 6
	cis4 r r a
	cis2 r4 cis
	e2 r4 e
	g e cis a
	bes1
	a4 r r2^\fermata
	d2 r
	f r
	bes1 ~

	bes1 ~
	bes2 g4. ees8 |
	cis4 cis r2
	f1
	r4 d cis4. d8
	a2 r |
	R1*3
}

\addlyrics {

	Der Höl -- le
	Ra -- che kocht in mei -- nem
	Her -- zen,
	Tod und Verz-
	wief -- lung,

	Tod und Verz-
	weif -- lung flam-
	met um mich
	her!
	Fühlt nicht durch
	dich Sa-
	ra -- stro To -- des-
	schmer -- zen, Sa-
	
	ra -- stro To -- des-
	schmer -- zen,
	so bist du
	Mei -- ne
	Toch -- ter nim -- mer-
	mehr, so
	bist du mein', mei -- ne

	Toch -- ter nim -- mer-
	mehr,
	mei -- ne
	Toch -- ter
	nim -- mer-
	mehr, 
	so
	bist du mei -- ne
	Toch -- ter
	nim -- mer-

	mehr!
	Ver-
	sto -- ssen sei auf

	e -- wig, ver-
	las -- sen sei auf
	e -- wig, zert-
	rüm -- mert sei'n auf
	e -- wig al -- le
	Ban -- de
	der Na-

	tur, ver-
	sto -- ssen, ver-
	las -- sen und zert-
	rüm -- mert al -- le
	Ban -- de
	der Na -- tur,

	al -- le
	Ban -- 
	de,
	al -- le
	Ban -- de der Na-

	tur, wenn
	nicht durch dich Sa-
	ra -- stro wird er-
	blas-
	sen!
	Hört,
	hört,
	hört,
	Ra -- che-
	göt -- ter!
	hört
	der Mut -- ter
	Schwur!
}

violoncello = \relative c' {
	\key f \major
	r1
	\acciaccatura {a32[ b cis]}
	d4\f a f\p d
	d8 d d d d d d d 
	d d d d d\f d d d 
	e\p e e e e\f e e e
	f\p f f f f\f f f f
% 2
	g\fp g g g a\fp a a a 
	bes\p bes fis fis g g\cresc g g\!
	g\p g g g g g gis gis
	a4 a\f( gis )g
	f8\fp f f f f f f f
	f f f f f f f f
	f f f f f f f f
	f\cresc f f f f f f f\!

	e\p e e e e e e e
	ees\cresc ees ees ees ees ees ees ees\!
	d4\p r r2
	d'8\fp d d d c\fp c c c
	b b b b b b b b
	c c\sf( b c b c bes\p )g
	a-. c-. a-. f-. e-. g-. e-. c-.
	f c'\sf( b c b c bes\p )g
% 3
	a-. c-. a-. f-. e-. g-. e-. c-.
	f f'-. f-. f-. f-. f-. f-. f-.
	e2 r
	r8 d-. d-. d-. d-. d-. d-. d-.
	c2 r
	r8 bes-. bes-. bes-. bes-. bes-. bes-. bes-.
	a4 r e' r
	f r r2

	r1
	r2 d8\fp d d d
	bes\fp bes bes bes g\fp g g g 
	c\fp c c c c, c c c
	f f'-. f-. f-. f-. f-. f-. f-.
	e2 r
	r8 d-. d-. d-. d-. d-. d-. d-.
	c2 r

	r8 bes-. bes-. bes-. bes-. bes-. bes-. bes-.
	a4 r e' r
	f r r2
	r1
	r2 a,8\fp a a a
	bes\fp bes bes bes b\fp b b b
	c\cresc c c c a a f f
	c4\f r c r
% 4
	f4 r r c
	f r r c
	f d'8 f bes, d g, bes
	e,4 f bes, c
	f, r r2
	r8 f'\f g a bes a bes g
	f4 r r2

	r8 f\f g a bes a bes g
	f4 r r2
	r8 f\f g a bes a bes g
	f4 r r2
	r8 f\f g a bes a bes g
	fis\fp fis fis fis fis fis fis fis
	fis fis fis fis fis fis fis fis
% 5
	g4 r r2
	r8 g\f a bes c bes c a
	g4 r r2
	r8 g\f a bes c bes c a
	gis\fp gis gis gis gis gis gis gis
	gis gis gis gis gis gis gis gis
	a a cis\sf a e a cis, e

	a,4 r r2
	a'4\p r r2
	a,4 r r2
	a'4 r r2
	a,4 r r2
	d4 r d'8 r d r
	d4 r d8 r d r

	d4 r d8 r d r
	d4 r d8 r d r
	d4 r r f8 r
	g r e r f r d r
	e r cis r d4 r
	g,8 g g g g g g g
	g g g g g\cresc g gis gis
% 6
	a4 a\f a, r
	r a' a, r
	r a' a, r
	r1
	r4 g' e d
	cis r r2^\fermata
	r4 r8 \times 2/3 {a16\f( b cis)} d2
	r4 r8 \times 2/3 {cis16\f( d e)} f2
	r aes\sf

	g8 g aes aes g g aes aes
	g4 r r2
	r4 r8. g16 g4 r8. gis16
	gis2 r
	r1
	r2 a
	bes2. b4
	a r a r
	d,2 r
}

contrabasso = \relative c' {
	\key f \major
	r1
	\acciaccatura {a32[ b cis]}
	d4\f a f\p d
	d8 d d d d d d d 
	d d d d d\f d d d 
	e\p e e e e\f e e e
	f\p f f f f\f f f f
% 2
	g\fp g g g a\fp a a a 
	bes\p bes fis fis g g\cresc g g\!
	g\p g g g g g gis gis
	a4 a\f( gis )g
	f8\fp f f f f f f f
	f f f f f f f f
	f f f f f f f f
	f\cresc f f f f f f f\!

	e\p e e e e e e e
	ees\cresc ees ees ees ees ees ees ees\!
	d4\p r r2
	d'8\fp d d d c\fp c c c
	b b b b b b b b
	c c\sf( b c b c bes\p )g
	a-. c-. a-. f-. e-. g-. e-. c-.
	f c'\sf( b c b c bes\p )g
% 3
	a-. c-. a-. f-. e-. g-. e-. c-.
	f4 r r2

	R1*7
	r2 d'8\fp d d d
	bes\fp bes bes bes g\fp g g g 
	c\fp c c c c, c c c
	f4 r r2

	R1*7
	r2 a8\fp a a a
	bes\fp bes bes bes b\fp b b b
	c\cresc c c c a a f f
	c4\f r c r
% 4
	f4 r r c
	f r r c
	f d'8 f bes, d g, bes
	e,4 f bes, c
	f, r r2
	r8 f'\f g a bes a bes g
	f4 r r2

	r8 f\f g a bes a bes g
	f4 r r2
	r8 f\f g a bes a bes g
	f4 r r2
	r8 f\f g a bes a bes g
	fis\fp fis fis fis fis fis fis fis
	fis fis fis fis fis fis fis fis
% 5
	g4 r r2
	r8 g\f a bes c bes c a
	g4 r r2
	r8 g\f a bes c bes c a
	gis\fp gis gis gis gis gis gis gis
	gis gis gis gis gis gis gis gis
	a a cis\sf a e a cis, e

	a,4 r r2
	a'4\p r r2
	a,4 r r2
	a'4 r r2
	a,4 r r2
	d4 r r2
	R1*6
	g8 g g g g g g g
	g g g g g\cresc g gis gis
% 6
	a4 a\f a, r
	r a' a, r
	r a' a, r
	r1
	r4 g' e d
	cis r r2^\fermata
	r4 r8 \times 2/3 {a16\f( b cis} d2)
	r4 r8 \times 2/3 {cis16\f( d e} f2)
	r aes\sf

	g8 g aes aes g g aes aes
	g4 r r2
	r4 r8. g16 g4 r8. gis16
	gis2 r
	r1
	r2 a
	bes2. b4
	a r a r
	d,2 r
}
