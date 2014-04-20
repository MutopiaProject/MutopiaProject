\version "2.18.0"

pPiece = "No. 4. Chor."

Markings = {\time 4/4 \tempo "Allegro maestoso assai" s1*15 \bar "||" \time 2/2 \tempo "Piu animato" s1*51 \bar "||"}
incmidi = "midi4.ily"

flautoI = \relative c''' {\key f \major
	R1*15 |
	f2\f d4. c8 |
	c1 |
	f2 d4. c8 |
	c1 |
	f,2.\sf f4 |
%21
	g2 g |
	a a |
	bes( f) |
	c'2.\sf c4 |
	d2 d |
	e2. e4 |
	f2 a, |
	f'\sf e4. d8 |
	d1 |
	g2\sf f4. e8 |
%31
	e2 g |
	c, f |
	e1 |
	d |
	c2 r |
	R1*3 |
	f2\f d4. c8 |
	c1 |
%41
	f2 d4. c8 |
	c1 |
	f2.\sf f4 |
	f2 es |
	es es |
	es( d) |
	g\sf f4. e!8 |
	e1 |
	a2\ff g4. f8 |
	f2 c |
%51
	d2 g2 |
	c, f ~|
	f e |
	f f |
	f bes, |
	a1 |
	g |
	f ~|
	f2 r |
%60
	R1*3 |
	f'2\f d4. c8 |
	c1\sf |
	c\sf |
	c\sf\fermata\laissezVibrer |
}

flautoII = \relative c''' {\key f \major
	R1*15 |
	c2\f bes4. a8 |
	a1 |
	c2 bes4. a8 |
	a1 |
	d,2.\sf f4 |
%21
	f2 es |
	es es |
	es( d) |
	f2.\sf f4 |
	f2 f |
	bes2. bes4 |
	bes2 a |
	d\sf c4. b8 |
	b1 |
	e2\sf d4. c8 |
%31
	c2 bes |
	a as |
	g c ~|
	c b |
	c r |
	R1*3 |
	c2\f bes4. a8 |
	a1 |
%41
	c2 bes4. a8 |
	a1 |
	d2.\sf d4 |
	g,2 c |
	bes a |
	a( bes) |
	g'\sf f4. e!8 |
	e1 |
	e2\ff e4. d8 |
	d2 c |
%51
	c2 bes |
	a1 |
	g |
	a2 a |
	bes f |
	f1 |
	e |
	f ~|
	f2 r |
%60
	R1*3 |
	c'2\f bes4. a8 |
	a1\sf |
	bes\sf |
	a\sf\fermata\laissezVibrer |
}

oboeI = \relative c'' {\key f \major
	R1*15 |
	f2\f d4. c8 |
	c1 |
	f2 d4. c8 |
	c1 |
	f,2.\sf f4 |
%21
	g2 g |
	a a |
	bes( f) |
	c'2.\sf c4 |
	d2 d |
	e2. e4 |
	f2 a, |
	f'\sf e4. d8 |
	d1 |
	g2\sf f4. e8 |
%31
	e2 g |
	c, f |
	e1 |
	d |
	c2 r |
	R1*3 |
	f2\f d4. c8 |
	c1 |
%41
	f2 d4. c8 |
	c1 |
	f2.\sf f4 |
	f2 es |
	es es |
	es( d) |
	g\sf f4. e!8 |
	e1 |
	a2\ff g4. f8 |
	f2 c |
%51
	d2 g2 |
	c, f ~|
	f e |
	f f |
	f bes, |
	a1 |
	g |
	f ~|
	f2 r |
%60
	R1*3 |
	f'2\f d4. c8 |
	c1\sf |
	c\sf |
	c\sf\fermata\laissezVibrer |
}

oboeII = \relative c'' {\key f \major
	R1*15 |
	c2\f bes4. a8 |
	a1 |
	c2 bes4. a8 |
	a1 |
	d,2.\sf f4 |
%21
	f2 es |
	es es |
	es( d) |
	f2.\sf f4 |
	f2 f |
	bes2. bes4 |
	bes2 a |
	d\sf c4. b8 |
	b1 |
	e2\sf d4. c8 |
%31
	c2 bes |
	a as |
	g c ~|
	c b |
	c r |
	R1*3 |
	c2\f bes4. a8 |
	a1 |
%41
	c2 bes4. a8 |
	a1 |
	d2.\sf d4 |
	g,2 c |
	bes a |
	a( bes) |
	g'\sf f4. e!8 |
	e1 |
	e2\ff e4. d8 |
	d2 c |
%51
	c2 bes |
	a1 |
	g |
	a2 a |
	bes f |
	f1 |
	e |
	f ~|
	f2 r |
%60
	R1*3 |
	c'2\f bes4. a8 |
	a1\sf |
	bes\sf |
	a\sf\fermata\laissezVibrer |
}

clarinettoI = \relative c' {\key g \major
	R1*15 |
	d2\f e4. d8 |
	d1 |
	d2 e4. d8 |
	d1 |
	g2.\sf g4 |
%21
	a2 a |
	b b |
	c( g) |
	g2.\sf g4 |
	g2 g |
	d2. d4 |
	g1 |
	b2\sf b4. e,8 |
	e1 |
	a2\sf cis4. d8 |
%31
	d2 d |
	d e |
	d a |
	a1 |
	a2 r |
	R1*3 |
	g2\f e4. d8 |
	d1 |
%41
	g2 e4. d8 |
	d1 |
	g2.\sf g4 |
	a2 d |
	f, f |
	f( e) |
	e'\sf e4. e8 |
	e1 |
	dis2\ff d4. dis8 |
	e2 g, |
%51
	g2 a d, g ~|
	g fis |
	g g |
	g g |
	g1 |
	d |
	d ~|
	d2 r |
%60
	R1*3 |
	g'2\f e4. d8 |
	d1\sf |
	a\sf |
	b\sf\fermata\laissezVibrer |
}

clarinettoII = \relative c' {\key g \major
	R1*15 |
	b2\f c4. b8 |
	b1 |
	b2 c4. b8 |
	b1 |
	e2.\sf g4 |
%21
	g2 f |
	f f |
	f( e) |
	d2.\sf d4 |
	d2 c |
	c2. c4 |
	c2 b |
	g'\sf b,4. cis8 |
	cis1 |
	a'2\sf cis4. d8 |
%31
	d2 d, |
	d e |
	a fis |
	g1 |
	fis2 r |
	R1*3 |
	d2\f c4. b8 |
	b1 |
%41
	d2 c4. b8 |
	b1 |
	e2.\sf e4 |
	e2 d |
	d d |
	d( c) |
	e\sf e4. e8 |
	fis1 |
	fis2\ff fis4. fis8 |
	g2 f |
%51
	e2 es |
	d1 |
	c |
	b2 b |
	c c |
	d1 |
	c |
	b ~|
	b2 r |
%60
	R1*3 |
	d'2\f c4. b8 |
	b1\sf |
	fis\sf |
	g\sf\fermata\laissezVibrer |
}

fagottoI = \relative c' {\key f \major \clef "bass"
	R1*7 |
	g2\ff a4. g8 |
	g1 |
	g2 a4. g8 |
%11
	g1 |
	f2 a |
	d2 bes |
	R1*2 |
	f,2\f f4. f8 |
	f1 |
	f2 f4. f8 |
	f1 |
	d2.\sf d4 |
%21
	c2 c |
	f f |
	bes1 |
	a2.\sf a4 |
	g2 g |
	c, c |
	d1 |
	d2\sf f4. g8 |
	g1 |
	e2\sf g4. a8 |
%31
	a2 e |
	f d |
	g1 ~|
	g |
	c,2 r |
	R1*3 |
	a'2\f bes4. f8 |
	f1 |
%41
	a2 bes4. f8 |
	f1 |
	d2.\sf d4 |
	es2 es |
	f f |
	bes,1 |
	bes'2\sf bes4. bes8 |
	bes1 |
	a2\ff a4. a8 |
	d2 a |
%51
	bes2 g |
	c1 |
	c, |
	f2 es |
	d des |
	c f |
	c1 |
	f ~|
	f2 r |
%60
	R1*3 |
	c''2\f d4. c8 |
	c1\sf |
	c\sf |
	c\sf\fermata\laissezVibrer |
}

fagottoII = \relative c {\key f \major \clef "bass"
	R1*7 |
	e2\ff f4. e8 |
	e1 |
	e2 f4. e8 |
%11
	e1 |
	f |
	g |
	R1*2 |
	f,2\f f4. f8 |
	f1 |
	f2 f4. f8 |
	f1 |
	d2.\sf d4 |
%21
	c2 c |
	f f |
	bes1 |
	a2.\sf a4 |
	g2 g |
	c, c |
	d1 |
	d2\sf f4. g8 |
	g1 |
	e2\sf g4. a8 |
%31
	a2 e |
	f d |
	g1 ~|
	g |
	c,2 r |
	R1*3 |
	a'2\f bes4. f8 |
	f1 |
%41
	a2 bes4. f8 |
	f1 |
	d2.\sf d4 |
	es2 es |
	f f |
	bes,1 |
	bes'2\sf bes4. bes8 |
	bes1 |
	a2\ff a4. a8 |
	d2 a |
%51
	bes2 g |
	c1 |
	c, |
	f2 es |
	d des |
	c f |
	c1 |
	f ~|
	f2 r |
%60
	R1*3 |
	a'2\f bes4. c8 |
	c1\sf |
	bes\sf |
	a\sf\fermata\laissezVibrer |
}

cornoI = \relative c'' {\key c \major
	c2\f r |
	R1 |
	g1\f |
	c |
	R1*3 |
	g2\ff e4. g8 |
	g1 |
	g2 e4. g8 |
%11
	g1 |
	e |
	R1*3 |
	e'2\f c4. c8 |
	e1 |
	e2 c4. c8 |
	e1 |
	e,2.\sf e4 |
%21
	g2 g |
	c c |
	c1 |
	c2\sf r |
	R1 |
	g2. g4 |
	c1 |
	c2\sf g4. d'8 |
	d1 |
%30
	R1*9 |
	c2\f c4. c8 |
	c1 |
%41
	c2 c4. c8 |
	c1 |
	e,2.\sf c'4 |
	d2 g, |
	c c |
	c1 |
	R1*2 |
	e2\ff e4. e8 |
	e2 c |
%51
	c2 d |
	e1 |
	d |
	c ~|
	c2 c |
	g r |
	R1*6 |
%63
	c2\f c4. c8 |
	g1\sf |
	g\sf |
	\clef "bass" c,,\sf\fermata\laissezVibrer |
}

cornoII = \relative c' {\key c \major
	c2\f r |
	R1 |
	g1\f |
	c |
	R1*3 |
	g2\ff c4. g8 |
	g1 |
	g2 c4. g8 |
%11
	g1 |
	c |
	R1*3 |
	c'2\f c,4. c8 |
	c1 |
	c'2 c,4. c8 |
	c1 |
	c2.\sf c4 |
%21
	g2 g |
	g' c, |
	c'1 |
	c2\sf r |
	R1 |
	g2. g4 |
	c1 |
	c2\sf g4. d'8 |
	d1 |
%30
	R1*9 |
	c2\f c4. c8 |
	c1 |
%41
	c2 c4. c8 |
	c1 |
	c,2.\sf c'4 |
	d2 g, |
	c c |
	c1 |
	R1*2 |
	e,2\ff e4. e8 |
	c'2 c |
%51
	c2 d |
	c1 |
	g |
	c, ~|
	c2 c |
	g r |
	R1*6 |
%63
	c'2\f c4. c8 |
	g1\sf |
	g,\sf |
	\clef "bass" c,,\sf\fermata\laissezVibrer |
}

trombeI = \relative c'' {\key c \major
	R1*15 |
	f2\f d4. c8 |
	c1 |
	f2 d4. c8 |
	c1 |
%20
	R1*4 |
	c2.\sf c4 |
	d2 d |
	e2. e4 |
	f1 |
	f2\sf e4. d8 |
	d1 |
	g2\sf f4. e8 |
%31
	e2 g |
	c, f |
	e1 |
	d2. d4 |
	c2 r |
	R1*3 |
	f2\f d4. c8 |
	c1 |
%41
	f2 d4. c8 |
	c1 |
	R1*9 |
%52
	c1\ff |
	c |
	c |
	R |
	c, |
	c2. c4 |
	c1 ~|
	c2 r |
%60
	R1*3 |
	f'2\f d4. c8 |
	c1\sf |
	c\sf |
	c\sf\fermata |
}

trombeII = \relative c'' {\key c \major
	R1*15 |
	c2\f d4. c8 |
	c1 |
	c2 d4. c8 |
	c1 |
%20
	R1*4 |
	c2.\sf c4 |
	d2 d |
	e2. e4 |
	f1 |
	d2\sf c4. g8 |
	g1 |
	e'2\sf d4. c8 |
%31
	c2 g |
	c d |
	c1 ~|
	c2 g |
	g r |
	R1*3 |
	c2\f d4. c8 |
	c1 |
%41
	c2 d4. c8 |
	c1 |
	R1*9 |
%52
	c,1\ff |
	c |
	c |
	R |
	c |
	c2. c4 |
	c1 ~|
	c2 r |
	R1*3 |
	c'2\f d4. c8 |
	c1\sf |
	c,\sf |
	c\sf\fermata |
}

tromboneI = \relative c'' {\key f \major \clef "alto"
	R1*15 |
	a2\f bes4. a8 |
	a1 |
	a2 bes4. a8 |
	a1 |
	f2.\sf f4 |
%21
	g2 g |
	a a |
	bes f |
	f2.\sf f4 |
	f2 bes |
	bes2. bes4 |
	bes2 a |
	f\sf a4. d,8 |
	d1 |
	g2\sf b4. c8 |
%31
	c2 bes |
	a as |
	g1 ~|
	g2 b |
	c r |
	R1*3 |
	f,2\f bes4. a8 |
	a1 |
%41
	f2 bes4. a8 |
	a1 |
	f2. f4 |
	g2 c |
	bes a |
	a bes |
	g\sf f4. e!8 |
	e1 |
	e2\ff e4. e8 |
	f2 f |
%51
	f bes |
	a1 |
	g |
	f2 a |
	bes g |
	a1 |
	e |
	f ~|
	f2 r |
%60
	R1*3 |
	a2\f bes4. a8 |
	a1\sf |
	g\sf |
	a\sf\fermata |
}

tromboneII = \relative c' {\key f \major \clef "alto"
	R1*15 |
	c2\f bes4. f'8 |
	f1 |
	c2 bes4. f'8 |
	f1 |
	f2.\sf f4 |
%21
	f2 es |
	es es |
	es d |
	c2.\sf c4 |
	c2 bes |
	g'2. g4 |
	f2 f |
	d\sf c4. b8 |
	b1 |
	e2\sf d4. c8 |
%31
	c2 c |
	c d |
	e1 |
	f |
	e2 r |
	R1*3 |
	c2\f bes4. f'8 |
	f1 |
%41
	c2 bes4. f'8 |
	f1 |
	d2. d4 |
	d2 c |
	c c |
	c d |
	d\sf d4. d8 |
	d1 |
	cis2\ff cis4. cis8 |
	d2 es |
%51
	d des |
	c1 |
	bes |
	a2 c |
	f f |
	f1 |
	bes, |
	a ~|
	a2 r |
%60
	R1*3 |
	f'2\f f4. f8 |
	f1\sf |
	e\sf |
	f\sf\fermata |
}

trombonebasso = \relative c {\key f \major \clef "bass"
	R1*15 |
	f2\f f4. f8 |
	f1 |
	f2 f4. f8 |
	f1 |
	d2.\sf d4 |
%21
	c2 c |
	f f |
	a1 |
	a2.\sf a4 |
	g2 g |
	c,2. c4 |
	d2 d |
	d\sf f4. g8 |
	g1 |
	e2\sf g4. a8 |
%31
	a2 e |
	f d |
	g1 ~|
	g |
	c2 r |
	R1*3 |
	a2\f bes4. f8 |
	f1 |
%41
	a2 bes4. f8 |
	f1 |
	d2. d4 |
	es2 es |
	f f |
	bes,1 |
	bes'2\sf bes4. bes8 |
	bes1 |
	a2\ff a4. a8 |
	d2 a |
%51
	bes g |
	c1 |
	c, |
	f2 es |
	d des |
	c f |
	c1 |
	f, ~|
	f2 r |
%60
	R1*3 |
	f'2\f bes4. c8 |
	c1\sf |
	c, |
	f,\fermata |
}

violinI = \relative c' {\key f \major
	<a f>2 r |
	R1 |
	c1\f |
	f ~|
	f2 e |
	f1 |
	e |
	c2\ff a4. g8 |
	g1 |
	c2 a4. g8 |
%11
	g1 |
	f'1 ~|
	f2 f |
	f f ~|
	f e |
	f r |
	R1*18 |
%35
	c2\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 |
	R1*20 |
	<a f'>2\f d4. c8 |
	c1 |
%61
	<a f'>2 d4. c8 |
	c1 |
	R1*4 |
}

violinII = \relative c' {\key f \major
	<a f>2 r |
	R1 |
	g1\f |
	<a d~> |
	d2 c ~|
	c b |
	c1 |
	c2\ff a4. g8 |
	g1 |
	c2 a4. g8 |
%11
	g1 |
	f'2 d ~|
	d d |
	d c |
	d c |
	c r |
	R1*18 |
%35
	c2\f a4. g8 |
	g1 |
	c2\f a4. g8 |
	g1 |
	R1*20
	<a f'>2\f bes4. a8 |
	a1 |
%61
	<a f'>2 bes4. a8 |
	a1 |
	R1*4 |
}

viola = \relative c' {\key f \major \clef "alto"
	c2\f r |
	R1 |
	e,1 |
	f |
	bes |
	a2 f |
	<e g>1 |
	<e g>2\ff f4. e8 |
	e1 |
	<e g>2 f4. e8 |
%11
	e1 |
	f2 <f a> |
	g bes |
	bes a |
	g bes |
	a r |
	R1*18 |
%35
	<e g>2\f f4. e8 |
	e1 |
	<e g>2 f4. e8 |
	e1 |
	R1*20 |
	f2\f d4. c8 |
	c1 |
%61
	f2 d4. c8 |
	c1 |
	R1*4 |
}

soprano = \relative c'' {\key f \major \clef "soprano"
	R1*15 |
	f2\f d4. c8 |
	c1 |
	f2 d4. c8 |
	c1 |
	f,2. f4 |
%21
	g2 g |
	a a |
	bes f |
	c'2. c4 |
	d2 d |
	e2. e4 |
	f2 a, |
	f' e4. d8 |
	d2 r |
	g f4. e8 |
%31
	e2 g |
	c, f |
	e1( |
	d2.) d4 |
	c2 r |
	R1*3 |
	f2\f d4. c8 |
	c1 |
%41
	f2 d4. c8 |
	c1 |
	f2. f4 |
	f2 es |
	es es |
	es d |
	d d4. d8 |
	e!2 r |
	e e4. e8 |
	f2 c |
%51
	d2 g |
	c,1 ~|
	c2 c |
	c f |
	f bes, |
	a1( |
	g2.) g4 |
	f1 ~|
	f2 r |
%60
	R1*7 |
}

sopranoLyrics = \lyricmode {
	Har -- re auf Gott! har -- re auf Gott! denn ich wer -- de ihm noch
	dan -- ken, denn ich wer -- de ihm noch dan -- ken, dass er mir hilft,
	dass er mir hilft mit sei -- nem An -- ge -- sicht. Har -- re auf Gott!
	har -- re auf Gott! denn ich wer -- de ihm noch dan -- ken, dass er mir
	hilft, dass er mir hilft mit sei -- nem An -- ge -- sicht, mit
	sei -- nem An -- ge -- sicht.
}

alto = \relative c' {\key f \major \clef "soprano"
	R1*15 |
	f2\f bes4. a8 |
	a1 |
	f2 bes4. a8 |
	a1 |
	f2. f4 |
%21
	f2 es |
	es2. a4 |
	a2 a |
	f2. f4 |
	f2 bes |
	bes2. bes4 |
	bes2 a |
	a a4. d,8 |
	d2 r |
	r b' |
%31
	c bes |
	a as |
	g( c) ~|
	c b |
	c r |
	R1*3 |
	f,2\f bes4. a8 |
	a1 |
%41
	f2 bes4. a8 |
	a1 |
	a2. f4 |
	g2 c |
	bes a |
	a bes |
	g f4. e!8 |
	e2 r |
	a2 g4. f8 |
	f2 f |
%51
	f2 bes |
	a1( |
	g2.) g4 |
	a2 a |
	bes f |
	f1( |
	e2.) e4 |
	f1 ~|
	f2 r |
%60
	R1*7 |
}

altoLyrics = \lyricmode {
	Har -- re auf Gott! har -- re auf Gott! denn ich wer -- de ihm noch
	dan -- ken, denn ich wer -- de ihm noch dan -- ken, dass er mir hilft,
	mir hilft mit sei -- nem An -- ge -- sicht. Har -- re auf Gott!
	har -- re auf Gott! denn ich wer -- de ihm noch dan -- ken, dass er mir
	hilft, dass er mir hilft mit sei -- nem An -- ge -- sicht, mit
	sei -- nem An -- ge -- sicht.
}

tenor = \relative c {\key f \major \clef "tenor"
	r4 f2\f g4 |
	bes\espressivo a8. a16 a4 bes |
	c1 |
	f,4 r8 f g4 a |
	bes1 |
	a2 g4 f |
	c'1 |
	c2\f a4. g8 |
	g1 |
	c2 a4. g8 |
%11
	g1 |
	f2. f4 |
	g4. a8 bes4 bes |
	bes2( a |
	g1) |
	f2 r |
	R1*3 |
	d'2.\f d4 |
%21
	c2 c |
	c es |
	es d |
	c2. c4 |
	c2 bes |
	c2. c4 |
	f2 f |
	d c4. b8 |
	b2 r |
	e d4. c8 |
%31
	c2 c |
	c d |
	g,2. g4 |
	g2 r |
	c\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 |
%39
	R1*4 |
	d'2. d4 |
	d2 c |
	c c |
	c d |
	d d4. d8 |
	d2 r |
	cis cis4. cis8 |
	d2 es |
%51
	d2 des |
	c( f) ~|
	f e |
	f c |
	d g |
	c,1( |
	bes2.) bes4 |
	a1 ~|
	a2 r |
%60
	R1*7 |
}

tenorLyrics = \lyricmode {
	Was be -- trübst du dich, mei -- ne See -- le, und bist so
	un -- ru -- hig in mir? Har -- re auf Gott! har -- re auf Gott! denn ich
	wer -- de ihm noch den -- ken, denn ich wer -- de ihm noch dan -- ken,
	denn ich wer -- de ihm noch dan -- ken, dass er mir hilft, dass er mir
	hilft mit sei -- nem An -- ge -- sicht. Har -- re auf Gott! har -- re
	auf Gott! denn ich wer -- de ihm noch dan -- ken, dass er mir hilft,
	dass er mir hilft mit sei -- nem An -- ge -- sicht mit sei -- nem
	An -- ge -- sicht.
}

basso = \relative c {\key f \major \clef "bass"
	r4 f2\f g4 |
	bes\espressivo a8. a16 a4 bes |
	c1 |
	f,4 r8 f g4 a |
	bes1 |
	a2 g4 f |
	c'1 |
	c2\f a4. g8 |
	g1 |
	c2 a4. g8 |
%11
	g1 |
	f2. f4 |
	g4. a8 bes4 bes |
	bes2( a |
	g1) |
	f2 r |
	R1*3 |
	d'2.\f d4 |
%21
	c2 c |
	f, f |
	bes bes |
	a2. a4 |
	g2 g |
	c,2. c4 |
	d2 d |
	d f4. g8 |
	g2 r |
	e g4. a8 |
%31
	a2 e |
	f d |
	g2. g4 |
	g2 r |
	c2\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 |
%39
	R1*4 |
	d2. d4 |
	es2 es |
	f f |
	bes bes, |
	bes' bes4. bes8 |
	bes2 r |
	a a4. a8 |
	d2 a |
%51
	bes2 g |
	c1 |
	c, |
	f2( es |
	d) des |
	c f |
	c2. c4 |
	f1 ~|
	f2 r |
%60
	R1*7 |
}

bassoLyrics = \tenorLyrics

bass = \relative c, {\key f \major \clef "bass"
	f2\f r |
	R1 |
	e1 |
	d |
	g |
	a2 d |
	c1 |
	c2\ff c4. c8 |
	c1 |
	c2 c4. c8 |
%11
	c1 |
	d2 c |
	bes g ~|
	g a |
	bes c |
	f, r |
	R1*18 |
%35
	c'2\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	R1*20 |
	f,2\f f4. f8 |
	f1 |
%61
	f2 f4. f8 |
	f1 |
	R1*4 |
}
