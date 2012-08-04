\version "2.14.2"

mfp=\markup{\dynamic mfp}
msegno=\markup{\musicglyph #"scripts.segno"}

markings = {
	\time 2/4 \key c \major
	s2^\markup{sempre pianissimo} s2*8 \bar "||" \mark \msegno
	s2*40 \bar "||" \mark \msegno
}
incmidi = "midi.ly"

piccolo = \relative c''' {
	c4.\p d16 b
	c8 d16 b c8 d16 b
	c8-. g-. c-. b-.
	a-. g-. a-. b-.
	c r c16 d e f 
	g a g fis g f e d
	c d c b c d e f
	g a g fis g f e d

	c4( c'8) r

	R2*4
	c,16 d e f g e f d
	c4 r
	R2*5
	g'4. a16 fis
	g8 a16 fis g8 fis16 dis
	g8 fis16 dis e8 c'16 a
	g fis e d cis d e f

	g4 r4
	R2*3
	d4_\mfp ~ d16 e d cis
	d8-. c-. b-. a-.
	g16 d e fis g a b c
	d4_\mfp ~ d16 e d cis
	d e c d b c a b
% 3
	g a b c d e f d
	c4. d16 b
	c8 d16 b c8 d16 b
	c d c b c d e f
	g a g fis g e f d
	c d c b c d e f
	g a g fis g e f d c d c b c d e f 
	g a g fis g e f d
	c4. d16 b
	c8 d16 b c8 b'16 gis
	a8 b16 gis a8 f16 d
	c b a g fis g a b
	c d e f g e f d
	c b a g fis g a b
	c8-. e-. c-. r
}

flauto = \relative c''' {
	c4.\p d16 b
	c8 d16 b c8 d16 b
	c8-. g-. c-. b-.
	a-. g-. a-. b-.
	c r c16 d e f 
	g a g fis g f e d
	c d c b c d e f
	g a g fis g f e d

	c4 r

	R2*4
	c,16 d e f g e f d
	c4 r
	R2*5
	g''4. fis8
	g fis g dis
	e dis e c16 a
	g fis e d cis d e f

	g4 r4
	R2*3
	d'4_\mfp ~ d16 e d cis
	d8-. c-. b-. a-.
	g16 d e fis g a b c
	d4_\mfp ~ d16 e d cis
	d8-. c-. b-. a-.
% 3
	g16 a b c d e f d
	c4. d16 b
	c8 d16 b c8 d16 b
	c d c b c d e f
	g8 g16 fis g e f d
	c d c b c d e f
	g8 g16 fis g e f d
	c d c b c d e f

	g8 g16 fis g e f d
	c4. d16 b
	c8 d16 b c8 b16 gis
	a8 b16 gis a8 f'16 d
	c b a g fis g a b
	c d e f g e f d
	c b a g fis g a b
	c8-. e-. c-. r
}

clarinettiI = \relative c'' {
	\slurUp
	\stemUp

	c4.\p d16 b
	c8 d16 b c8 d16 b
	c8-. g-. c-. b-.
	a-. g-. a-. b-.
	c4 r
	d2( 
	e4) r
	d2(

	e4) r

	R2*4
	c16 d e f g e f d
	c4 r 
	R2*5
	b4. a8
	b8-. a-. b-. dis-.
	e-. dis-. e-. c-.
	c2( 
	b4) r
	R2*3
	fis'2_\mfp ~
	fis( 
	g4) r
	fis2_\mfp ~
	fis( 
% 3
	g4) r
	R2*2
	r8 e e e
	r f f f
	r e e e
	r f f f
	r e e e

	r f f f
	e g4 g8 ~
	g g4 e8 ~
	e e4 f8
	b,2( 
	c4) r8 a'
	b,2
	c8-. e-. c-. r
}

clarinettiII = \relative c'' {
	\slurDown
	\stemDown

	g2 ~
	g ~
	g4 c8 b
	a g a b
	c4 r
	b2( 
	c4) r
	b2( 

	c4) r	

	R2*4
	c16 b c d e c d b
	c4 r 
	R2*5
	g4. fis8
	g f g a
	g a g a
	a2( 
	
	g4) r
	R2*3
	c2 ~
	c( 
	b4) r
	c2 ~
	c( 
% 3
	b4) r
	R2*2
	r8 c c c
	r b b b
	r c c c
	r b b b
	r c c c 

	r b b b
	c g4 b8
	c b c gis
	a gis a a
	f2( 
	e4) r8 a
	f2
	e8-. g-. e-. r
}

fagottoI = \relative c' {
	\slurUp
	\stemUp

	e4. f8
	e-. f-. e-. f-.
	e2
	f8-. e-. f-. e-.
	e4 r
	f2( e4) r
	f2(

	e4) r

	r2 r r r
	e4. d8
	c4 r
	R2*5
	d2
	d4. fis8
	e[-. fis-. e-. e-.]
	d2 ~
	d4 r
	R2*3
	fis2_\mfp ~
	fis( 
	g4) r
	fis2_\mfp ~
	fis( 
% 3
	g4) r
	R2*2
	r8
\clef alto
	g8 g g
	r f f f 
	r g g g
	r f f f
	r g g g 

	r f f f
	g4. b8 ~
	b b4 g8 ~
	g g4 a8
	f2( 
	g4) r8 a8
	f2
	e8-. g-. e-. r	
}

fagottoII = \relative c' {
	\slurDown
	\stemDown

	c2\p ~
	c
	c ~
	c
	c4 r
	g2(
	c4) r
	g2(
	
	c4) r

	R2*4
	c4. g8
	c,4 r
	R2*5
	b'4. c8
	b[-. c-. b-. b-.]
	b4. a8
	d,2

	g4 r
	R2*3
	c2 ~
	c( 
	b4) r
	c2 ~
	c
% 3
	b4 r 
	R2*2
	r8
\clef alto
	e e e
	r b b b
	r e e e
	r b b b
	r e e e

	r b b b
	e4. a8
	g a g f
	e f e c
	b2( 
	e4) r8 f8
	b,2
	g8-. b-. g-. r
}

violinoI = \relative c'' {
	c4.\p d16 b
	c8 d16 b c8 d16 b
	c8-. g-. c-. b-.
	a-. g-. a-. b-.
	c r c16 d e f 
	g a g fis g f e d
	c d c b c d e f
	g a g fis g f e d

	c4( c'8) r

	c4. d16 b
	c8 d16 b
	c8 d16 b
	c8-. g-. c-. b-.
	a-. g-. a-. b-.
	c4 r
	c4. d16 b
	c8 d16 b c8 d16 b
% 2
	c8 g c b
	a8. a16 d8. d16
	b8 r c8. b16
	a8. a16 d8. d16
	g,4. a16 fis
	g8 a16 fis g8 fis16 dis
	e8 fis16 dis
	e8 c'16 a
	g( fis) e-. d-. cis( d) e-. f-.

	g4 r
	r8 b, b b
	b r a r
	g16 a g fis g a b c
	d_\mfp( e d cis d e d cis)
	d-. e-. c-. d-. b-. c-. a-. b-.
	g d e fis g a b c
	d_\mfp( e d cis d e d cis)
	d-. e-. c-. d-. b-. c-. a-. b-.
% 3
	g a b c d e f d
	c4. d16 b
	c8 d16 b c8 d16 b
	c b c b c d e f
	g a g fis g e f d
	c d c b c d e f
	g a g fis g e f d
	c d c b c d e f

	g a g fis g e f d
	c'4. d16 b
	c8 d16 b c8 b16 gis
	a8 b16 gis a8 f16 d
	c b a g fis g a b
	c d e f g e f d
	c b a g fis g a b
	c8-. e-. c-. r
}

violinoII = \relative c' {
	e16\p e e e e e f f
	e e f f e e f f 
	e c e c e c e c
	f c e c f c d c
	e e e e e e e e
	d d d d d d f f
	e e e e e e e e 
	d d d d d d f f 

	e4 ~ e8 r

	e16 e e e e e f f
	e e f f e e f f 
	e c e c e c e c f c e c f c d c
	e d e f g e f d
	e e e e e e f f 
	e e f f e e f f
% 2
	e e e e a a g g 
	g g g g fis fis fis fis
	g g g g a a g g 
	g g g g fis fis fis fis
	g b b b b b c c 
	b b c c b b a a 
	g g a a g g e' e
	c c a a fis fis c' c

	b4 r
	r8 g g g
	g r fis r
	g4 r
	a,2_\mfp ~
	a( 
	b4) r
	a2_\mfp ~
	a2( 
% 3
	b4) r
	e16 e e e e e f f 
	e e f f e e f f 
	e e c c e e c c 
	d d b b d d b b 
	e e c c e e c c 
	d d b b d d b b 
	e e c c e e c c 

	d d b b d d b b 
	e' e e e e e f f 
	e e f f e e d d 
	c c d d c c a a 
	f f d d b b d d 
	c d e f g g a a 
	f f d d b b f' f
	e8-. g-. e-. r
}

viola = \relative c'' {
	\clef "alto"

	g16\p g g g g g g g
	g g g g g g g g 
	g4 r
	r2
	g,16 g g g g g g g
	b b b b b b b b
	c g g g g g g g
	b b b b b b b b

	c4 ~ c8 r

	g'16 g g g g g g g 
	g g g g g g g g
	g4 r
	r2
	c,16 b c d e c d b
	g' g g g g g g g
	g g g g g g g g
% 2
	g g g g e e e e
	d d d d d d d d 
	e e e e e e e e 
	d d d d c c c c
	b8 d'16 d d d d d 
	d d d d d d b b 
	b b b b b b c c 
	a a fis fis d d a' a

	g4 r
	r8 d d d
	d r c r
	b4 r
	fis2_\mfp ~
	fis( 
	g4) r
	fis2_\mfp ~
	fis( 
% 3
	g4) r
	g'16 g g g g g g g 
	g g g g g g g g 
	g g e e g g e e
	b b g g b b g g 
	g' g e e g g e e 
	b b g g b b g g 
	g' g e e g g e e 

	b b g g b b g g 
	g' g g g g g g g 
	g g g g g g e e 
	e e e e e e f f 
	d d b b g g f f 
	e g c d e e f f 
	d d b b g g d' d
	c8-. c-. c-. r
}

violoncello = \relative c' {
	c16\p c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	g g g g g g g g
	c c c c c c c c
	g g g g g g g g

	c4 ~ c8 r

	c16 c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c g g
	c c c c c c c c
	c c c c c c c c
% 2
	c c c c c c c c
	d d d d d d d d
	e e e e c c c c
	d d d d d d d d 
	g g g g g g d d
	g g d d g g b, b
	e e b b e e a, a
	d d d d d d d d
	
	g,4 r
	r8 g g g 
	g r d r
	g,4 r
	d'2_\mfp ~
	d
	g4 r
	d2_\mfp ~
	d2
% 3
	g4 r
	c16 c c c c c c c 
	c c c c c c c c 
	c4 r 
	g r
	c r
	g r
	c r

	g r
	c16 c c c c c g g 
	c c g g c c e, e
	a a e e a a d, d
	g16 g g g g g g g 
	c c c c c c f, f
	g16 g g g g g g g 
	c,8-. c'-. c,-. r
}

contrabasso = \relative c' {
	c16\p c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	g g g g g g g g
	c c c c c c c c
	g g g g g g g g

	c4 ~ c8 r

	c16 c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c c c
	c c c c c c g g
	c c c c c c c c
	c c c c c c c c
% 2
	c c c c c c c c
	d d d d d d d d
	e e e e c c c c
	d d d d d d d d 
	g g g g g g d d
	g g d d g g b, b
	e e b b e e a, a
	d d d d d d d d
	
	g,4 r
	r8 g g g 
	g r d r
	g,4 r
	d'2_\mfp ~
	d
	g4 r
	d2_\mfp ~
	d2
% 3
	g4 r
	c16 c c c c c c c 
	c c c c c c c c 
	c4 r 
	g r
	c r
	g r
	c r

	g r
	c16 c c c c c g g 
	c c g g c c e, e
	a a e e a a d, d
	g16 g g g g g g g 
	c c c c c c f, f
	g16 g g g g g g g 
	c,8-. c'-. c,-. r
}

monostatos = \relative c'' {
	\unset melismaBusyProperties 

	R2*9

	c4. d16( b)
	c8 d16( b) c8 d16( b)
	c8 g c b
	a g a b c4 r
	c4. d16( b)
	c8 d16( b) c8 d16( b)
% 2
	c8 g c b
	a8. a16 d8. d16
	b8 r c8. b16
	a8. a16 d8. d16
	g,4 r
	R2*3

	r4 g8 a
	b4 r
	r8 b c a 
	g g r4
	d'4. d,8
	d d e fis 
	g4 r
	d'4. d,8
	d d e fis
% 3
	g4 r
	c4. d16( b)
	c8 d16( b) c8 d16( b)
	c8 g c e
	g, g g a16( b)
	c4 c8 e
	g, g g a16( b)
	c4 c8 e

	g, g g a16( b)
	c4 r
	R2*6
}
\addlyrics {
	Al -- les
	fuhlt der Lie -- be
	Freu -- den, schna -- belt,
	tan -- delt, herzt und 
	kusst;
	und ich
	sollt' die Lie -- be 
% 2
	meiden, _ weil ein
	Schwar -- zer Häss -- lich ist, weil ein 
	Schwar -- zer häss -- lich ist!

	Ist mir 
	denn
	kein Herz ge --
	ge -- ben?
	Ich bin
	anch den Mäd -- chen
	gut,
	ich bin
	auch den Mäd -- chen
% 3
	gut! 
	Im -- mer
	oh -- ne Weib -- chen
	le -- ben, wä -- re
	wahr -- lich Höl -- len --
	gluth, wä -- re
	wahr -- lich Höl -- len --
	gluth, wä -- re

	wahr lich Höl -- len gluth!
}
\addlyrics {
	Drum so
	will ich, weil ich
	le -- be
	schnä -- beln,
	küs -- sen, zärt -- lich
	sein!
	Lie -- ber
	gu -- ter Mond, ver-
% 2
	ge -- be: ei -- ne
	Wei -- sse nahm mich
	ein, ei -- ne
	Wei -- sse nahm mich
	ein.

	Weiss ist 
	schön,
	ich muss sie
	küs -- sen:
	Mond, ver-
	ste -- cke dich da -- zu,
	Mond, ver-
	ste -- cke dich da-
	zu!
	Sollt' es 
	dich zu sehr ver --
	dries -- sen, o so
	mach die Au -- gen
	zu, o so
	mach die Au -- gen
	zu, o so

	mach die Au -- gen
	zu!
}
