\version "2.14.2"

markings = {\time 6/8 s2.*49 \bar "|."}
incmidi = "midi.ly"
pLyrics = {}

clarinettibI = \relative c''' {
	\partial 4. r4 r8
	r4 r8 c4.\p( 
	a4) r8 r4 r8
	R2.*13
	r4 r8 c4.\p(
	a4) r8 r4 r8
	R2.*14
	r4 r8 c,8.[_\markup{\italic "dolce"}( f16 a f] 
	e8) r r r4 r8
 	r4 c8 c8.[( f16 a f]
	e8) r r r4 r8

	r4 r8 r <fis a>-. <e g>-.
	r <d f>-. <c e>-. r <bes d>-. <a c>-.
% 3
	<g bes>-. r r r4 r8
	r2.
	r16 <a c>( <bes d> <c e> <d f> <e g>) <f a>8-. r <e g>-.
	<d f>-. r <c e>-. <bes d>-. r <a c>-.
	<g bes>-. r r \stemDown <g' bes>4.\f
	a4.\p \stemUp g 
	f4\fp r8 r4 r8
	r2.
	c'4\fp r8 r4 r8
	r2.
	r4 <d, bes'>16.(\p <bes g'>32) <bes g'>8( <a f'> <g e'>)
	<a f'>-. <a f'>-. <a f'>-. <a f'>-. r r
}

clarinettibII = \relative c' {
	\partial 4. r4 r8
	r4 r8 e'4. 
	f4 r8 r4 r8
	R2.*13
	r4 r8 e4.
	f4 r8 r4 r8
	R2.*14
	r4 r8 c4. ~ 
	c8 r r r4 r8
	r4 c8 c4. ~
	c8 r r r4 r8

	R2.*7
	f4. f4 e8
	c4 r8 r4 r8
	r2.
	f4 r8 r4 r8
	R2.*3
}

fagottoI = \relative c' {
	\key ees \major
	\partial 4. r4 r8
	R2.*31
	\stemUp
	r4 r8 \clef tenor bes4_\markup{\italic "dolce"}( ees16 g)
	f8 r r r4 r8
	r4 bes,8 bes4( ees16 g)
	f8 r r r4 r8
	r4 r8 r \clef bass <ees g>-. <bes f'>-.
	r <c ees>-. <g d'>-. r <aes c>-. <ees bes'>-.
% 3
	<f aes>-. r r r4 r8
	r2.
	r16 <g bes>( <aes c> <bes d> <c ees> <d f>) <ees g>8-. r <d f>-.
	<c ees>-. r <bes d>-. <aes c>-. r <g bes>-.
	<f aes>-. r r f'4.\f
	g\p f 
	\stemNeutral
	ees4\fp r8 r4 r8
	r2.
	ees4\fp r8 r4 r8
	r2.
	r4 aes,8\p bes4 bes,8
	ees-. bes-. g-. ees-. r r
}

fagottoII = \relative c, {
	\partial 4. r4 r8
	R2.*31
	\stemDown
	r4 r8 \clef tenor bes''4( ees8)
	d8 r r r4 r8
	r4 bes8 bes4( ees8)
	d8 r r r4 r8
	r4 r8 r \clef bass s8 s
	R2.*5
	s8 s s d4.
	ees4. ees4 d8
	bes4 r8 r4 r8
	r2.
	\stemNeutral
	bes4 r8 r4 r8
	r2.
	r4 aes8 bes4 bes,8
	ees bes g ees r r
}

cornieI = \relative c'' {
	\partial 4. r4 r8
	r4 r8 d4.\p(
	e4) r8 r4 r8
	R2.*13
	r4 r8 d4.\p( 
	e4) r8 r4 r8
	R2.*14
	r4 r8 g( e c)
	g' r r r4 r8
	r4 g8 g( e c)
	g' r r r4 r8
	R2.*6
	r4 r8 d4.\f
	e8\p r e d r d
	c4\fp r8 r4 r8
	r2.
	g'4\fp r8 r4 r8
	r2.
	r4 f8\p f( e d)
	c8-. g-. e-. c-. r r
}

cornieII = \relative c' {
	\partial 4. r4 r8
	r4 r8 g'4.\p
	c4 r8 r4 r8
	R2.*13
	r4 r8 g4.\p
	c4 r8 r4 r8
	R2.*14
	r4 r8 g_\markup{\italic "dolce"} e c
	g' r r r4 r8
	r4 g8 g e c
	g' r r r4 r8
	R2.*6
	r4 r8 g4.\f
	c8\p r c c r g
	c,4\fp r8 r4 r8
	r2.
	c4\fp r8 r4 r8
	r2.
	r4 d'8\p d c g
	e8-. g-. e-. c-. r r
}

violinoI = \relative c' {
	\key ees \major
	\partial 4. ees8-.\p ees-. ees-.
	f-. r r r4 r8
	r4 r8
	ees-. r ees-.
	ees-. r ees-. d-. r f-.
	g-. r bes-. ees-. r d-.
	c-. r bes-. aes-. r g-.
	f8-. r r ees-. r ees-.
	ees-. r ees-. d-. r f-.
	g-. r bes-. ees-. r d-.
	c-. r bes-. bes-. r a-.
	bes-. r bes-. bes4.~
	bes2. ~
	bes8 r r ees-.\pp ees-. ees-.
	f-. r f-. bes,8.( c16) d8-.
	ees-. r r ees-.\mf d16( ees) d( ees)
	f4( aes16 f) ees4( f16 d)
	ees4 r8 r4 r8
	r4 r8 bes16\p( a aes g f bes
	ees,8) r r ees-. r ees-. 
	ees-. r ees-. d-. r f-.
% 2
	g-. r bes-. ees-. r d-.
	c-. r bes-. aes-. r g-.
	f-. r r ees-. r ees-.
	ees-. r ees-. d-. r f-.
	g-. r bes-. ees-. r d-.
	c-. r bes-. bes-. r a-.
	bes-. r bes-. bes4. ~
	bes2. ~
	bes8 r r ees-.\pp ees-. ees-.
	f-. r f-. bes,8.( c16) d8-.
	ees-. r r ees-.\mf d16( ees) d( ees)
	f4( aes16 f) ees4( f16 d)
	ees4 r8 r4 r8
	r4 r8 bes8.\p( ees16 g16 ees)
	d8-. r r r4 r8
	r4 bes8 bes8.( ees16 g16 ees)
	d8-. r r r4 r8
	r2.
% 3
	r4 r8 f16\f f8 f f16(
	g8)\p g-. g-. r f-. f-.
	ees-. r r r g-. f-.
	r ees-. d-. r c-. bes-.
	aes-. r r f'16\f f8 f f16
	r g-.\p g-. g-. r g-. r f-. f-. f-. r f-.
	ees4.\fp ~ ees8 r ees,
	f4 aes'16( f) f8( ees d)
	ees4.\fp ~ ees8 r bes,
	c4 aes''16.( f32) f8\cresc( ees d)
	ees\f r aes16.\p( f32) bes4( d,8)
	ees-. ees,-. ees-. ees-. r r 
}

violinoII = \relative c' {
	\key ees \major
	\partial 4. g8-.\p g-. g-.
	d'8-. r r r4 r8
	r4 r8
	g,-. r g-.
	g-. r g-. aes-. r d-.
	ees-. r g-. bes-. r bes-.
	aes-. r ees-. f-. r ees-.
	d-. r r g,-. r g-.
	g-. r g-. aes-. r d-. 
	ees-. r g-. a-. r bes-.
	g-. r ees-. f-. r ees-. 
	d-. r d-. d4.( 
	ees) d(
	ees8) r r g-.\pp g-. g-.
	c-. r c-. f,8.( g16) aes8-.
	g-. r r bes-.\mf bes-. bes-.
	c-. c-. c16( aes) g( bes g bes aes f)
	g4 r8 r4 r8
	r4 r8 r4 d8\p( 
	ees) r r g,-. r g-.
	g-. r g-. aes-. r d-.	
% 2
	ees-. r g-. bes-. r bes-.
	aes-. r ees-. f-. r ees-. 
	d-. r r g,-. r g-.
	g-. r g-. aes-. r d-.
	ees-. r g-. a-. r bes-.
	g-. r ees-. f-. r ees-.
	d-. r d-. d4.( 
	ees) d( 
	ees8) r r g-.\pp g-. g-.
	c-. r c-. f,8.( g16) aes8-.
	g-. r r bes-.\mf bes-. bes-.
	c-. c-. c16( aes) g( bes g bes aes f)
	g4 r8 r4 r8
	r4 r8 bes4\p ~ bes16( g)
	f8-. r r r4 r8
	r4 bes8 bes4 ~ bes16( g)
	f8-. r r r4 r8 
	r2.
% 3
	r4 r8 d'16\f d8 d d16( 
	ees8)\p ees-. ees-. r ees-. d-.
	ees-. r r r ees-. d-.
	r c-. bes-. r aes-. g-.
	f-. r r d'16\f d8 d d16
	r ees-.\p ees-. ees-. r ees-. r ees-. ees-. ees-. r d-.
	bes4.\fp ~ bes8 r bes, 
	c4 c'16( aes) aes8( g f)
	ees4.\fp ~ ees8 r bes
	aes4 c'16.( aes32) \slurUp aes8\cresc( g f) \slurNeutral
	g\f r8 aes16.\p( f32) bes4( d,8)
	ees-. g,-. g-. g-. r r 
}

viola = \relative c' {
	\key ees \major
	\clef "alto"
	\partial 4. bes8-.\p bes-. bes-.
	bes-. r r r4 r8
	r4 r8
	bes-. r bes-.
	bes-. r bes-. bes-. r bes-.
	bes-. r ees-. ees-. r ees-.
	ees-. r bes-. bes-. r bes-.
	bes-. r r bes-. r bes-. 
	bes-. r bes-. bes-. r bes-.
	bes-. r ees-. f-. r f-.
	ees-. r bes-. d-. r c-.
	bes-. r f'-. f4.( 
	g) f( 
	g8) r r ees-.\pp ees-. ees-.
	c-. r c-. d8.( ees16) f8-.
	ees-. r r g-.\mf g-. g-.
	f-. f-. c-. bes-. bes-. bes-.
	bes4 r8 r4 r8
	r4 r8 r4 aes8\p( 
	g) r r bes-. r bes-. 
	bes-. r bes-. bes-. r bes-.
% 2
	bes-. r ees-. ees-. r ees-.
	ees-. r bes-. bes-. r bes-.
	bes-. r r bes-. r bes-.
	bes-. r bes-. bes-. r bes-.
	bes-. r ees-. f-. r f-.
	ees-. r bes-. d-. r c-.
	bes-. r f'-. f4.( 
	g) f(
	g8) r r ees-.\pp ees-. ees-.
	c-. r c-. d8.( ees16) f8-.
	ees-. r r g-.\mf g-. g-.
	f-. f-. c-. bes-. bes-. bes-.
	bes4 r8 r4 r8
	r4 r8 bes4.\p ~
	bes8 r r r4 r8
	r4 bes8 bes4. ~
	bes8 r r r4 r8
	r2.
% 3
	r4 r8 bes'4.\f ~
	bes8\p r c-. c-. r aes-.
	g-. r r r g-. f-.
	r ees-. d-. r c-. bes-.
	aes-. r r bes'4.\f ~
	bes8\p r c-. c-. r bes-.
	ees,4.\fp ~ ees8 r g, 
	aes4 f'16( c') bes4.
	bes\fp ~ bes8 r g,
	f4 f'16.( c'32) bes4.\cresc
	bes8\f r c,\p( bes4 aes8)
	g-. bes-. bes-. bes-. r r 
}

violoncello = \relative c {
	\key ees \major
	\partial 4. ees8-.\p ees-. ees-.
	bes-. r r r4 r8
	r4 r8 ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r ees-. g-. r g-.
	aes-. r g-. d-. r ees-.
	bes-. r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r d-. c-. r d-.
	ees-. r g-. f-. r f,-.
	bes r bes'( aes4 bes8 
	g4 bes8 aes4 bes8
	g8) r r c-.\pp c-. c-.
	aes-. r aes-. bes-. r bes-. 
	c-. r r g-.\mf g-. g-.
	aes-. aes-. aes-. bes-. bes-. bes-.
	ees,4 r8 r4 r8
	r4 r8 r4 bes8\p(
	ees) r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
% 2
	ees-. r ees-. g-. r g-. 
	aes-. r g-. d-. r ees-.
	bes-. r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r d-. c-. r d-.
	ees-. r g-. f-. r f,-.
	bes-. r bes'( aes4 bes8 g4 bes8 aes4 bes8
	g) r r c-.\pp c-. c-.
	aes-. r aes-. bes-. r bes-.
	c-. r r g-.\mf g-. g-.
	aes-. aes-. aes-. bes-. bes-. bes-.
	ees,4 r8 r4 r8
	r4 r8 bes'\p( g ees)
	bes' r r r4 r8
	r4 bes8 bes( g ees)
	bes' r r r4 r8 
	r2.
% 3
	r4 r8 bes-.\f bes-. bes-.
	ees-.\p r c-. aes r bes-.
	ees,-. r r r ees'-. bes-.
	r c-. g-. r aes-. es-.
	f-. r r bes-.\f bes-. bes-. 
	ees-.\p r c-. aes r bes-.
	g4.\fp ~ g
	aes4 aes8 bes4( aes8)
	g4.\fp ~ g
	aes4 aes8 bes4 bes,8
	ees8\f r r r4 bes8\p(
	ees) bes-. g-. ees-. r r 
}

contrabasso = \relative c {
	\key ees \major
	\partial 4. ees8-.\p ees-. ees-.
	bes-. r r r4 r8
	r4 r8 ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r ees-. g-. r g-.
	aes-. r g-. d-. r ees-.
	bes-. r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r d-. c-. r d-.
	ees-. r g-. f-. r f,-.
	bes r bes'( aes4 bes8 
	g4 bes8 aes4 bes8
	g8) r r c-.\pp c-. c-.
	aes-. r aes-. bes-. r bes-. 
	c-. r r g-.\mf g-. g-.
	aes-. aes-. aes-. bes-. bes-. bes-.
	ees,4 r8 r4 r8
	r4 r8 r4 bes8\p(
	ees) r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
% 2
	ees-. r ees-. g-. r g-. 
	aes-. r g-. d-. r ees-.
	bes-. r r ees-. r ees-.
	ees-. r ees-. bes-. r bes-.
	ees-. r d-. c-. r d-.
	ees-. r g-. f-. r f,-.
	bes-. r bes'( aes4 bes8 g4 bes8 aes4 bes8
	g) r r c-.\pp c-. c-.
	aes-. r aes-. bes-. r bes-.
	c-. r r g-.\mf g-. g-.
	aes-. aes-. aes-. bes-. bes-. bes-.
	ees,4 r8 r4 r8
	r2.
	r
	r
	r
	r
% 3
	r4 r8 bes'-.\f bes-. bes-.
	ees-.\p r c-. aes r bes-.
	ees,-. r r r ees'-. bes-.
	r c-. g-. r aes-. es-.
	f-. r r bes-.\f bes-. bes-. 
	ees-.\p r c-. aes r bes-.
	g4.\fp ~ g
	aes4 aes8 bes4( aes8)
	g4.\fp ~ g
	aes4 aes8 bes4 bes,8
	ees8\f r r r4 bes8\p(
	ees) bes-. g-. ees-. r r 
}

pamina = \relative c'' {
	\key ees \major
	\partial 4. r4 r8
	r2.
	r4 bes8 bes( g) g
	g( ees) ees d( f) aes
	aes g bes bes( ees) d
	d( c) bes bes( aes) g
	f r r r4 r8
	R2.*3
	r4 bes8 f'( d) bes
	ees4 ees8 f( d) bes
	ees r r ees ees ees
	f r f bes,8.( c16) d8
	ees r r ees\f d16( ees) d( ees)
	f4 aes16( f) ees4 f16( d)
	ees4 r8 r4 r8
	r2.	
	r4 bes8 bes( g) g
	g( ees) ees d16( ees f g) aes( bes)	
% 2
	aes8 g bes bes( ees) d
	d16( c ees d) c( bes) bes( aes c bes) aes( g)
	g8( f) r8 r4 r8
	R2.*3
	r4 bes8 f'( d) bes
	ees4 ees8 g16( f ees d) c( bes)
	ees8 r r g\p g g
	f r f bes,8.( c16) d8
	ees-. r r ees\f d16( ees) d( ees)
	f4 aes16( f) ees4 f16( d)
	ees4 r8 r4 r8
	r4 r8 bes8.( ees16) g16( ees)
	d8 r r r4 r8
	r4 bes8 bes8.( ees16) g16( ees)
	d8 r r g^\markup{\italic "sotto voce"} r f
	ees r d c r bes
% 3
	aes r r f'4\f f8
	g8 r g f r f
	ees r r g^\markup{\italic "sotto voce"} r f
	ees r d c r bes
	aes r r f'4\f f8
	g r g f r f
	ees16 \times 2/3 { f32( ees32 d32) } ees16( f g aes) bes( g ees bes aes g) 
	f4 aes'16( f) f8( ees) d 
	ees16 \times 2/3 { f32( ees32 d32) } ees16( f g aes) bes( g ees bes g ees)
	c4 aes''16.( f32) bes4 d,8 
	ees4 r8 r4 r8 
	r2. 
}

paminaLyrics = \lyricmode {
	Bei Männ -- ern,
	wel -- che Lie -- be
	füh -- len, fehlt auch ein
	gu -- tes Her -- ze
	nicht.
	Wir wol -- len
	uns der Lie -- be
	freu'n, wir le -- ben
	durch die Lieb' al-
	lein, wir le -- ben
	durch die Lieb' al-
	lein. 
	Die Lieb' ver-
	sü -- _sset je -- de
	Pla -- ge, ihr o -- pfert
	je -- de Cre -- a -- tur.
	Ihr ho -- her 
	Zweck zeigt -- deut -- lich
	an, nichts Ed -- ler's
	sei, als Weib und
	Mann, nichts Ed -- ler's
	sei, als Weib und
	Mann.
	Mann und
	Weib,
	und Weib und
	Mann,
	Mann und
	Weib, und Weib und
	Mann rei -- chen
	an die Gott -- heit
	an; Mann und
	Weib, und Weib und
	Mann rei -- chen
	an die Gott -- heit
	an, -- _ _ _
	an die Gott -- heit
	an, -- _ _ _
	an die Gott -- heit
	an.
}

papageno = \relative c' {
	\key ees \major
	\partial 4. r4 r8
	R2.*5
	r4 bes8 bes( g) g
	g( ees) ees d( f) aes
	aes g bes ees r d
	c8.( d16) bes8 bes8.( c16) a8
	bes r bes aes4 bes8
	g4 bes8 aes4 bes8
	g r r c c c
	aes r aes bes r bes
	c r r g\f g g 
	aes4 aes8 bes4 bes8
	ees,4 r8 r4 r8
	R2.*5
	r4 bes'8 bes( g) g
	g( ees) ees d16( ees f g) aes( bes)
	aes8 g bes ees r d
	c8.( d16) bes8 bes8.( c16) a8
	bes r bes aes4 bes8
	g4 bes8 aes4 bes8
	g r r c\p c c
	aes r aes bes r bes
	c r r g\f g g
	aes4 aes8 bes4 bes8
	ees,4 r8 r4 r8
	r4 r8 bes'( g) ees
	bes' r r r4 r8
	r4 bes8 bes( g) ees
	bes' r r ees^\markup{\italic "sotto voce"} r bes
	c r g aes r ees
% 3
	f r r d'4\f d8
	ees r c aes r bes
	ees, r r ees'^\markup{\italic "sotto voce"} r bes
	c r g aes r ees
	f r r d'4\f d8
	ees r c aes r bes
	g4. r4 r8
	aes4 aes8 bes4 aes8
	g4. r4 r8
	aes4 c16.( aes32) bes4 bes8
	ees,4 r8 r4 r8
	r2.
}

papagenoLyrics = \lyricmode {
	Die süs -- sen
	Trie -- be mit zu
	füh -- len, ist dann der
	Wei -- ber er -- ste
	Pflicht. Wir wol -- len
	uns der Lie -- be freu'n, wir le -- ben
	durch die Lieb' al-
	lein, wir le -- ben durch die Lieb' al-
	lein.
	Sie wür -- zet un -- sre Le -- bens-
	ta -- ge, sie wirkt im
	Krei -- se der Na-
	tur. Ihr ho -- her
	Zweck zeigt -- deut -- lich
	an, nichts Ed -- ler's
	sei, als Weib und
	Mann, nichts Ed -- ler's 
	sei, als Weib und
	Mann.
	Mann und
	Weib,
	und Weib und
	Mann,
	Mann und
	Weib, und Weib und
	Mann rei -- chen
	an die Gott -- heit
	an; Mann und
	Weib, und Weib und
	Mann rei -- chen
	an die Gott -- heit
	an, 
	an die Gott -- heit
	an, 
	an die Gott -- heit
	an.
}
