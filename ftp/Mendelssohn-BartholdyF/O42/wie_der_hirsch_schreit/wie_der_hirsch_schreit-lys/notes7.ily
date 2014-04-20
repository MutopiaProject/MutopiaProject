\version "2.18.0"

pPiece = "No. 7. Schlusschor."

Markings = {\time 4/4 \tempo "Maestoso Assai" s1*13 \bar "||" \tempo "Molto Allegro vivace." \time 2/2 s1*33 \tempo "Poco più animato" s1*151 \bar "|."}
incmidi = "midi7.ily"

piuf = \markup {più \dynamic f}
semprepiuf = \markup {sempre più \dynamic f}

flautoI = \relative c''' {\key f \major
	R1*13 |
	f2\ff d4. c8 |
	c1 |
	f2\ff d4. c8 |
	c2 r |
	R1 |
	r2 c4 c |
	d4. e8 f4 f |
%21
	f2 e |
	c\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 |
	R1 |
	r2 c4 c |
	g4.\espressivo e8 d4 c |
	c2 c |
%30
	R1*3 |
	d'1\f |
	f2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	c!2.\sf c4 |
	a'2 e |
	f2 es |
%41
	d1 ~|
	d |
	c4-. f,-. a-. c-. |
	f-. a-. g-. f-. |
	e d c f |
	a,2 g4. f8 |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f, g a c |
	b c d f |
	e c f2 ~|
	f4 a g f |
	e c f2 ~|
%71
	f b, |
	c1 ~|
	c ~|
	c2. c4 |
	c d e g |
	cis,4( d) e2 |
	a, r4 e |
	a b cis e |
	a,2 r |
	d bes4. a8 |
%81
	a2 r4 g |
	d'2 bes4. a8 |
	a2 r4 d |
	g, a bes d |
	g( f es d) |
	es( d c bes) |
	a bes c2 |
	r4 f, bes2 ~|
	bes4 a c2 ~|
	c4 bes es2 ~|
%91
	es4 d c2 |
	f r |
	R1*5 |
	d1\f |
	c2 as |
	b c |
%101
	d f |
	e1 |
	d |
	cis2 d |
	e g |
	f f4. e8 |
	e2 r |
	a f4. e8 |
	e2 r4 a, |
	d1\f ~|
%111
	d ~|
	d ~|
	d2 r |
	d1 ~|
	d |
	es ~|
	es2. e4 |
	f2 r |
	R1*10 |
	c2\f a4. g8 |
	g2 r4 c4 |
%131
	f2 d4. c8 |
	c2. c4 |
	bes2 bes4. bes8 |
	as2 r4 as |
	bes f' es des |
	c1 ~|
	c4 ges' f es |
	des2. c4 |
	bes as' g! f |
	e!2 r |
%141
	f\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	a,2 r |
	f' es4. d8 |
	d2 c |
%151
	bes c |
	d d4._\piuf d8 |
	e!2 r |
	f2 f4. f8 |
	f2 r |
	g1\sf |
	f2 e |
	es1 |
	d2 d\ff |
	c1 |
%161
	bes |
	a2 r |
	f'\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 c |
	b4( a' g f |
	e d c b) |
	c2. c4 |
	c r r2 |
%171
	f2\ff d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	b( a' g f |
	e d c b) |
	c2 c |
	c1 ~|
	c2 r |
	f2\sf d4. c8 |
%181
	c2. c4 |
	c2. c4 |
	c2 r |
	f2\sf d4. c8 |
	c2. c4 |
	c2. c4 |
	c2 c |
	f1\sf ~|
	f2 e-. |
	f-. c-. |
%191
	d-. g-. |
	c,-. d-. |
	a1 ~|
	a |
	g ~|
	g |
	f\fermata |
}

flautoII = \relative c''' {\key f \major
	R1*13 |
	c2\ff bes4. a8 |
	a1 |
	c2 bes4. a8 |
	a2 r |
	R1 |
	r2 c4 c |
	c2. d4 |
%21
	d2 c |
	g\f f4. e8 |
	e1 |
	g2 f4. e8 |
	e1 |
	R1 |
	r2 c'4 c |
	g4.\espressivo e8 d4 c |
	c2 c |
%30
	R1*3 |
	d'1\f |
	f2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	c!2.\sf c4 |
	a'2 e |
	f2 es |
%41
	d1 ~|
	d |
	c4-. f,-. a-. c-. |
	f-. a-. g-. f-. |
	e d c f |
	a,2 g4. f8 |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f, g a c |
	b c d f |
	e c f2 ~|
	f4 a g f |
	e c f2 ~|
%71
	f b, |
	c1 ~|
	c ~|
	c2. c4 |
	c d e g |
	cis,4( d) e2 |
	a, r4 e |
	a b cis e |
	a,2 r |
	d bes4. a8 |
%81
	a2 r4 g |
	d'2 bes4. a8 |
	a2 r4 d |
	g, a bes d |
	g( f es d) |
	es( d c bes) |
	a bes c2 |
	r4 f, bes2 ~|
	bes4 a c2 ~|
	c4 bes es2 ~|
%91
	es4 d c2 |
	f r |
	R1*5 |
	bes,1\f |
	a2 as |
	g es |
%101
	d b' |
	c1 |
	b2 bes |
	a f |
	e cis' |
	d d4. cis8 |
	cis2 r |
	f d4. cis8 |
	cis2 r4 a |
	d,1\f ~|
%111
	d ~|
	d ~|
	d2 r |
	d1 ~|
	d |
	es ~|
	es2. e4 |
	f2 r |
	R1*10 |
	c'2\f a4. g8 |
	g2 r4 c4 |
%131
	f2 d4. c8 |
	c2. c4 |
	bes2 bes4. bes8 |
	as2 r4 as |
	bes f' es des |
	c1 ~|
	c4 ges' f es |
	des2. c4 |
	bes as' g! f |
	e!2 r |
%141
	f\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	a,2 r |
	f' es4. d8 |
	d2 c |
%151
	bes c |
	d d4._\piuf d8 |
	cis2 r |
	d2 d4. d8 |
	d2 r |
	es1\sf |
	d2 c |
	c1 |
	bes2 g\ff |
	a1 |
%161
	g |
	f2 r |
	d'\sf d4. c8 |
	c2 r4 c |
	d2\sf d4. c8 |
	c2 r4 c |
	b1 ~|
	b4 d c b |
	c2. c4 |
	c r r2 |
%171
	d2\ff d4. c8 |
	c2 r4 c |
	d2 d4. c8 |
	c2 r4 c |
	b1 ~|
	b4 b c b |
	c2 a |
	bes2. bes4 |
	a2 r |
	f'2\sf d4. c8 |
%181
	c2. c4 |
	c2. c4 |
	c2 r |
	f2\sf d4. c8 |
	c2. c4 |
	c2. c4 |
	c2 c |
	f1\sf ~|
	f2 e-. |
	f-. c-. |
%191
	b-. bes-. |
	a-. g-. |
	f1 ~|
	f |
	e ~|
	e |
	f\fermata |
}

oboeI = \relative c'' {\key f \major
	R1*13 |
	f2\ff d4. c8 |
	c1 |
	f2 d4. c8 |
	c2 f,4 f |
	g4. a8 bes4 bes |
	bes2 a4\f c |
	d4. e8 f4 f |
%21
	f2 e |
	c'2\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 |
	R1 |
	r2 c,4 c |
	g'4.\espressivo e8 d4 c |
	c2 c |
	c2. c4 |
%31
	d1 |
	es |
	d |
	f2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	bes'2.\sf bes4 |
	a2 e |
	f2 es |
%41
	d1 ~|
	d |
	c4-. f,-. a-. c-. |
	f-. a-. g-. f-. |
	e d c f |
	a,2 g4. f8 |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f, g a c |
	b c d f |
	e c f2 ~|
	f4 a g f |
	e c f2 ~|
%71
	f b, |
	c1 ~|
	c ~|
	c2. c4 |
	c d e g |
	cis,4( d) e2 |
	a, r4 e |
	a b cis e |
	a,2 r |
	d bes4. a8 |
%81
	a2 r4 g |
	d'2 bes4. a8 |
	a2 r4 d |
	g, a bes d |
	g( f es d) |
	es( d c bes) |
	a bes c2 |
	r4 f, bes2 ~|
	bes4 a c2 ~|
	c4 bes es2 ~|
%91
	es4 d c2 |
	f r |
	R1*5 |
	d1\f |
	c2 as |
	b c |
%101
	d f |
	e1 |
	d |
	cis2 d |
	e g |
	f f4. e8 |
	e2 r |
	a f4. e8 |
	e2 a |
	a1\f ~|
%111
	a ~|
	a ~|
	a2 r |
	d,1 ~|
	d |
	es ~|
	es2. e4 |
	f2. f,4 |
	fis2._\semprepiuf fis4 |
	g a bes d |
%121
	a2. a4 |
	bes c d f |
	b,1 |
	c4 d e g |
	cis,2. cis4 |
	d2 r |
	R1*2 |
	c2\f a4. g8 |
	g2 r4 c4 |
%131
	f2 d4. c8 |
	c2. c4 |
	bes2 bes4. bes8 |
	as2 r4 as |
	bes f' es des |
	c1 ~|
	c4 ges' f es |
	des2. c4 |
	bes as' g! f |
	e!2 r |
%141
	f\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	a,2 r |
	f' es4. d8 |
	d2 c |
%151
	bes c |
	d d4._\piuf d8 |
	e!2 r |
	f2 f4. f8 |
	f2 r |
	g1\sf |
	f2 e |
	es1 |
	d2 d\ff |
	c1 |
%161
	bes |
	a2 r |
	f'\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 c |
	b4( a' g f |
	e d c b) |
	c2. c4 |
	c r r2 |
%171
	f2\ff d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	b( a' g f |
	e d c b) |
	c2 c |
	c1 ~|
	c2 r |
	f2\sf d4. c8 |
%181
	c2. c4 |
	bes'2 g4. a8 |
	a2 r |
	f2\sf d4. c8 |
	c2. c4 |
	bes'2 g4. a8 |
	a2 c, |
	f1\sf ~|
	f2 e-. |
	f-. c-. |
%191
	d-. g-. |
	c,-. d-. |
	a1 ~|
	a |
	g ~|
	g |
	f\fermata |
}

oboeII = \relative c'' {\key f \major
	R1*13 |
	c2\ff bes4. a8 |
	a1 |
	c2 bes4. a8 |
	a2 f4 f |
	f2. e4 |
	e2 f4\f c' |
	c2. d4 |
%21
	d2 c |
	g'2\f f4. e8 |
	e1 |
	g2 f4. e8 |
	e1 |
	R1 |
	r2 c4 c |
	g'4.\espressivo e8 d4 c |
	c2 c |
	a2. a4 |
%31
	bes1 |
	c |
	d |
	f2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	g2.\sf g4 |
	a2 e |
	f2 es |
%41
	d1 ~|
	d |
	c4-. f,-. a-. c-. |
	f-. a-. g-. f-. |
	e d c f |
	a,2 g4. f8 |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f, g a c |
	b c d f |
	e c f2 ~|
	f4 a g f |
	e c f2 ~|
%71
	f b, |
	c1 ~|
	c ~|
	c2. c4 |
	c d e g |
	cis,4( d) e2 |
	a, r4 e |
	a b cis e |
	a,2 r |
	d bes4. a8 |
%81
	a2 r4 g |
	d'2 bes4. a8 |
	a2 r4 d |
	g, a bes d |
	g( f es d) |
	es( d c bes) |
	a bes c2 |
	r4 f, bes2 ~|
	bes4 a c2 ~|
	c4 bes es2 ~|
%91
	es4 d c2 |
	f r |
	R1*5 |
	bes,1\f |
	a2 as |
	g es |
%101
	d b' |
	c1 |
	b2 bes |
	a f |
	e cis' |
	d d4. cis8 |
	cis2 r |
	f d4. cis8 |
	cis2 a2 |
	a1\f ~|
%111
	a ~|
	a ~|
	a2 r |
	bes1 ~|
	bes |
	bes ~|
	bes2. des4 |
	c2. f,4 |
	fis2._\semprepiuf fis4 |
	g a bes d |
%121
	a2. a4 |
	bes c d f |
	b,1 |
	c4 d e g |
	cis,2. cis4 |
	d2 r |
	R1*2 |
	c2\f a4. g8 |
	g2 r4 c4 |
%131
	f2 d4. c8 |
	c2. c4 |
	bes2 bes4. bes8 |
	as2 r4 as |
	bes f' es des |
	c1 ~|
	c4 ges' f es |
	des2. c4 |
	bes as' g! f |
	e!2 r |
%141
	f\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	a,2 r |
	f' es4. d8 |
	d2 c |
%151
	bes c |
	d d4._\piuf d8 |
	cis2 r |
	d2 d4. d8 |
	d2 r |
	es1\sf |
	d2 c |
	c1 |
	bes2 g\ff |
	a1 |
%161
	g |
	f2 r |
	d'\sf d4. c8 |
	c2 r4 c |
	d2\sf d4. c8 |
	c2 r4 c |
	b1 ~|
	b4 d c b |
	c2. c4 |
	c r r2 |
%171
	d2\ff d4. c8 |
	c2 r4 c |
	d2 d4. c8 |
	c2 r4 c |
	b1 ~|
	b4 b c b |
	c2 a |
	bes2. bes4 |
	a2 r |
	f'2\sf d4. c8 |
%181
	c2. c4 |
	g'2 e4. f8 |
	f2 r |
	f2\sf d4. c8 |
	c2. c4 |
	g'2 e4. f8 |
	f2 c |
	f1\sf ~|
	f2 e-. |
	f-. c-. |
%191
	b-. bes-. |
	a-. g-. |
	f1 ~|
	f |
	e ~|
	e |
	f\fermata |
}

clarinettoI = \relative c''' {\key g \major
	R1*13 |
	g2\ff e4. d8 |
	d1 |
	g2 e4. d8 |
	d2 r |
	R1 |
	r2 d4 d |
	e4. fis8 g4 g |
%21
	g2 fis |
	d\f b4. a8 |
	a1 |
	d2 b4. a8 |
	a1 |
	R1 |
	r2 d4 d |
	a'4.\espressivo fis8 e4 d |
	d2 d |
	d2. d4 |
%31
	e1 |
	f |
	e |
	g2 e4. dis8 |
	dis1 |
	a'2 fis!4. e8 |
	e1 |
	c'2.\sf c4 |
	b2 c |
	d2 gis,, |
%41
	a1 ~|
	a |
	b4-. g-. b-. d-. |
	g-. g-. e-. e-. |
	a, c b a |
	g2 fis |
	g r |
	R1*6 |
%54
	d'2\f b4. a8 |
	a2 r4 a |
	d2 b4. a8 |
	a2 r4 a |
	d,4 e fis a |
	gis a b d |
	c d e g,! |
%61
	fis g a c |
	b g c4. b8 |
	b2 r4 fis |
	g2 c |
	b r |
	r r4 a |
	g4 fis e cis |
	a' fis d2 |
	R1 |
	r2 r4 g |
%71
	g( b a g) |
	fis2 r4 a |
	d, e fis a |
	fis g a d |
	a b c a |
	a2 r4 fis |
	fis g a c |
	b2. b4 |
	b r r2 |
	R1 |
%81
	b2 a4. gis8 |
	gis2 a ~|
	a gis |
	a4. a8 a2 |
	r2 r4 a |
	f g a a |
	g a b d |
	c r r2 |
	r4 g bes2 ~|
	bes4 c c c |
%91
	bes c d bes |
	g2 r4 g |
	g a bes d |
	gis,1( |
	a4) g fis e |
	fis g a c |
	b2 r |
	e1 |
	d |
	cis2 d |
%101
	e g |
	fis1 |
	e |
	dis2 e |
	fis a |
	g g4. fis8 |
	fis2 r |
	b g4. fis8 |
	fis2 r4 b, |
	e1\f ~|
%111
	e ~|
	e ~|
	e2 r |
	e1 ~|
	e |
	f ~|
	f2. fis4 |
	g2. r4 |
	R1*8 |
	a,2\f fis4. e8 |
	e2 a |
	f4. e8 e2 |
	r4 a d2 |
%131
	bes4. a8 a2 ~|
	a g |
	c a4. g8 |
	g2 r4 g |
	a bes a c |
	bes1 |
	b!4 c b d |
	c2. b4 |
	c2 r |
	r r4 d |
%141
	cis2 g4 g |
	fis d g2 ~|
	g4 e cis2 |
	d r |
	d' c4. b8 |
	b2 a |
	g fis4. c'8 |
	b2 r4 d, |
	g a b d |
	g,1 ~|
%151
	g4 a b b |
	g2 g4._\piuf g8 |
	a2 r |
	g2 g4. g8 |
	c2 r |
	a\sf c ~|
	c c |
	gis1 |
	a2 a\ff |
	d1 |
%161
	c |
	b2 r |
	g'\sf e4. d8 |
	d2 r4 d |
	g2\sf e4. d8 |
	d2 r4 d |
	cis4( b' a g |
	fis e d cis) |
	d2. d4 |
	d r r2 |
%171
	g2\ff e4. d8 |
	d2 r4 d |
	g2 e4. d8 |
	d2 r4 d |
	cis( b' a g |
	fis e d cis) |
	d2 d |
	d1 ~|
	d2 r |
	g2\sf e4. d8 |
%181
	d2. d4 |
	c'2 a4. b8 |
	b2 r |
	g\sf e4. d8 |
	d2. d4 |
	c'2 a4. b8 |
	b2 d, |
	g1\sf ~|
	g2 f-. |
	g-. d-. |
%191
	e-. a-. |
	d,-. e-. |
	b1 ~|
	b |
	a ~|
	a |
	g\fermata |
}

clarinettoII = \relative c'' {\key g \major
	R1*13 |
	d2\ff c4. b8 |
	b1 |
	d2 c4. b8 |
	b2 r |
	R1 |
	r2 d4 d |
	d2. e4 |
%21
	e2 d |
	a\f g4. fis8 |
	fis1 |
	a2 g4. fis8 |
	fis1 |
	R1 |
	r2 d'4 d |
	a'4.\espressivo fis8 e4 d |
	d2 d |
	b2. b4 |
%31
	c1 |
	d |
	e |
	g2 e4. dis8 |
	dis1 |
	a'2 fis4. e8 |
	e1 |
	a2.\sf a4 |
	g2 c, |
	d2 gis, |
%41
	a1 ~|
	a |
	b4-. g-. b-. d-. |
	g-. d-. e-. e-. |
	a, c b a |
	g2 fis |
	g r |
	R1*6 |
%54
	d'2\f b4. a8 |
	a2 r4 a |
	d2 b4. a8 |
	a2 r4 a |
	d,4 e fis a |
	gis a b d |
	c d e g,! |
%61
	fis g a c |
	b g c4. b8 |
	b2 r4 fis |
	g2 c |
	b r |
	r r4 a |
	g4 fis e cis |
	a' fis d2 |
	R1 |
	r2 r4 g |
%71
	g( b a g) |
	fis2 r4 a |
	d, e fis a |
	fis g a d |
	fis, g a a |
	a2 r4 fis |
	fis g a c |
	b2. b4 |
	b r r2 |
	R1 |
%81
	b2 a4. gis8 |
	gis2 a ~|
	a gis |
	a4. a8 a2 |
	r2 r4 a |
	f g a a |
	g a b d |
	c r r2 |
	r4 g bes2 ~|
	bes4 c c c |
%91
	bes c d bes |
	g2 r4 g |
	g a bes d |
	gis,1( |
	a4) g fis e |
	fis g a c |
	b2 r |
	c1 |
	b2 bes |
	a f |
%101
	e cis' |
	d1 |
	cis2 c |
	b g |
	fis dis' |
	e e4. dis8 |
	dis2 r |
	g e4. dis8 |
	dis2 r4 b |
	e,1\f ~|
%111
	e ~|
	e ~|
	e2 r |
	c'1 ~|
	c |
	c ~|
	c2. es4 |
	d2. r4 |
	R1*8 |
	a2\f fis4. e8 |
	e2 a |
	f4. e8 e2 |
	r4 a d2 |
%131
	bes4. a8 a2 ~|
	a g |
	c a4. g8 |
	g2 r4 g |
	a bes a c |
	bes1 |
	b!4 c b d |
	c2. b4 |
	c2 r |
	r r4 d |
%141
	cis2 g4 g |
	fis d g2 ~|
	g4 e cis2 |
	d r |
	d' c4. b8 |
	b2 a |
	g fis4. c'8 |
	b2 r4 d, |
	g a b d |
	g,1 ~|
%151
	g4 a b b |
	e,2 e4._\piuf e8 |
	fis2 r |
	g2 g4. g8 |
	c2 r |
	a\sf c ~|
	c c |
	gis1 |
	a2 a\ff |
	b1 |
%161
	a |
	g2 r |
	e'\sf e4. d8 |
	d2 r4 d |
	e2\sf e4. d8 |
	d2 r4 d |
	cis1 ~|
	cis4 e d cis |
	d2. d4 |
	d r r2 |
%171
	e2\ff e4. d8 |
	d2 r4 d |
	e2 e4. d8 |
	d2 r4 d |
	cis1 ~|
	cis4 cis d cis |
	d2 b |
	c2. c4 |
	b2 r |
	g'\sf e4. d8 |
%181
	d2. d4 |
	a'2 fis4. g8 |
	g2 r |
	g\sf e4. d8 |
	d2. d4 |
	a'2 fis4. g8 |
	g2 d |
	g1\sf ~|
	g2 f-. |
	g-. d-. |
%191
	cis-. c-. |
	b-. a-. |
	g1 ~|
	g |
	fis ~|
	fis |
	g\fermata |
}

fagottoI = \relative c {\key f \major \clef bass
	R1*13 |
	f2\ff f4. f8 |
	f1 |
	f2 f4. f8 |
	f2 a4 a |
	bes4. a8 g4 g |
	g2 f4 e |
	f4. g8 a4 b |
%21
	c2 c |
	a,\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	bes |
	a |
	d |
	f2 f, |
	c''2. c4 |
%31
	d1 |
	es |
	d |
	f2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	e,4 g c e, |
	f2 c' |
	c2 c |
%41
	d1( |
	f) ~|
	f2 c |
	r4 a-. bes-. b-. |
	c4. c8 c4 d |
	c2 c, |
	f8 a g f e d c bes |
	a f g a bes c d e |
	f a g f e d c bes |
	a f g a bes c d e |
%51
	f c e f g c, f g |
	a f e c f c f e |
	d f e g f a g b |
	a c a g f g a b |
	c c d c b a g f |
	e c d e f g a b |
	c4 d8 c b a g f |
	e g b g c a bes c |
	d d, d e fis c' bes a |
	g bes d c bes a g a |
%61
	bes a g f e d c c |
	d2 bes |
	f r |
	R1*4 |
	c''2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
%71
	g2 r4 g |
	c, d e g |
	e f g bes! |
	bes1 |
	bes,2. bes'4 |
	a4 b cis e |
	cis d e g |
	g1 ~|
	g4 f e cis |
	d2. g,4 |
%81
	d'2. d4 |
	c2 d |
	e a, |
	d4. d8 d4 g, |
	es4 f g b |
	c d es e |
	f2. es4 |
	d2. bes4 |
	f2 r4 c' |
	d2 bes |
%91
	f r |
	f'\f d4. c8 |
	c2 r4 c |
	es2 c4. b8 |
	b2 r4 g |
	e' d c c |
	c2 f4 es |
	d1 |
	c |
	g'( |
%101
	f) |
	e1 |
	d |
	a |
	g' |
	f2 f4. e8 |
	e2 r4 a, |
	a'2 f4. e8 |
	e2 r4 a, |
	a1\f ~|
%111
	a ~|
	a ~|
	a2 r |
	d1 ~|
	d |
	es ~|
	es2. e4 |
	f2. r4 |
	R1*8 |
	g2\f e4. d8 |
	d2 g |
	es4. d8 d2 |
	r4 b c2 |
%131
	c4. b8 b2 |
	r4 c f2 |
	des4. c8 c2 ~|
	c4 f, des'2 ~|
	des4 c bes g |
	es'1 ~|
	es4 des c a |
	f'4 f, bes c |
	des2 r |
	c\sf as4. g8 |
%141
	g2 r4 g |
	c2\sf as4. g8 |
	g2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	c,2 r |
	f es4. d8 |
	d2 c |
	bes a4. a8 |
%151
	f'2 es |
	d d4._\piuf d8 |
	e!2 r |
	f f4. f8 |
	f2 r |
	es,1\sf |
	f2 g |
	a1 |
	bes2 b\ff |
	c1 |
%161
	cis |
	d2 r |
	d\sf f4. f8 |
	f2 r4 c |
	d2\sf f4. f8 |
	f2 r4 a, |
	a1 ~|
	a2 a4 a |
	a2 bes4 g |
	a2 r |
%171
	b2\ff b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 a |
	a1 ~|
	a4 a a a |
	a2 a |
	bes g |
	a r |
	f'\sf d4. c8 |
%181
	c2. c4 |
	g'2 g4. a8 |
	a2 r |
	f2\sf d4. c8 |
	c2. c4 |
	g'2 g4. a8 |
	a2 r |
	r c,-.\ff |
	b-. bes-. |
	a-. as-. |
%191
	g-. e-. |
	f-. bes,-. |
	c1 ~|
	c |
	c ~|
	c |
	f\fermata |
}

fagottoII = \relative c {\key f \major \clef bass
	R1*13 |
	f2\ff f4. f8 |
	f1 |
	f2 f4. f8 |
	f2 a4 a |
	bes4. a8 g4 g |
	g2 f4 e |
	f4. g8 a4 b |
%21
	c2 c |
	a,\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	bes |
	a |
	d |
	f2 f, |
	a'2. a4 |
%31
	bes1 |
	c |
	bes |
	f'2 d4. cis8 |
	cis1 |
	g'2 e4. d8 |
	d1 |
	e,4 g c e, |
	f2 c' |
	c2 c |
%41
	d1( |
	f) ~|
	f2 c |
	r4 a-. bes-. b-. |
	c4. c8 c4 d |
	c2 c, |
	f8 a g f e d c bes |
	a f g a bes c d e |
	f a g f e d c bes |
	a f g a bes c d e |
%51
	f c e f g c, f g |
	a f e c f c f e |
	d f e g f a g b |
	a c a g f g a b |
	c c d c b a g f |
	e c d e f g a b |
	c4 d8 c b a g f |
	e g b g c a bes c |
	d d, d e fis c' bes a |
	g bes d c bes a g a |
%61
	bes a g f e d c c |
	d2 bes |
	f r |
	R1*4 |
	c''2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
%71
	g2 r4 g |
	c, d e g |
	e f g bes! |
	bes1 |
	bes,2. bes'4 |
	a4 b cis e |
	cis d e g |
	g1 ~|
	g4 f e cis |
	d2. g,4 |
%81
	d'2. d4 |
	c2 d |
	e a, |
	d4. d8 d4 g, |
	es4 f g b |
	c d es e |
	R1 |
	bes2 g4. f8 |
	f2 r4 f |
	bes2 g4. f8 |
%91
	f2 r |
	d'2\f bes4. a8 |
	a2 r4 a |
	c2 as4. g8 |
	g2 r4 g |
	c, d es f |
	f es d es |
	bes'1 |
	a2 as |
	g1 ~|
%101
	g |
	c1 |
	b2 bes |
	a1 ~|
	a |
	a2 d4. cis8 |
	cis2 r4 a |
	f'2 d4. cis8 |
	cis2 r4 a |
	fis1\f ~|
%111
	fis ~|
	fis ~|
	fis2 r |
	bes1 ~|
	bes |
	bes ~|
	bes2. des4 |
	c2. r4 |
	R1*8 |
	g'2\f e4. d8 |
	d2 g |
	es4. d8 d2 |
	r4 b c2 |
%131
	c4. b8 b2 |
	r4 c f2 |
	des4. c8 c2 ~|
	c4 f, des'2 ~|
	des4 c bes g |
	es'1 ~|
	es4 des c a |
	f'4 f, bes, c |
	des2 r |
	c'\sf as4. g8 |
%141
	g2 r4 g |
	c2\sf as4. g8 |
	g2 r4 g |
	c d e g |
	c,1 ~|
	c4 d e g |
	c,2 r |
	f es4. d8 |
	d2 c |
	bes a4. a8 |
%151
	f'2 es |
	d d4._\piuf d8 |
	cis2 r |
	d d4. d8 |
	d2 r |
	es,1\sf |
	f2 g |
	a1 |
	bes2 b\ff |
	c1 |
%161
	cis |
	d2 r |
	b\sf b4. c8 |
	c2 r4 c |
	b2\sf b4. c8 |
	c2 r4 f, |
	f1 ~|
	f2 f4 f |
	f( fis) g e |
	f!2 r |
%171
	b2\ff b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 f, |
	f1 ~|
	f4 f f f |
	f2 fis |
	g e |
	f r |
	f'\sf d4. c8 |
%181
	c2. c4 |
	e2 e4. f8 |
	f2 r |
	f2\sf d4. c8 |
	c2. c4 |
	e2 e4. f8 |
	f2 r |
	r c-.\ff |
	b-. bes-. |
	a-. as-. |
%191
	g-. e-. |
	f-. bes,-. |
	c1 ~|
	c |
	c ~|
	c |
	f,\fermata |
}

cornoI = \relative c'' {\key c \major
	c2\f r |
	R1 |
	g1\f |
	c |
	R1 |
	c, |
	g'2 r |
	R1*6 |
%14
	c2\ff c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	R1 |
	r2 e4 d |
	e4. d8 c4 c |
%21
	g2 r |
	g'\f e4. d8 |
	d1 |
	g2 e4. d8 |
	d1 |
	\repeat unfold 3 {g,\espressivo} |
	c,1\espressivo |
%30
	R1*2 |
	e'2\f e4. e8 |
	f2 r |
	c2 c4. c8 |
	e2 r |
	e2 e4. e8 |
	e1 |
	g2.\sf g,4 |
	e'2 f |
	c2 e, |
%41
	R1 |
	c'1\sf |
	r4 g-.\ff c-. e-. |
	c-. g'-. f-. e-. |
	d-. f-. e-. d-. |
	e2 d4. c8 |
	c2 r |
	c\ff a4. g8 |
	g2 r4 g4 |
	c2 a4. g8 |
%51
	g2 r |
	R1*2 |
	g'2\f e4. d8 |
	d2 r4 d |
	g2 e4. d8 |
	d2 r |
%58
	R1*18 |
	e1\f ~|
	e2 r4 e |
	e2 r |
	e r |
%80
	R1*12 |
	c2\f c4. c8 |
	c2 r4 c |
	cis2 cis4. cis8 |
	d2 r |
	R1*4 |
	d2\f d4. d8 |
%101
	d1 |
	R1*2 |
	e2\f e4. e8 |
	e2 r |
	e e,4. e8 |
	e2 r |
	e' e,4. e8 |
	e2 r |
	R1*2 |
%112
	g1 ~|
	g |
	R1*5 |
	r2 g\f |
	d' r |
%121
	r2 e |
	f r |
	r c |
	d r |
	e r |
	e r |
	R1*6 |
%133
	r2 r4 g,\f |
	c4. c8 c2 |
	R1 |
	r2 r4 g |
	c4. c8 c2 |
	c1\espressivo |
	c\espressivo |
	g\f ~|
%141
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g1 ~|
	g |
	\clef "bass" c,, ~|
	c ~|
	c ~|
%151
	c2 r |
	\clef "treble" c'' c4._\piuf c8 |
	d2 r4 d |
	c2 c4. c8 |
	c2 r |
	R1*3 |
	r2 c\ff |
	e1 |
%161
	f |
	e2 r |
	d\sf d4. e8 |
	e2 r4 e |
	d2\sf d4. e8 |
	e2 r4 e |
	e4 e e e |
	e c c c |
	g2 g |
	g r |
%171
	d'2\ff d4. e8 |
	e2 r4 e |
	d2 d4. e8 |
	e2 r4 e |
	e e e e |
	e e e e |
	g,2 g |
	g2. g4 |
	c2 r |
	R1 |
%181
	d1\sf |
	f2 d4. e8 |
	e2 r |
	R1 |
	d1\sf |
	f2 d4. e8 |
	e2 r |
	r e-.\ff |
	d-. d-. |
	c-. g-. |
%191
	g-. g-. |
	c-. c-. |
	g1 ~|
	g |
	g ~|
	g |
	e\fermata |
}

cornoII = \relative c' {\key c \major
	c2\f r |
	R1 |
	g1\f |
	c |
	R1 |
	c |
	g2 r |
	R1*6 |
%14
	c2\ff c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	R1 |
	r2 c'4 g |
	c4. g8 c4 c |
%21
	g2 r |
	g\f c4. b8 |
	b1 |
	g2 c4. b8 |
	b1 |
	\repeat unfold 3 {g,\espressivo} |
	c1\espressivo |
%30
	R1*2 |
	c'2\f c4. c8 |
	c2 r |
	c2 c4. c8 |
	e,2 r |
	e2 e4. e8 |
	e1 |
	g2.\sf g4 |
	c2 g |
	g2 e |
%41
	R1 |
	c1\sf |
	r4 e-.\ff g-. c-. |
	g-. e'-. d-. c-. |
	g-. g-. c-. c-. |
	c2 g4. c,8 |
	c2 r |
	c'\ff a4. g8 |
	g2 r4 g4 |
	c2 a4. g8 |
%51
	g2 r |
	R1*2 |
	g'2\f e4. d8 |
	d2 r4 d |
	g2 e4. d8 |
	d2 r |
%58
	R1*18 |
	e,1\f ~|
	e2 r4 e |
	e2 r |
	e r |
%80
	R1*12 |
	c'2\f c4. c8 |
	c2 r4 c |
	cis2 cis4. cis8 |
	d2 r |
	R1*4 |
	d2\f d4. d8 |
%101
	d1 |
	R1*2 |
	e2\f e4. e8 |
	e2 r |
	e e,4. e8 |
	e2 r |
	e' e,4. e8 |
	e2 r |
	R1*2 |
%112
	g1 ~|
	g |
	R1*5 |
	r2 g\f |
	d' r |
%121
	r2 g, |
	c r |
	r c, |
	g' r |
	e r |
	e' r |
	R1*6 |
%133
	r2 r4 g,,\f |
	c4. c8 c2 |
	R1 |
	r2 r4 g' |
	c,4. c8 c2 |
	c1\espressivo |
	c\espressivo |
	g\f ~|
%141
	g ~|
	g ~|
	g ~|
	g ~|
	g ~|
	g1 ~|
	g |
	\clef "bass" c,, ~|
	c ~|
	c ~|
%151
	c2 r |
	\clef "treble" c''' c4._\piuf c8 |
	d2 r4 d |
	c2 c4. c8 |
	c2 r |
	R1*3 |
	r2 c\ff |
	g1 |
%161
	d' |
	c2 r |
	c\sf c4. c8 |
	c2 r4 c |
	c2\sf c4. c8 |
	c2 r4 c |
	c4 c c c |
	c c c c |
	g2 g |
	g r |
%171
	c2\ff c4. c8 |
	c2 r4 c |
	c2 c4. c8 |
	c2 r4 c |
	c c c c |
	c c c c |
	g2 g, |
	g2. g4 |
	c2 r |
	R1 |
%181
	d1\sf |
	d'2 g,4. c8 |
	c2 r |
	R1 |
	g1\sf |
	d'2 g,4. c8 |
	c2 r |
	r c-.\ff |
	c-. g-. |
	c-. g-. |
%191
	g-. g-. |
	c,-. c-. |
	g1 ~|
	g |
	g ~|
	g |
	c\fermata |
}

trombeI = \relative c'' {\key c \major
	R1*13 |
	f2\ff d4. c8 |
	c1 |
	f2  d4. c8 |
	c1 |
	R1 |
	r2 c4 c |
	d4. e8 f4 f |
%21
	f2 e |
	c\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	R1*2 |
	c2 c4. c8 |
	c2 r |
%30
	R1*2 |
	c2\f c4. c8 |
	d2 r |
	d2 d4. d8 |
	e2 r |
	R1*2 |
	c2. c4 |
	c2 e |
	f2 c |
%41
	d1 |
	d1 |
	c2 r |
	r4 c-.\ff d-. f-. |
	e-. d-. c-. d-. |
	c2 c,4. c8 |
	c2 r |
	R1*19 |
	g''1 ~|
	g2 c,4. c8 |
	g2 r4 g |
	c2 c4. c8 |
%71
	g2 r4 g |
	c2 r |
	r r4 c |
	c2 r |
	c r |
	R1*34 |
	d2\ff d4. d8 |
%111
	d2 r |
	R1*2 |
	g,2\ff g,4. g8 |
	g2 r |
	g' g,4. g8 |
	g2 r |
	R1 |
	r2 c\f |
	g' r |
%121
	R1*5 |
	d'2 r |
	R1*13 |
	c2\f c4. g8 |
%141
	g2 r4 g |
	c2 c4. g8 |
	g2 r |
	c r |
	R1 |
	c2 r |
	R1 |
	f2 r |
	R1*3 |
%152
	d2\f d4._\piuf d8 |
	e2 r4 e |
	f2 f4. f8 |
	f2 r |
	R1*3 |
	r2 d\ff |
	c1 |
%161
	e |
	f2 r |
	f\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r |
	R1*4 |
%171
	d2\ff d4. c8 |
	c2 r4 c |
	d2 d4. c8 |
	c2 r |
	R1*2 |
	c2. c8 c |
	c2 c |
	c r |
	f\sf d4. c8 |
%181
	c1\sf ~|
	c2 c |
	c r |
	f\sf d4. c8 |
	c1\sf ~|
	c2 c |
	c r |
	r c-.\ff |
	g-. c-. |
	c-. c-. |
%191
	c-. c-. |
	c-. g-. |
	c,1 ~|
	c |
	c ~|
	c |
	c\fermata |
}

trombeII = \relative c'' {\key c \major
	R1*13 |
	c2\ff d4. c8 |
	c1 |
	c2 d4. c8 |
	c1 |
	R1 |
	r2 c4 c |
	c4. c8 c4 d |
%21
	d2 c |
	c,\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	R1*2 |
	c2 c4. c8 |
	c2 r |
%30
	R1*2 |
	c'2\f c4. c8 |
	d2 r |
	d2 d4. d8 |
	e2 r |
	R1*2 |
	c,2. c4 |
	c2 c' |
	c2 c |
%41
	d1 |
	g,1 |
	c,2 r |
	r4 c'-.\ff d-. d-. |
	g,-. g-. c-. g-. |
	c2 c,4. c8 |
	c2 r |
	R1*19 |
	g'1 ~|
	g2 c,4. c8 |
	g2 r4 g |
	c2 c4. c8 |
%71
	g2 r4 g |
	c2 r |
	r r4 c |
	c2 r |
	c r |
	R1*34 |
	d'2\ff d4. d8 |
%111
	d2 r |
	R1*2 |
	g,2\ff g,4. g8 |
	g2 r |
	g' g,4. g8 |
	g2 r |
	R1 |
	r2 c\f |
	g' r |
%121
	R1*5 |
	d'2 r |
	R1*13 |
	c,2\f c4. g8 |
%141
	g2 r4 g |
	c2 c4. g8 |
	g2 r |
	c r |
	R1 |
	c2 r |
	R1 |
	f'2 r |
	R1*3 |
%152
	d2\f d4._\piuf d8 |
	e2 r4 e |
	d2 d4. d8 |
	d2 r |
	R1*3 |
	r2 d\ff |
	c1 |
%161
	e |
	f2 r |
	d\sf g,4. c8 |
	c2 r4 c |
	d2\sf g,4. c8 |
	c2 r |
	R1*4 |
%171
	g2\ff g4. c,8 |
	c2 r4 c |
	g'2 g4. c,8 |
	c2 r |
	R1*2 |
	c2. c8 c |
	c2 c |
	c r |
	R1 |
%181
	c1\sf ~|
	c2 c |
	c r |
	R1 |
	c1\sf ~|
	c2 c |
	c r |
	r c-.\ff |
	g-. c-. |
	c-. c-. |
%191
	c-. c-. |
	c-. g-. |
	c1 ~|
	c |
	c ~|
	c |
	c\fermata |
}

timpani = \relative c {\key c \major \clef "bass"
	R1*13 |
	f2\startTrillSpan\ff f4.\stopTrillSpan f8 |
	d4 r r2 |
	f2\startTrillSpan\ff f4.\stopTrillSpan f8 |
	d4 r r2 |
	R1 |
	r2 f4 c |
	f4. f8 f4 f |
%21
	c4 r r2 |
	c2\startTrillSpan\f c4.\stopTrillSpan c8 |
	c4 r r2 |
	c2\startTrillSpan c4.\stopTrillSpan c8 |
	c1\startTrillSpan |
	c4\stopTrillSpan r r2 |
	R1 |
	c2\startTrillSpan c4.\stopTrillSpan c8 |
	f4 r f f |
	f r r2 |
%30
	R1*2 |
	f1\startTrillSpan |
	f4\stopTrillSpan r r2 |
	R1*3 |
	c2.\startTrillSpan c4\stopTrillSpan |
	f r c r |
	f4 r c r |
%41
	R1 |
	f1\startTrillSpan\sf |
	c4\stopTrillSpan r r2 |
	R1 |
	r4 c\ff f f |
	c2\startTrillSpan ~ c4\stopTrillSpan c |
	f r r2 |
	R1*20 |
	c2\f\startTrillSpan c4.\stopTrillSpan c8 |
	f4 r r f |
	c2\startTrillSpan c4.\stopTrillSpan c8 |
%71
	f4 r r f |
	c2 r |
	r r4 c |
	c2 r |
	c r |
	R1*12 |
	f2\startTrillSpan\f f4.\stopTrillSpan f8 |
	f4 r r f |
	f2\startTrillSpan f4.\stopTrillSpan f8 |
%91
	f2 r |
	f2\startTrillSpan f4.\stopTrillSpan f8 |
	f2 r4 f |
	c2\startTrillSpan c4.\stopTrillSpan c8 |
	f4 r r2 |
	R1*44 |
	c2\startTrillSpan\f c4.\stopTrillSpan c8 |
%141
	c4 r r c |
	c2\startTrillSpan c4.\stopTrillSpan c8 |
	c4 r r2 |
	c r |
	c r |
	c r |
	c r |
	f1\startTrillSpan |
	f4\stopTrillSpan r r2 |
%150
	R1*2 |
	f1\startTrillSpan\f |
	R1\stopTrillSpan |
	f1\startTrillSpan |
	f4\stopTrillSpan r r2 |
	R1*3 |
	r2 f\ff |
	c1\startTrillSpan |
%161
	R1\stopTrillSpan |
	f4 r r2 |
	f2\startTrillSpan\sf f4.\stopTrillSpan f8 |
	c2 r4 c |
	f2\startTrillSpan\sf f4.\stopTrillSpan f8 |
	c2 r |
	R1*4 |
%171
	f1\startTrillSpan\ff |
	c4\stopTrillSpan r r c |
	f1\startTrillSpan |
	c4\stopTrillSpan r r c |
	f f f f |
	f f f f |
	c1\startTrillSpan ~|
	c2. c4\stopTrillSpan |
	f r r2 |
	R1 |
%181
	c1\startTrillSpan ~|
	c2. c4\stopTrillSpan |
	f r r2 |
	R1 |
	c1\startTrillSpan ~|
	c2. c4\stopTrillSpan |
	f2 r |
	r f\ff |
	f c |
	c c |
%191
	c c |
	f f |
	c1\startTrillSpan ~|
	c\stopTrillSpan |
	c\startTrillSpan ~|
	c2.\stopTrillSpan c4 |
	f1\startTrillSpan\fermata |
}

tromboneI = \relative c'' {\key f \major \clef "alto"
	R1*13 |
	a2\ff bes4. a8 |
	a1 |
	a2 bes4. bes8 |
	bes1 |
	R1*3 |
%21
	R1 |
	e,2\f f4. e8 |
	e1 |
	e2 f4. e8 |
	e1 |
	R1*7 |
%33
	f1 |
	f2 f4. f8 |
	a1 |
	g2 g4. g8 |
	f1 |
	bes2. bes4 |
	a2 bes |
	c2 fis, |
%41
	g1 |
	g |
	r4 f-.\ff a-. c-. |
	a-. f-. bes-. a-. |
	g-. bes-. a-. g-. |
	a2 e |
	f r |
	f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
%51
	c2 r |
	R1*2 |
	c'2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
	g2 r |
%58
	R1*52 |
	a2\ff d,4. d8 |
%111
	d2 r |
	d d,4. d8 |
	d2 r |
	d' d4. d8 |
	d2 r |
	es es4. es8 |
	es2 r |
	R1 |
	r2 fis\f |
	g r |
%121
	r2 a_\semprepiuf |
	bes r |
	r b |
	c r |
	cis r |
	d r |
	R1*13 |
	c,2\f as4. g8 |
%141
	g2 r4 g |
	c2 as4. g8 |
	g2 r |
	R1 |
	c'2\f bes4. a8 |
	a2 g |
	f e |
	f r |
	R1 |
	r2 c' |
%151
	bes a |
	f\f f4._\piuf f8 |
	a2 r4 a, |
	f'2 f4. f8 |
	bes2 r4 bes, |
	g'1\sf |
	f2 bes |
	fis1 |
	g2 g\ff |
	a1 |
%161
	bes |
	a2 r |
	R1*8 |
%171
	g2\ff g4. a8 |
	a2 r4 a |
	g2 g4. a8 |
	a2 r4 a |
	b b b b |
	b b b b |
	c2 c |
	bes2. g4 |
	f2 r |
	R1 |
%181
	bes1\sf ~|
	bes2 bes |
	a r |
	R1 |
	bes1\sf ~|
	bes2 bes |
	a r |
	r a-.\ff |
	g-. g-. |
	c-. f,-. |
%191
	f-. bes-. |
	a-. g-. |
	a1 ~|
	a |
	g ~|
	g |
	f\fermata |
}

tromboneII = \relative c' {\key f \major \clef "alto"
	R1*13 |
	c2\ff f4. f8 |
	f1 |
	c2 f4. f8 |
	f1 |
	R1*3 |
%21
	R1 |
	g,2\f a4. c8 |
	c1 |
	g2 a4. c8 |
	c1 |
	R1*7 |
%33
	d1 |
	d2 d4. d8 |
	cis1 |
	cis2 cis4. cis8 |
	d1 |
	g2. g4 |
	c,2 c |
	c2 c |
%41
	d1 |
	f |
	R1 |
	r4 c-. d-. f-. |
	e-. c-. c-. d-. |
	c2 bes |
	a r |
%48
	R1*40 |
	d2\f bes4. f8 |
	f2 r4 f |
	d'2 bes4. f8 |
%91
	f2 r |
	f'\sf d4. c8 |
	c2 r4 c |
	es2 c4. b8 |
	b2 r |
	R1*14 |
	d2\ff a4. a8 |
%111
	a2 r |
	d d,4. d8 |
	d2 r |
	bes' bes4. bes8 |
	bes2 r |
	bes bes4. bes8 |
	bes2 r |
	R1 |
	r2 es\f |
	d r |
%121
	r2 es_\semprepiuf |
	f r |
	r f |
	g r |
	g r |
	fis r |
	R1*21 |
	f2 es4. d8 |
	d2 c |
	bes a |
%151
	f' es |
	d\f d4._\piuf d8 |
	cis2 r4 a |
	d2 d4. d8 |
	d2 r4 bes |
	es1\sf |
	d2 c |
	c1 |
	d2 f\ff |
	f2 fis |
%161
	g1 |
	f2 r |
	R1*8 |
%171
	d2\ff f4. f8 |
	f2 r4 f |
	d2 f4. f8 |
	f2 r4 f |
	f f f f |
	f f f f |
	a2 a |
	g2. e4 |
	f2 r |
	R1 |
%181
	e1\sf ~|
	e2 e |
	f r |
	R1 |
	e1\sf ~|
	e2 e |
	f r |
	r es-.\ff |
	d-. c-. |
	c-. c-. |
%191
	d-. g-. |
	f-. f-. |
	f1 ~|
	f |
	bes, ~|
	bes |
	a\fermata |
}

trombonebasso = \relative c, {\key f \major \clef "bass"
	f2\f r |
	R1 |
	e1\f |
	d |
	g |
	a2 d |
	c r |
	R1*6 |
%14
	f2\ff f4. f8 |
	f1 |
	f2 f4. f8 |
	f1 |
	R1*3 |
%21
	R1 |
	c2\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	bes |
	a |
	e' |
	f2 r4 f |
	es1 |
%31
	d1 |
	c |
	bes |
	bes'2 bes4. bes8 |
	a1 |
	a2 a4. a8 |
	d,1 |
	e2. e4 |
	f2 g |
	a2 a |
%41
	bes1 |
	b |
	R1 |
	r4 a-.\ff bes-. b-. |
	c-. e,-. f-. b,-. |
	c2 c |
	f r |
	R1*20 |
	c'2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
%71
	g2 r4 g |
	c, d e g |
	e f g bes! |
	bes1 ~|
	bes2. bes4 |
	a2 r |
	R1*11 |
	bes2\f g4. f8 |
	f2 r4 f |
	bes2 g4. f8 |
%91
	f2 r |
	d'\sf bes4. a8 |
	a2 r4 a |
	c2 as4. g8 |
	g2 r |
	R1*14 |
	fis2\ff fis4. fis8 |
%111
	fis2 r |
	d' d,4. d8 |
	d2 r |
	g g,4. g8 |
	g2 r |
	g' g,4. g8 |
	g2 r |
	R1 |
	r2 a'\f |
	bes r |
%121
	r c,_\semprepiuf |
	d r |
	r d |
	e r |
	a r |
	d r |
	R1*13 |
	c2\f as4. g8 |
%141
	g2 r4 g |
	c2 as4. g8 |
	g2 r |
	c bes4. a!8 |
	a2 g |
	f2 e |
	d c |
	d c |
	bes f |
	f' es4. d8 |
%151
	d2 c |
	bes\f bes4._\piuf bes8 |
	a2 r4 a |
	d2 d4. d8 |
	bes2 r4 bes |
	es1\sf |
	f2 g |
	a1 |
	bes2 b\ff |
	c1 |
%161
	cis |
	d2 r |
	R1*8 |
%171
	b,2\ff b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 c |
	d d d d |
	d d d d |
	c2 c |
	c2. c4 |
	f2 d4. c8 |
	c2 r |
%181
	c1\sf ~|
	c2 c |
	f d4. c8 |
	c2 r |
	c1\sf ~|
	c2 c |
	f r |
	r c'-.\ff |
	b-. bes-. |
	a-. as-. |
%191
	g-. e-. |
	f-. bes,-. |
	c1 ~|
	c |
	c ~|
	c |
	f,\fermata |
}

violinI = \relative c' {\key f \major
	<a f'>2\f r |
	R1 |
	c1\f |
	f ~|
	f2 e |
	f1 |
	e2 r |
	R1*6 |
%14
	<f' c f,>2\ff d4. c8 |
	c1 |
	q2 d4. c8 |
	c2 f,4 f |
	g4. a8 bes4 bes |
	bes2 a4 g |
	a4. c8 c4 d |
%21
	d2 c |
	c'\f a4. g8 |
	g1 |
	c2 a4. g8 |
	g2 c,,4 c |
	g'4. e8 d4 c |
	c2 c'4 c |
	g'4. e8 d4 c |
	c2 c |
	r c,4 c |
%31
	f4. d8 c4 bes |
	<es c'>2 q4. q8 |
	<d d'>8 bes' f d f bes d f |
	bes4 r r d, |
	e8 cis a e a cis e a |
	cis4 r r e, |
	f8 d a f f a d f |
	g_\piuf e c g g c e g |
	a, c f a bes g f e |
	c' a g f es' c bes a |
%41
	d bes g d d g bes d |
	d b g f d f g d' |
	c4\ff f,,-. a-. c-. |
	f-. a-. g-. f-. |
	e d c f |
	a,2 g4. f8 |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f,8 a g bes a f g c |
	b d c e d a' g f |
	e c d e f2 ~|
	f4 a g f |
	e8 c d e f g a f |
%71
	d'4 a g f |
	e8 c bes! a g f e d |
	c e' d c bes a g f |
	e g' f e d c bes a |
	g bes' bes a g f e d |
	cis4 d e2 |
	r r4 e, |
	a b cis e |
	cis d e a |
	d2 bes4. a8 |
%81
	a2 r4 d, |
	d'2 bes4. a8 |
	a2 r4 d, |
	g,8 d a' d, bes' g bes d |
	g es d f es c d f |
	es c b d c g bes c |
	a g' f es d c a f |
	f' bes, c d es f g a |
	bes d c bes a g f es |
	d c bes d es f g es |
%91
	c' a f g a bes c a |
	f'4 r r2 |
	r8 f, es d c bes a g |
	fis4 r r2 |
	r8 g a b c d es f |
	g es d b c g c bes |
	a c es g f d bes es |
	d2 r |
	c'\sf as4. g8 |
	g2 ~ g8 f g a |
%101
	b c d es f4 d |
	R1 |
	d2\sf bes4. a8 |
	a2 ~ a8 gis a b |
	cis d e f g4 e, |
	a2 f4. e8 |
	e cis a e a cis e a |
	a2 f4. e8 |
	e cis a e cis' a e cis |
	d4\ff e fis a |
%111
	d e fis a |
	c bes a fis |
	c bes a d, |
	d fis g bes |
	d fis g bes |
	es bes g f |
	es bes g e |
	f\f g a c |
	fis,_\semprepiuf g a c |
	g a bes d |
%121
	a4 bes c es |
	bes c d f |
	b,2. b4 |
	c d e g |
	cis,2. cis4 |
	d8\f d e fis g a bes g |
	e g e d cis bes a cis |
	d, d' e fis g a bes g |
	c bes a g fis es d fis |
	g f es d c g es c |
%131
	f as c f g d e f |
	e c d e f g as f |
	bes as g f e des c bes |
	as g f e f g as f |
	bes4 f' es des |
	c8 bes as g as bes c as |
	c4 ges' f es |
	des8 c bes a bes f a f |
	bes4 as' g f |
	e! c r2 |
%141
	f2\sf d4. c8 |
	c2 r4 c |
	f2\sf d4. c8 |
	c2 r4 g |
	c d e g |
	c2. c,4 |
	c d e g |
	f2 r4 f, |
	f'2 es4. d8 |
	d2 c |
%151
	bes c4. c8 |
	d bes f d d_\piuf f bes d |
	e cis a e e a cis e |
	f d a f f a d f |
	f d bes f f bes d f |
	g2:8 g: |
	f: e: |
	es: es: |
	d: d':\ff |
	c: c: |
%161
	bes: bes: |
	a8 f d a d f a d |
	f2\sf d4. c8 |
	c4 f,,8 a c f a c |
	f2\sf d4. c8 |
	c4 c,,8 f a c f a |
	b,4 a' g f |
	e d c b |
	c2 c4. c8 |
	c( a) f a c f a c |
%171
	f2\ff d4. c8 |
	c4 f,,8 a c f a c |
	f2 d4. c8 |
	c4 c,,8 f a c f a |
	b,4 a' g f |
	e d c b |
	c c' a fis |
	g e c e |
	f8 c a f bes d c bes |
	f' a g f d' f e d |
%181
	c bes g e c bes g e |
	c e g bes c e g bes |
	a f c a bes d c bes |
	f' a g f d' f e d |
	c bes g e c bes g e |
	c8 e g bes c e g bes |
	a2\ff c, |
	f1\sf ~|
	f2 e-. |
	f-. c-. |
%191
	d-. g-. |
	c,-. d-. |
	a1 ~|
	a |
	g ~|
	g |
	f\fermata |
}

violinII = \relative c' {\key f \major
	<a f'>2\f r |
	R1 |
	g1\f |
	<a d> ~|
	q2 c ~|
	c b |
	c r |
	R1*6 |
%14
	<f' c f,>2\ff bes,4. a8 |
	a1 |
	q2 bes4. a8 |
	a2 c,4 c |
	d4. c8 bes4 e |
	e2 c'4 c |
	d4. e8 f4 f |
%21
	f2 e |
	<g c, e,>\f f4. e8 |
	e1 |
	c'2 f,4. e8 |
	e2 c,4 c |
	e2 g4 g |
	c4. a8 g4 f |
	bes2. bes4 |
	bes2 a |
	a,2. a4 |
%31
	bes2 f'4 f |
	c'4. a8 g4 f |
	d'8 bes f d f bes d f |
	bes4 r r d, |
	e8 cis a e a cis e a |
	cis4 r r e, |
	f8 d a f f a d f |
	g_\piuf e c g g c e g |
	a, c f a bes g f e |
	c' a g f es' c bes a |
%41
	d bes g d d g bes d |
	d b g f d f g d' |
	c4\ff c,,-. f-. a-. |
	c-. f-. d-. d-. |
	c bes a g |
	f2 e4. f8 |
	f2 r |
%48
	R1*6 |
	c'2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
	g2 r4 g |
	c,4 d e g |
	fis g a c |
	bes c d f |
%61
	e f g bes |
	a8 a, bes c d e f g |
	a c bes a g f e d |
	c a bes c d e f g |
	a c bes a g f e d |
	c f e d c a g e |
	f f e g f f' e d |
	c4 c,4. a8 b c |
	d e f g a b c d |
	e4 e,4. e8 d c |
%71
	b c d e f g a b |
	c c bes a g f e d |
	c c' bes a g f e d |
	c e' d c bes a g f |
	e g' g f e d c bes |
	e2 r4 e, |
	e f g bes |
	a1 ~|
	a4 a g e |
	d8 d e fis g a bes c |
%81
	d d, e fis g a bes c |
	d d, e fis g a bes d, |
	e fis g a fis g a bes |
	g d bes d g d g bes |
	es4 d8 f es c d f |
	es c b d c g bes c |
	a g' f es d c a f |
	f' bes, c d es f g a |
	bes d c bes a g f es |
	d c bes d es f g es |
%91
	c'4 r r2 |
	r8 f,, g a bes c d es |
	f4 es8 d c bes a g |
	fis4 r r2 |
	r8 g a b c d es f |
	g es d b c g c bes |
	a4 r r2 |
	f'\sf d4. c8 |
	c2. c4 |
	b8 b c d es f g a |
%101
	b4 r r b, |
	g'2\sf e4. d8 |
	d2. d4 |
	cis8 cis d e f gis a b |
	cis4 r r cis, |
	<a d,>2 <b gis>4. <cis a>8 |
	q4 e,8 cis e a cis e |
	f2 <b, gis>4. <cis a>8 |
	q4 e,8 cis a' e cis a |
	a4\ff bes! c d |
%111
	a' bes c d |
	a' d, d c |
	a d, d c |
	bes c d g |
	bes c d g |
	bes g es bes |
	bes g es des |
	c2\f r |
	c4 d es fis_\semprepiuf |
	g2 r |
%121
	es4 f a a |
	bes2 r |
	as4 g f as |
	g2 r4 g |
	cis d e a |
	a,8\f d e fis g a bes g |
	e g e d cis bes a cis |
	d, d' e fis g a bes g |
	c bes a g fis es d fis |
	g f es d c g es c |
%131
	c2 b |
	r8 c' d e f g as f |
	bes as g f e des c bes |
	as g f e f g as f |
	bes g c as des bes es bes |
	c4 r r c |
	c8 a des bes es c f c |
	des4 f des c |
	bes8 as g f e g f a |
	c bes as g f g as f |
%141
	b c d c b a! g b |
	c c, d e f g as f |
	b c d e f d g f |
	e2 r |
	c' bes4. a8 |
	a2 g |
	f e |
	f, es4 c |
	f g a c |
	f2. f,4 |
%151
	f f8 g a f g a |
	bes f d bes bes_\piuf d f bes |
	cis a e cis cis e a cis |
	d a f d d f a d |
	d bes f d d f bes d |
	es2:8 es: |
	d: c: |
	c: c: |
	bes: d':\ff |
	c: a: |
%161
	g: e: |
	f8 d, f a d f a d |
	f2\sf r4 f,, |
	c8 c f a c f a c |
	f2\sf r4 f,, |
	c8 a c f a c f a |
	b,4 b b b |
	b b c b |
	c a bes g |
	a8 c, f a c f a c |
%171
	f2\ff r4 f,, |
	c8 c f a c f a c |
	f2 r4 f,, |
	c8 a c f a c f a |
	b,4 b b b |
	b b c b |
	c4 a' fis c |
	g' c, bes g |
	a8 c a f bes d c bes |
	f' a g f d' f e d |
%181
	c bes g e c bes g e |
	c e g bes c e g bes |
	a f c a bes d c bes |
	f' a g f d' f e d |
	c bes g e c bes g e |
	c8 e g bes c e g bes |
	a2\ff a, |
	bes-. a-. |
	g-. g-. |
	c-. c-. |
%191
	<b g>-. <bes g>-. |
	a-. g-. |
	f1 ~|
	f |
	e ~|
	e |
	c\fermata |
}

viola = \relative c {\key f \major \clef alto
	<f a>2\f r |
	R1 |
	e1\f |
	f |
	<g bes> |
	f2 f |
	<e g> r |
	R1*6 |
%14
	<a' f c>2\ff bes4. f8 |
	f1 |
	a2 bes4. f8 |
	f2 f4 f |
	f4. f8 f4 bes, |
	bes2 f'4 g |
	a4. g8 f4 d |
%21
	g2 c, |
	c'\f c4. c8 |
	c1 |
	<c e,>2 c4. c8 |
	c2 c,4 c |
	<g e>1 |
	<a f> |
	c2 g' |
	f f |
	f,2. f4 |
%31
	f2 f |
	f' r4 f |
	f8 d bes f bes d f bes |
	d4 r r d |
	cis8 a e cis cis e a c |
	e4 r r a, |
	a8 f d a d f a d |
	c_\piuf bes g e e g bes c |
	a2:8 bes2: |
	c: fis,: |
%41
	g: g: |
	g: g: |
	a4\ff a,-. c-. f-. |
	a-. c-. bes-. a-. |
	g g c, d |
	c2 bes |
	a r |
	f'\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
%51
	c2 r4 c |
	f, g a c |
	b c d f |
	e c f2 ~|
	f4 e d4. d8 |
	c e, f g a b c d |
	g,4 e' d4. d8 |
	c2 r4 c |
	c bes a fis |
	g a bes d |
%61
	c d e g |
	f8 f, g a bes c d e |
	f a g f e d c bes |
	a f g a bes c d e |
	f a g f e d c bes |
	a4 c f e |
	d4 c b b' |
	c r r8 c, b a |
	b c d e f g a b |
	c4 c,4. c8 b a |
%71
	d e f g a b c d |
	e4 r r g, |
	c, d e g |
	c, d e g |
	e f g g |
	a,4 b cis e |
	cis d e g |
	g1 ~|
	g4 f e cis |
	d8 d e fis g a bes c |
%81
	d d, e fis g a bes c |
	d d, e fis g a bes d, |
	e fis g a fis g a bes |
	g4 r r g, |
	es4 f g b |
	c d es e |
	f g a c |
	d8 d, es f g a bes c |
	d f es d c bes a g |
	f es d f g a bes g |
%91
	es' c d bes c d es c |
	f4 r r2 |
	R1 |
	es,2 c4. b8 |
	b4 f' es d |
	es f g es |
	c a' bes g |
	f2 bes |
	f,8 g a bes c d es f |
	g b c d es4 r |
%101
	r2 <g,, d'>4 <g f'> |
	<g e'!>2 c' |
	g,8 a b c d e f g |
	a cis d e f4 r |
	r2 e4 g, |
	f2 d4. cis8 |
	cis e cis a cis e a cis |
	d2 d,4. cis8 |
	cis e cis a e' cis a e |
	fis4\ff g a c |
%111
	fis g a c |
	d d c a |
	d, d c a |
	g a bes d |
	g a bes d |
	es es bes g |
	g es bes bes |
	a2\f r |
	a4 bes c es_\semprepiuf |
	d2 r |
%121
	c4 d es es |
	f2 r |
	f,4 g as f |
	g2 r4 g |
	a b cis g' |
	fis\f r r d |
	cis d e g |
	fis d g2 |
	es4. d8 d2 |
	r2 c' |
%131
	as4. g8 g2 |
	r f |
	des4. c8 c2 ~|
	c4 f, des' des |
	des c bes g |
	es'2. es4 |
	es des c a |
	f'2. f4 |
	f2 r |
	c'8 bes as g f g as f |
%141
	b c d c b a! g b |
	c c, d e f g as f |
	b4 r r g, |
	c d e g |
	c2. c,4 |
	c4 d e g |
	c2. c,4 |
	f, g a c |
	d2( c4) f, |
	f g a c |
%151
	f f8 g a f g a |
	bes d, bes f f_\piuf bes d f |
	a e cis a a cis e a |
	a f d a a d f a |
	bes f d bes bes d f bes |
	<bes g>2:8 q: |
	bes: bes: |
	fis: fis: |
	g: g:\ff |
	a: <a fis>: |
%161
	<bes g>: q: |
	<a f> r |
	d,\sf f4. <a f>8 |
	q2 r4 f |
	d2\sf f4. <a f>8 |
	q2 r4 q |
	<a f>4 q q q |
	q q q q |
	q fis4 g e |
	f! f,8 a c f a c |
%171
	f2\ff r4 f,, |
	f8 c f a c f a c |
	f2 r4 f, |
	c8 a c f a4 <a f> |
	q q q q |
	q q q q |
	q c c a |
	bes g e c |
	f2  <f bes>4. q8 |
	<f a>2 g |
%181
	<g bes>2. q4 |
	q2. e4 |
	f2 <f bes>4. q8 |
	<f a>2 g |
	<g bes>2. q4 |
	<g bes>2. e4 |
	f2\ff f-. |
	f-. es-. |
	d-. <c e>-. |
	<c f>-. q-. |
%191
	d-. c-. |
	q-. <d f>-. |
	c1 ~|
	c |
	bes ~|
	bes |
	a\fermata |
}

soprano = \relative c'' {\key f \major \clef soprano
	R1*6 |
	r4
	<<{\voiceOne
		c2\f d4 |
		f\> e8.\! e16 e4 f |
		g1 |
		c,4 c c c |
		c1 |
		d2 d4. d8 |
		e1\fermata
	} \new Voice {\voiceTwo
		g,2 a4 |
		c bes8. bes16 bes4 d |
		c1 |
		c4 c c c |
		c1 |
		b2 b4. b8 |
		c1 |
	}>> \oneVoice
%14
	f2\ff d4. c8 |
	c1 |
	f2 d4. c8 |
	c1 |
	R1 |
	r2 c4 c |
	d4. e8 f4 f |
%21
	f2 e |
	c a4. g8 |
	g1 |
	c2 a4. g8 |
	g1 ~|
	g4 r r2 |
	r2 c4 c |
	g'4. e8 d4 c |
	c2 c |
%30
	R1*2 |
	c2 c4. c8 |
	d2 r |
	d d4. d8 |
	e1 |
	e2 e4. e8 |
	f2 r |
	c2.\sf c4 |
	a'2 e |
	f2 es |
%41
	d2. d4 |
	f2. d4 |
	c2 f |
	a g4 f |
	e d c f |
	a,2( g4. f8) |
	f2 r |
	R1*14 |
%62
	f'2\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	f, g a c |
	b4( c d f |
	e c f2) ~|
	f4( a g f |
	e c f2) ~|
%71
	f b, |
	c1 ~|
	c ~|
	c2. c4 |
	c d e g |
	cis,4( d) e2 |
	a, r4 e |
	a( b cis) e |
	a,2 r |
	d bes4. a8 |
%81
	a2 r4 g |
	d'2 bes4. a8 |
	a2 r4 d |
	g, a bes d |
	g4( f es d |
	es d c bes |
	a) bes c2 |
	r4 f, bes2 ~|
	bes4 a c2 ~|
	c4 bes es2 ~|
%91
	es4( d) c2 |
	f r |
	R1*5 |
	f2 d4. c8 |
	c2. c4 |
	b2( c |
%101
	d) r4 d |
	g2 e!4. d8 |
	d2. d4 |
	cis2( d |
	e) r |
	a f4. e8 |
	e2 r4 e |
	a2 f4. e8 |
	e2 r4 a,\ff |
	d2 d, |
%111
	r a'4 a |
	c2. c4 |
	c2 r4 d |
	bes2 g |
	r bes4 bes |
	es2. es4 |
	es2 r |
	f,4(\f g) a c |
	fis,2. fis4 |
	g( a) bes d |
%121
	a2. a4 |
	bes c d f |
	b,1( |
	c4 d e g |
	cis,2.) cis4 |
	d2 r |
	R1*2 |
	c2\f a4. g8 |
	g2 r4 c |
%131
	f2 d4. c8 |
	c2. c4 |
	bes2 bes4. bes8 |
	as2 r4 as |
	bes f' es des |
	c1 ~|
	c4( ges' f) es |
	des2. c4 |
	bes2.( f'4 |
	e c f2) ~|
%141
	f4( d b) g |
	c2 r4 c |
	b2 f' |
	e r4 g, |
	c d e g |
	c,1 ~|
	c4( d e) g |
	a,2 r |
	f' es4. d8 |
	d2 c |
%151
	bes c |
	d2 d4. d8 |
	e!1 |
	f2 f4. f8 |
	f2 r4 bes, |
	g'1( |
	f2 e! |
	es1 |
	d |
	c |
%161
	bes2.) bes4 |
	a2 r |
	f'2\sf d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	b4( a' g f |
	e d c b |
	c2.) c4 |
	c2 r |
%171
	f2\ff d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
	c2 r4 c |
	b( a' g f |
	e d c) b |
	c2 c |
	c2. c4 |
	c2 f |
	f d |
%181
	c2. c4 |
	g'2. g4 |
	a2 f |
	f d |
	c2. c4 |
	g'2. g4 |
	a2 c, |
	f1 ~|
	f2 e |
	f c |
%191
	d g |
	c, d |
	a1 ~|
	a |
	g ~|
	g |
	f\fermata |
}

sopranoLyrics = \lyricmode {
	Was be -- trübst du dich mei -- ne See -- le und bist so
	un -- ru -- hig in mir? Har -- re auf Gott! har -- re auf
	Gott! denn ich wer -- de ihm noch dan -- ken Har -- re auf
	Gott! har -- re auf Gott! denn ich wer -- de ihm noch
	dan -- ken. Har -- re auf Gott! har -- re auf Gott,
	har -- re auf Gott! denn ich wer -- de ihm noch dan -- ken,
	dass es mei -- nes An -- ge -- sichts Hül -- fe und mein
	Gott ist. Preis sei dem Herrn, dem Gott I -- sra -- els,
	von nun an bis in E -- wig -- keit, von nun an bis in
	E -- wig -- keit, in E -- wig -- keit! Preis sei dem Herrn,
	dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit, von nun an bis in E -- wig -- keit! Preis
	sei dem Herrn, dem Herrn, dem Gott I -- sra -- els, dem Gott!
	Preis sei dem Herrn, dem Gott I -- sra -- els, von nun an
	bis in E -- wig -- keit, von nun an bis in E -- wig -- keit!
	Preis sei dem Herrn, dem Gott I -- sra -- els, von nun an
	bis in E -- wig -- keit! Preis sei dem Herrn, dem Gott
	I -- sra -- els, dem Gott I -- sra -- els, von nun an bis
	in E -- wig -- keit, in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit! Preis
	sei dem Herrn dem Gott, dem Gott I -- sra -- els! Preis sei
	dem Herrn in E -- wig -- keit! Preis sei dem Herrn, dem
	Gott I -- sra -- els, in E -- wig -- keit! Preis sei dem
	Herrn, dem Gott I -- sra -- els, in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von
	nun an bis in E -- wig -- keit, von nun an bis in
	E -- wig -- keit, in E -- wig -- keit!
}

alto = \relative c' {\key f \major \clef soprano
	R1*6 |
	r4 e2\f f4 |
	a\> g8.\! g16 g4 bes |
	bes1 |
	bes4 bes bes bes |
%11
	a1 |
	as2 as4. as8 |
	g1\fermata |
	a2\ff bes4. a8 |
	a1 |
	a2 bes4. a8 |
	a2 f4 f |
	g4. a8 bes4 bes |
	bes2 a4 g |
	a4. bes8 c4 d |
%21
	g,2 g |
	g f4. e8 |
	e1 |
	g2 f4. e8 |
	e1 ~|
	e4 r g g |
	c4. a8 g4 f |
	bes1 ~|
	bes2( a) |
	a r |
%31
	r2 f4 f |
	c'4. a8 g4 f |
	f2 d |
	d d4. d8 |
	a'1 |
	g2 g4. g8 |
	f2 r |
	c'2.\sf c4 |
	a2 bes |
	c2 fis, |
%41
	g2. g4 |
	g2. g4 |
	a2 a |
	c bes4 a |
	g bes a g |
	f2( e) |
	f r |
%48
	R1*6 |
	c'2\f a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
	g2 r4 g |
	c,4 d e g |
	fis( g a c |
	bes c d f, |
%61
	e f g bes |
	a f bes4.) a8 |
	a2 r4 e |
	f2 bes |
	a r |
	r r4 g |
	f4 e d b |
	g' e c2 |
	R1 |
	r2 r4 f |
%71
	f( a g) f |
	e2 r4 g |
	c, d e g |
	e( f g c |
	g a bes) g |
	g2 r4 e |
	e f g bes |
	a2. a4 |
	a2 r |
	R1 |
%81
	a2 g4. fis8 |
	fis2( g) ~|
	g fis |
	g4. g8 g2 |
	r2 r4 g |
	es f g g |
	f( g a) c |
	bes r r2 |
	r4 f a2 ~|
	a4 bes bes bes |
%91
	a( bes c) a |
	f2 r4 f |
	f g a c |
	fis,1( |
	g4 f es d |
	es f g) bes |
	a2 r |
	R1 |
	c2 as4. g8 |
	g2 c |
%101
	b r |
	r2 r4 g |
	d'2 bes!4. a8 |
	a2 d |
	cis r |
	d d4. a8 |
	a2 r4 cis |
	d2 d4. a8 |
	a2 r4 a\ff |
	d2 d, |
%111
	r a'4 a |
	c2. c4 |
	c2 r4 d |
	bes2 g |
	r bes4 bes |
	es2. es4 |
	es2 r |
	f,4(\f g) a c |
	fis,2. fis4 |
	g( a) bes d |
%121
	a2. a4 |
	bes2. f4 |
	as g f as |
	g1 ~|
	g4( e a!) g |
	fis2 r |
	g2\f e4. d8 |
	d2 r |
	R1 |
	r4 g c2 |
%131
	as4. g8 g2 ~|
	g f |
	bes g4. f8 |
	f2 r4 f |
	g as g bes |
	as1( |
	a!4 bes a c |
	bes2.) a4 |
	bes2 r |
	r r4 c |
%141
	b2 f4 f |
	e( c f2) ~|
	f4( d) b2 |
	c r |
	c' bes4. a8 |
	a2 g |
	f e4. bes'8 |
	a2 r4 c, |
	f g a c |
	f,1 ~|
%151
	f4( g a) a |
	bes2 r |
	R1 |
	a2 a4. a8 |
	bes2 r4 bes |
	bes1 ~|
	bes( |
	c2 fis, |
	g1 |
	a |
%161
	g2.) g4 |
	f2 r |
	g2\f g4. a8 |
	a2 r4 a |
	g2 g4. a8 |
	a2 r4 a |
	a4 a a a |
	a1 ~|
	a2 bes4( g) |
	a2 r |
%171
	g\ff g4. a8 |
	a2 r4 a |
	g2 g4. a8 |
	a2 r4 a |
	a a a a |
	a2. a4 |
	a2 a |
	bes2. bes4 |
	a2 bes |
	a g |
%181
	bes2. bes4 |
	bes2. bes4 |
	a2 bes |
	a g |
	bes2. bes4 |
	bes2. bes4 |
	a1( |
	bes2) a |
	g g |
	c c |
%191
	b bes |
	a g |
	f1 ~|
	f |
	e ~|
	e |
	f\fermata |
}

altoLyrics = \lyricmode {
	Was be -- trübst du dich mei -- ne See -- le und bist so
	un -- ru -- hig in mir? Har -- re auf Gott! har -- re auf
	Gott! denn ich wer -- de ihm noch dan -- ken, ich wer -- de
	ihm noch dan -- ken. Har -- re auf Gott! har -- re auf Gott!
	denn ich wer -- de ihm noch dan -- ken,
	denn ich wer -- de ihm noch dan -- ken.
	Har -- re auf Gott, har -- re auf Gott! denn ich wer -- de
	ihm noch dan -- ken, dass es mei -- nes An -- ge -- sichts
	Hül -- fe und mein Gott ist. Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von
	nun an bis in E -- wig -- keit! Preis sei dem Herrn in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von
	nun an bis in E -- wig -- keit, von nun an bis in
	E -- wig -- keit! Preis sei dem Herrn, dem Herrn, dem Gott
	I -- sra -- els, dem Gott! Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, von nun
	an bis in E -- wig -- keit! Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun, von nun an bis in
	E -- wig -- keit! Preis sei dem Herrn, dem Gott
	I -- sra -- els, dem Gott I -- sra -- els, von nun an bis
	in E -- wig -- keit, von nun an in E -- wig -- keit! Preis
	sei dem Herrn, dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit! Preis sei dem Herrn in E -- wig -- keit!
	Preis sei dem Herrn, dem Gott I -- sra -- els, von nun an
	bis in E -- wig -- keit! Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von
	nun an bis in E -- wig -- keit, von nun an bis in
	E -- wig -- keit, in E -- wig -- keit!
}
 
tenor = \relative c {\key f \major \clef tenor
	r4 f2\f g4 |
	bes\> a8.\! a16 a4 bes |
	c1 |
	f,4 r8 f g4 a |
	bes1 |
	a2 g4 f |
	c'1 ~|
	c4 r c d |
	e1 |
	e4 e f g |
%11
	c,1 |
	f2 f4. f8 |
	e1\fermata |
	c2\ff f4. f8 |
	f1 |
	c2 f4. f8 |
	f2 c4 c |
	d4. c8 bes4 e |
	e2 f4 r |
	R1 |
%21
	R1 |
	e2 f4. c8 |
	c1 |
	e2 f4. c8 |
	c2 c4 c |
	g'4. e8 d4 c |
	c2. c4 |
	c2 c |
	f f, |
	r c'4 c |
%31
	f4. d8 c4 bes |
	es1 |
	d2 r |
	d d4. d8 |
	cis1 |
	cis2 cis4. cis8 |
	d2 r |
	c!2.\sf c4 |
	c2 c |
	c2 c |
%41
	d2. d4 |
	d2. f4 |
	f2 c |
	a bes4 b |
	c4. c8 c4 d |
	c2( bes) |
	a r |
	f'\f d4. c8 |
	c2 r4 c |
	f2 d4. c8 |
%51
	c2 r4 c |
	f, g a c |
	b c d f |
	e( c f2) ~|
	f4( e d4.) d8 |
	c2 r4 f |
	f( e d4.) d8 |
	c2 r4 c |
	c bes a fis |
	g( a bes d |
%61
	c d e) g |
	f2 r |
	f c4. bes8 |
	a2 r4 bes |
	f'2 c4. bes8 |
	a4( c f) e |
	d4 c b g |
	c2. c4 |
	b( f' e d |
	c2.) c4 |
%71
	d( f e) d |
	c2 r |
	r2 r4 g |
	c d e g |
	e( f g e |
	a, b cis) e |
	cis( d e) g |
	g1 ~|
	g4 f e cis |
	d2. g,4 |
%81
	d'2. d4 |
	c2 d |
	e a, |
	d4. d8 d4 g, |
	es f g b |
	c( d es e |
	f2. es4 |
	d2.) bes4 |
	f2 r4 c' |
	d2 bes |
%91
	R1 |
	f'2 d4. c8 |
	c2 r4 c |
	es2 c4. b8 |
	b2 r4 g |
	es' d c c |
	c2( f4 es |
	d) c bes2 |
	R1 |
	g'2 es4. d8 |
%101
	d1 |
	R1 |
	r2 r4 g, |
	a2 f'!4. e8 |
	e2 r |
	f d4. cis8 |
	cis2 r4 a |
	f'2 d4. cis8 |
	cis2 r4 a\ff |
	d2 d, |
%111
	r d'4 d |
	d2. d4 |
	d2 r4 d |
	d2 bes |
	r bes4 bes |
	bes2. bes4 |
	bes2 r |
	R1 |
	a4(\f bes) c es |
	d2. bes4 |
%121
	c4( d) es g |
	f2 r4 f, |
	f g as f |
	g2. g4 |
	a1 |
	r2 r4 d |
	cis( d e) g |
	fis d g2 |
	es4. d8 d2 |
	r4 b c2 |
%131
	c4. b8 b2 |
	r4 c f2 |
	des4. c8 c2 ~|
	c4 f, des'2 ~|
	des4 c bes g |
	es'1 ~|
	es4( des c) a |
	f'2 r |
	R1 |
	c2\f as4. g8 |
%141
	g2 r4 g |
	c2 as4. g8 |
	g2 r4 g |
	c d e g |
	c,1 ~|
	c4( d e) g |
	c,2 r |
	f es4. d8 |
	d2 c |
	bes a4. a8 |
%151
	f'2 es |
	d d4. d8 |
	cis1 |
	d2 d4. d8 |
	d2 r4 d |
	es1( |
	d2) c |
	c1( |
	d2) f |
	f( fis |
%161
	g) e |
	f r |
	d\f f4. f8 |
	f2 r4 c |
	d2 f4. f8 |
	f2 r4 c |
	f4 f f f |
	f1 ~|
	f4( fis) g( e) |
	f2 r |
%171
	d\ff f4. f8 |
	f2 r4 c |
	d2 f4. f8 |
	f2 r4 c |
	f f f f |
	f2. f4 |
	f2 fis |
	g2. c,4 |
	c2 d |
	f f |
%181
	e2. e4 |
	e2. e4 |
	f2 d |
	f f |
	e2. e4 |
	e2. e4 |
	f1 ~|
	f2 es |
	d c |
	c f |
%191
	d c |
	c f |
	c1 ~|
	c |
	bes ~|
	bes |
	a\fermata |
}

tenorLyrics = \lyricmode {
	Was be -- trübst du dich mei -- ne See -- le und bist so
	un -- ru -- hig in mir? mei -- ne See -- le, und bist so un -- ru -- hig
	in mir? Har -- re auf Gott! har -- re auf Gott! denn ich wer -- de ihm
	noch dan -- ken. Har -- re auf Gott! har -- re auf Gott! denn ich
	wer -- de ihm noch dan -- ken, ihm noch dan -- ken, denn ich wer -- de
	ihm noch dan -- ken. Har -- re auf Gott! har -- re auf Gott! denn ich
	wer -- de ihm noch dan -- ken, dass es mei -- nes An ge -- sichts
	Hül -- fe und mein Gott ist. Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, in E -- wig -- keit,
	in E -- wig -- keit, von nun an bis in E -- wig -- keit! Preis sei dem
	Herrn, dem Gott I -- sra -- els, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von nun an. Preis
	sei dem Herrn, dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit! Preis sei dem Herrn, dem Gott I -- sra -- els! Preis
	sei dem Herrn, dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit, von nun an bis in E -- wig -- keit! Preis sei dem
	Herrn, dem Gott I -- sra -- els, von nun an bis in E -- wig -- keit, in
	E -- wig -- keit, dem Gott I -- sra -- els, dem Gott I -- sra -- els, dem
	Gott I -- sra -- els, von nun an bis in E -- wig -- keit! Preis sei dem
	Herrn, dem Gott I -- sra -- els, von nun an bis in E -- wig -- keit!
	Preis sei dem Herrn, dem Gott I -- sra -- els, dem Gott I -- sra -- els!
	Preis sei dem Herrn in E -- wig -- keit, in E -- wig -- keit! Preis sei
	dem Herrn, dem Gott I -- sra -- els, von nun an bis in E -- wig -- keit!
	Preis sei dem Herrn, dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit, in E -- wig -- keit, von nun an bis in
	E -- wig -- keit, von nun an bis in E -- wig -- keit, von nun an bis in
	E -- wig -- keit, in E -- wig -- keit!
}

basso = \relative c {\key f \major \clef bass
	r4 f2\f g4 |
	bes\> a8.\! a16  a4 bes |
	c1 |
	f,4 r8 f g4 a |
	bes1 |
	a2 g4 f |
	c'1 ~|
	c ~|
	c |
	r4 c, d e |
%11
	f1 |
	f2 f4. f8 |
	c1\fermata |
	f2 f4. f8 |
	f1 |
	f2 f4. f8 |
	f2 a4 a |
	bes4. a8 g4 g |
	g2 f4 e |
	f4. g8 a4 b |
%21
	c2 c, |
	c' c4. c8 |
	c1 |
	c2 c,4. c8 |
	c1 |
	R1*3 |
	r2 f4 f |
	c'4. a8 g4 f |
%31
	f2. f4 |
	a2 a |
	bes bes, |
	bes' bes4. bes8 |
	a1 |
	a2 a4. a8 |
	d,2 r |
	c'2.\sf c4 |
	f,2 g |
	a2 a |
%41
	bes2. bes4 |
	b2. b4 |
	c1 |
	c2 r |
	r4 e, f b, |
	c1 |
	f2 r |
	R1*20 |
	c'2 a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
%71
	g2 r4 g |
	c, d e g |
	e( f g) bes |
	bes1 ~|
	bes2. bes4 |
	a2 a, |
	R1 |
	r2 r4 e |
	e f g a |
	fis d g2 ~|
%81
	g4 fis bes2 ~|
	bes4( a d2 |
	cis c |
	bes4.) bes8 bes2 |
	R1*3 |
	bes'2 g4. f8 |
	f2 r4 f |
	bes2 g4. f8 |
%91
	f2 r |
	d' bes4. a8 |
	a2 r4 a |
	c2 as4. g8 |
	g2 r4 g |
	c, d es f |
	f( es d es |
	f2.) f4 |
	f1 |
	R1 |
%101
	g2 g4. g8 |
	g1 ~|
	g |
	r2 r4 d |
	a'2 a4. a8 |
	a2 r |
	a a4. a8 |
	a2 r |
	a a4 a\ff |
	d2 d, |
%111
	r fis4 fis |
	fis2. fis4 |
	fis2 r4 d |
	g2 g, |
	r g'4 g |
	g2. g4 |
	g2 r |
	R1 |
	c4(\f bes) a c |
	bes2. bes,4 |
%121
	es4( d) c es |
	d2 r4 d |
	d2. d4 |
	e4. d8 e2 |
	R1 |
	d'2\f bes4. a8 |
	a2 r4 a |
	d2 bes4. a8 |
	a2 r4 d, |
	g2 es4. d8 |
%131
	d2 r4 g |
	c2 as4. g8 |
	g2 r4 c, |
	f g as des |
	es,2. es4 |
	as( bes c) es |
	f,1( |
	bes4 f bes c |
	des2) des, |
	c1 ~|
%141
	c ~|
	c ~|
	c2 r |
	c' bes4. a!8 |
	a2 g |
	f2 e4. d8 |
	d2 c |
	f4 g a c |
	f,1 ~|
	f4( g a) c |
%151
	f,2. f4 |
	bes2 bes4. bes8 |
	a1 |
	d,2 d4. d8 |
	bes2 r4 bes |
	es1( |
	f2 g |
	a1 |
	bes2 b |
	c1) |
%161
	cis |
	d2 r |
	b2\f b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 c, |
	d4 d d d |
	d1( |
	c2.) c4 |
	f2 r |
%171
	b\ff b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 c, |
	d d d d |
	d2. d4 |
	c2 c |
	c2. c4 |
	f2 d' |
	c b |
%181
	c2. c,4 |
	c2. c4 |
	f2 d' |
	c b |
	c2. c4 |
	c2. c4 |
	f,2( es' |
	d) c |
	b bes |
	a as |
%191
	g e |
	f bes, |
	c1 ~|
	c |
	c ~|
	c |
	f\fermata |
}

bassoLyrics = \lyricmode {
	Was be -- trübst du dich mei -- ne See -- le und bist so
	un -- ru -- hig in mir? mei -- ne See -- le, und bist so un -- ru -- hig
	in mir? Har -- re auf Gott! har -- re auf Gott! denn ich wer -- de ihm
	noch dan -- ken, ich wer -- de ihm noch dan -- ken. Har -- re auf Gott!
	har -- re auf Gott! denn ich wer -- de ihm noch dan -- ken, ihm noch
	dan -- ken. Har -- re auf Gott! denn ich wer -- de ihm noch dan -- ken,
	ihm noch dan -- ken, dass er mein Gott ist. Preis sei dem Herrn, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, von nun an, von nun
	an bis in E -- wig -- keit, in E -- wig -- keit! Preis sei dem Herrn, dem
	Gott I -- sra -- els, Preis sei dem Herrn, dem Gott I -- sra -- els, von
	nun an bis in E -- wig -- keit! Preis sei dem Herrn, dem Gott
	I -- sra -- els! Preis sei dem Herrn, Preis ihm von nun an bis in
	E -- wig -- keit, von nun an bis in E -- wig -- keit! Preis sei dem Herrn,
	dem Gott I -- sra -- els, von nun in E -- wig -- keit! Preis sei dem
	Herrn, dem Gott I -- sra -- els, dem Gott I -- sra -- els, dem Gott
	I -- sra -- els, von nun an bis in E -- wig -- keit, in E -- wig -- keit!
	Preis sei dem Herrn, dem Gott I -- sra -- els, von nun an bis in
	E -- wig -- keit, dem Gott I -- sra -- els! Preis sei dem Herrn in
	E -- wig -- keit! Preis sei dem Herrn, dem Gott I -- sra -- els, von nun
	an bis in E -- wig -- keit! Preis sei dem Herrn, dem Gott I -- sra -- els,
	von nun an bis in E -- wig -- keit, in E -- wig -- keit, von nun an bis
	in E -- wig -- keit, von nun an bis in E -- wig -- keit, von nun an bis
	in E -- wig -- keit, in E -- wig -- keit!
}

bass = \relative c, {\key f \major \clef bass
	f2\f r |
	R1 |
	e1\f |
	d |
	g |
	a2 d |
	c r |
	R1*6 |
%14
	f2\ff f4. f8 |
	f1 |
	f2 f4. f8 |
	f2 a4 a |
	bes4. a8 g4 g |
	g2 f4 e |
	f4. g8 a4 b |
%21
	c2 c |
	c,\f c4. c8 |
	c1 |
	c2 c4. c8 |
	c1 |
	bes |
	a |
	e' |
	f2 f, |
	es es' |
%31
	d2 d' |
	c c, |
	bes r |
	bes' bes4. bes8 |
	a1 |
	a2 a4. a8 |
	d,2 r |
	e4_\piuf g c e, |
	f2 g |
	a2 a |
%41
	bes2. bes4 |
	b2. b4 |
	c2\ff r |
	R1 |
	r4 e,-. f-. b,-. |
	c2 c |
	f8_"senza Organo" a g f e d c bes |
	a f g a bes c d e |
	f a g f e d c bes |
	a f g a bes c d e |
%51
	f c e f g c, f g |
	a f e c f c f e |
	d f e g f a g b |
	a c a g f g a b |
	c c d c b a g f |
	e c d e f g a b |
	c4 d8 c b a g f |
	e g b g c a bes c |
	d d, d e fis c' bes a |
	g bes d c bes a g a |
%61
	bes a g f e d c c |
	d2 bes |
	f r |
	R1*4 |
	c''2 a4. g8 |
	g2 r4 g |
	c2 a4. g8 |
%71
	g2 r4 g |
	c, d e g |
	e f g bes |
	bes1 |
	bes,2. bes'4 |
	a4 g8 f e d cis b |
	a cis' bes a  g f e d |
	cis e' d cis bes a g f |
	e4 f g a |
	fis d g2 ~|
%81
	g4 fis bes2 ~|
	bes4 a d2 |
	cis c |
	bes4. bes8 bes2 |
	R1*3 |
	bes2 g4. f8 |
	f2 r4 f |
	bes2 g4. f8 |
%91
	f2 r |
	d' bes4. a8 |
	a2 r4 a |
	c2 as4. g8 |
	g2 r4 g |
	c, d es f |
	f es d es |
	f8 f, g a bes c d es |
	f g a bes c d es f |
	g,2\sf g4. g8 |
%101
	g2 r4 g |
	g8 g, a b c d e! f |
	g a b c d e f g |
	a,2\sf a4. a8 |
	a1 ~|
	a |
	a2 a4. a8 |
	a1 ~|
	a |
	d,2\ff d,4._"ed Organo" d8 |
%111
	d2 r |
	d' d,4. d8 |
	d2 r |
	g' g,4. g8 |
	g2 r |
	g' g,4. g8 |
	g2 r4 g'\f |
	a g f c_\semprepiuf |
	a2. a'4 |
	bes a g d |
%121
	c2. c'4 |
	d c bes f |
	d2. d4 |
	e2. e4 |
	a2. a4 |
	d2\f bes4._"senza Organo" a8 |
	a2 r4 a |
	d2 bes4. a8 |
	a2 r4 d, |
	g2 es4. d8 |
%131
	d2 r4 g |
	c2 as4. g8 |
	g2 r4 c, |
	f g as des |
	es,2. es4 |
	as bes c es |
	f,2. f4 |
	bes4 f bes c |
	des2 des, |
%141
	<<{
		c'2 as4. g8 |
		g2 r4 g |
		c2 as4. g8 |
		g2
	} \\ {
		c,1 ~|
		c ~|
		c ~|
		c2
	}>> r |
	<<{
		c' bes4. a!8 |
		a2 g |
		f2 e4. d8 |
		d2 c |
	} \\ {
		c1_"ed Organo" ~|
		c ~|
		c ~|
		c |
	}>>
	d2 c4. bes8 |
	bes2 f |
%151
	f' es4. d8 |
	d2 c |
	bes2 bes4._\piuf bes8 |
	a1 |
	d2 d4. d8 |
	bes2. bes4 |
	es2:8 es: |
	f: g: |
	a: a: |
	bes: b:\ff |
%161
	c: c: |
	cis: cis: |
	d2 r |
	b\sf b4. c8 |
	c2 r4 c |
	b2\sf b4. c8 |
	c2 r4 c, |
	d4 d d d |
	d d d d |
	c2 c4. c8 |
%171
	f2 r |
	b,\ff b4. c8 |
	c2 r4 c |
	b2 b4. c8 |
	c2 r4 c |
	d d d d |
	d d d d |
	c2 c |
	c2. c4 |
	f2 d4. c8 |
%181
	c2 b |
	c2. c4 |
	c2. c4 |
	f2 d4. c8 |
	c2 b |
	c2. c4 |
	c2 c |
	f\ff es'-. |
	d-. c-. |
	b-. bes-. |
%191
	a-. as-. |
	g-. e-. f-. bes,-. |
	c1 ~|
	c |
	c ~|
	c |
	f,\fermata |
}
