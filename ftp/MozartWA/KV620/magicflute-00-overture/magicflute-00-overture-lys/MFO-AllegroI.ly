\version "2.14.2"

markings = {\time 2/2 \mark "Allegro" s1*81 \bar "||"}
incmidi="midiallegro.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d.) states "For legal reasons this title   %
%	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's) consulted had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %
%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %
%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		Due to many requests from personal friends, I have included the whole	   %
%	score, the score broken down to the four movements, and all the individual 	   %
%	instrument parts. This increases the total zip size, but I included them all 	   %
%	because of the many requests for these formats. Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


flautoI =  \relative c''' {
	\time 2/2
	\key ees \major
	R1*21
	r4 g2\p f4 ~
	f ees2 d4
	ees8-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r4 ees'2 ~
	ees4 d8 c bes aes g f
% 4-42
	g4 r f'2
	ees d
	c bes
	aes1
	g4 g'4 f2
	ees d
	c bes

	f1
	ees'1 ~
	ees4 d-. c-. bes-.
	a r r2
	e'1( 
	f4) r r2
	e1(
% 5-56
	f4) r r2
	g,1\p ~
	g8 a bes b c des d ees
	f,1 ~
	f8 g aes a bes c cis d
	ees,1 ~
	ees8 f g a bes b c ees,

	d4 r r2
	r8 ees' c a f ees c' ees, 
	d4 r r2 
	r8 ees' c a f ees c' ees, 
	d'2.\f ees16( d c  d)
	ees8 r8 fis2\sf( g8) r8
	r4 e2\sf( f8) r8
% 6-70
	r4 d2\sf( ees8) r8
	g4 r4 f r4
	ees r4 c r4
	r1
	r8 ees8\p c a f ees c' ees,
	d4 r4 r2
	r8 ees' c a f ees c' ees,
	
	d'2.\f ees16( d c  d)
	ees8 r fis2\sf( g8) r8
	r4 e2\sf( f8) r8
	r4 d2\sf( ees8) r8
	g4 r4 f r4
	ees r4 c r4
	R1*4
% 7-85
	f1\f ~
	f1
	f2 ees
	d c
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes r bes' bes
	bes1\fermata
}

flautoII =  \relative c''' {
	\time 2/2
	\key ees \major
	R1*21
% 3
	r4 g2\p f4 
	f4 ees2 d4
	ees8\f ees ees ees ees ees f16 ees d ees
	bes'8 bes bes bes bes bes c16 bes a bes
	g4 r ees'2 
	ees4 d8 c bes aes g f
% 4
	ees4 c'2 d4
	bes c a bes
	g aes f g
	ees2 f
	ees4 ees'2 d4 
	d c2 bes4
	bes aes2 g4

	ees2 d
	a'1 ~
	a4 bes g g 
	f r r2
	des'1 
	c4 r r2
	des1 
% 5-56
	c4 r r2
	R1*10
	f,1
	fis8 r8 ees'2\f d8 r8
	r4 des2\sf c8 r8
% 6-70
	r4 bes2\sf bes8 r8
	ees4 r4 d r4
	c r4 a r4
	R1*4
		
	f1 
	fis8 r ees'2\sf d8 r8
	r4 des2\sf c8 r8
	r4 bes2\sf bes8 r8
	ees4 r4 d r4
	c r4 a r4
	R1*4

	bes4\f b c a
	bes b c a
	d2 c
	bes a
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes r bes' bes
	bes1\fermata
}

oboeI =  \relative c'' {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*22
	ees8-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	f1
	g4 r g2
	f4. ees8 d f ees d
% 4-42
	ees4 g a bes
	g aes fis g
	ees f d ees
	aes1
	g4 c2 bes4 ~
	bes aes a g ~
	g f2 ees4

	f1
	a1 ~
	a4 bes-. ees,-. d-.
	c r r2
	bes'1( 
	a4) r r2
	bes1(
% 5-56
	a4) r r2
	R1*4
	f1\p ~

	f8 bes( a g f e g  f)
	f1 ~
	f8 bes( a g f e g  f)
	f1
	f1\f(
	fis8) r a2\sf( bes8) r
	r4 g2\sf( a8) r8
% 6-70
	r4 f2\sf( g8) r8
	g4 r4 f r4
	ees r4 c r4
	r8 bes'\p a g f e g f
	f1 ~
	f8 bes a g f e g f
	f1
	
	f1\f(
	fis8) r a2\sf( bes8) r
	r4 g2\sf( a8) r
	r4 f2\sf( g8) r8
	g4 r4 f r4
	ees r4 c r4
	R1*4

	bes'4\f( b c  a)
	bes( b c  a)
	bes2 c
	bes a
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes r bes' bes
	bes1
}

oboeII =  \relative c'' {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*22
% 3	
	ees8-.\f ees-. ees-. ees-. ees-. ees-. f16 ees d ees
	f1
	ees4 r ees2 
	ees4 d8 c bes aes g f
% 4
	g4 ees' f2
	ees d
	c bes
	c d
	ees4 g f2
	ees d
	c bes

	ees2 d
	ees1 
	ees4 d c bes 
	a r r2
	g'1  
	f4 r r2
	g1 
% 5-56
	f4 r r2
	R1*9
	d2.\f ees16 d c d 
	ees8 r fis2\sf g8 r
	r4 e2\sf f8 r8
% 6-70
	r4 d2\sf ees8 r8
	ees4 r4 d r4
	c r4 a r4
	R1*4
		
	d2. ees16 d c d |
	ees8 r fis2\sf g8 r8 |
	r4 e2\sf f8 r8 |
	r4 d2\sf ees8 r8 |
	ees4 r4 d r4 |
	c r4 a r4 |
	R1*4

	f'1\f
	f1
	f2 g
	d c
	bes4 r bes r
	bes r bes r

	bes bes' f d
	bes r bes bes
	bes1
}

clarinettibI =  \relative c'' {
	\time 2/2
	\key f \major
	R1*21
	r4 ees\p( d des
	c d c  bes)
	a2\f f
	c'1
	a4 r f'2 ~
	f4 e8 d c bes a g	
% 4-42
	a4 f' d e
	c d b c
	a bes g a
	f'2(  g)
	a4 f2 e4 ~
	e d2 c4 ~
	c bes2 a4
	f'2 e
	b1 ~
	b4 c-. f-. e-. d-. r r2
	fis1(
	g4) r r2
	fis1(
% 5-56
	g4) r r2
	R1*7
	d8-.\p d-. d-. d-. d-. d-. e16( d c  d)
	e4 r r2
	d8-. d-. d-. d-. d-. d-. e16( d c  d)
	e2.\f f16( e d e)
	f8 r gis2\sf(  a8) r
	r4 fis2\sf(  g8) r
% 6-70
	r4 e2\sf(  f8) r
	a4 r g r
	f r d r
	r1
	d8-.\p d-. d-. d-. d-. d-. e16( d c  d)
	e4 r r2
	d8-. d-. d-. d-. d-. d-. e16( d c  d)
	e2.\f f16( e d  e)
	f8 r gis2(  a8) r
	r4 fis2\sf(  g8) r
	r4 e2\sf(  f8) r
	a4 r g r
	f r d r
	r1
	r1
% 7-85
	g1\p ~
	g1 ~
	g1 ~
	g1
	g2 f
	e d
	c4 r c r
	c r c r
	c c g e
	c r c' c
	c1
}

clarinettibII =  \relative c'' {
	\time 2/2
	\key f \major
	R1*21
% 3
	r4 ees\p( d des
	c d c bes)
	a2\f f
	g1
	f4 r a2 
	g4. f8 e g f e
% 4-42
	f4 d' b c
	a bes gis a
	f g e f
	d'2 e
	f4 d2 c4 
	c bes4 b4 a4 
	a g2 f4
	d'2 c
	f,1 
	f4 g d' c 
	b r r2
	ees1
	d4 r r2
	ees1 
% 5-56
	d4 r r2
	R1*7
	b8 b b b b b c16 b a b
	c4 r r2
	b8 b b b b b c16 b a b
	g1\f
	fis8 r f'2\sf e8 r
	r4 ees2\sf d8 r
% 6-70
	r4 g,2\sf a8 r
	f'4 r e r
	d r b r
	r1
	b8\p b b b b b c16 b a b
	c4 r r2
	b8 b b b b b c16 b a b
	g1\f
	gis8 r f'2 e8 r
	r4 ees2\sf d8 r
	r4 g,2\sf a8 r
	f'4 r e r
	d r b r
	r1
	r1
% 7-85
	c4 cis d b
	c4 cis d b
	c4 cis d b
	c4 cis d b
	e2 d
	c b
	c4 r c, r
	c r c r
	c c' g e
	c r c c
	c1\fermata
}

fagottoI =  \relative c {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*10

	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16\f( ees d  ees)
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
% 3
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
	ees,-.\p ees-. f-. f-. d-. d-. g-. g-.
	ees r bes'2\sfp( a4)
	bes,8-. bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	f'8-.\p f-. f-. f-. f-. f-. g16\f( f ees  f)
	d8-.\p d-. g-. g-. c,-. c-. f-.\f f-.
	d-.\p d-. g-. g-. c,-. c-. f-.\f f-.

	bes-.\p bes-. e-. e-. f-. f-. d-. d-.
	ees-. ees-. a,-. a-. bes-. bes-. bes-. bes-.
	ees,4\f r ees'2\sf ~
	ees4 d8 c bes aes g f
	ees-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
% 4-42
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f8 f f f bes bes bes bes
	ees,-. ees-. c'-. c-. a-. a-. bes-. bes-.
	ees,-. ees-. aes-. aes-. fis-. fis-. g-. g-.
	c,-. c-. f-. f-. d-. d-. ees-. ees-.

	a2 bes
	c8-. c-. c-. c-. c-. c-. c-. c-. 
	c,4-. d-. ees-. e-.
	f r r2
	f8 f f f f f f f 
	f4 r r2
	f8 f f f f f f f 
% 5-56
	f4 r r2
	R1*6
	
	d'8-.\p d-. d-. d-. d-. d-. ees16( d c  d)
	ees1
	d8-. d-. d-. d-. d-. d-. ees16( d c  d)
	ees1
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
% 6-70
	f8 r aes2\sf( g8) r
	ees4 r bes' r
	ees, r f r
	d'8-.\p d-. d-. d-. d-. d-. ees16( d c  d)
	ees1
	d8-. d-. d-. d-. d-. d-. ees16( d c  d)
	ees1
	
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
	f8 r aes2\sf( g8) r
	ees'4 r bes r
	ees, r f r
	d'8\p( f d f ees f ees  f)
	d( f d f ees f ees  f)
% 7-85
	d( f d f ees f ees  f)
	d( f d f ees f ees  f)
	d\f( f d f ees f ees  f)
	d( f d f ees f ees  f)
	d d d d ees ees ees ees
	f f f f f, f f f
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes bes' bes, bes
	bes1
}

fagottoII =  \relative c {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*10

	ees8\p ees ees ees ees ees f16\f ees d ees
	bes'8\p bes bes bes bes bes c16\f bes a bes
	g8\p g c c f, f bes\f bes
% 3
	g8\p g c c f, f bes\f bes
	ees,\p ees f f d d g g
	ees r bes'2\sfp a4
	bes,8\p bes bes bes bes bes c16\f bes a bes
	f'8\p f f f f f g16 f ees\f f
	d8\p d g g c, c f\f f
	d\p d g g c, c f\f f

	bes\p bes e e f f d d
	ees ees a, a bes bes bes bes
	ees,4\f r ees'2\sfp
	ees4 d8 c bes aes g f
	ees ees ees ees ees ees f16 ees d ees
	bes'8 bes bes bes bes bes c16 bes a bes
% 4-42
	ees8 r ees2\sf d8 r
	r4 c2\sf bes8 r
	r4 aes2\sf g8 r
	f8 f f f bes bes bes bes
	ees, ees c' c a a bes bes
	ees, ees aes aes fis fis g g
	c, c f f d d ees ees

	a2 bes
	c8 c c c c c c c 
	c,4 d ees e
	f r r2
	f8 f f f f f f f 
	f4 r r2
	f8 f f f f f f f 
% 5-56
	f4 r r2
	R1*6
	
	bes8\p bes bes bes bes bes c16 bes a bes
	c1
	bes8 bes bes bes bes bes c16 bes a bes
	c1
	bes8\f bes bes bes bes bes c16 bes a bes
	a8 r c2\sf bes8 r
	g r bes2\sf a8 r
% 6-70
	f8 r aes2\sf g8 r
	ees4 r bes' r
	ees, r f r
	bes8\p bes bes bes bes bes c16 bes a bes
	c1
	bes8 bes bes bes bes bes c16 bes a bes
	c1
	
	bes8\f bes bes bes bes bes c16 bes a bes
	a8 r c2\sf bes8 r
	g r bes2\sf a8 r
	f8 r aes2\sf g8 r
	ees'4 r bes r
	ees, r f r
	d'8\p f d f ees f ees f
	d f d f ees f ees f
% 7-85
	d f d f ees f ees f
	d f d f ees f ees f
	d\f f d f ees f ees f
	d f d f ees f ees f
	d d d d ees ees ees ees
	f f f f f, f f f
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes bes' bes, bes
	bes1
}

corniesI =  \relative c'' {
	\time 2/2
	R1*21
% 3
	g1\p ~
	g1
	c1\f
	d1
	e1
	d1
% 4-42
	c4 e d2
	r1
	r2 d4 e
	c2 d
	e4 e d2
	r1
	r2 d4 e
	d2\sf d\sf
	d1 ~
	d4 d e e
	d r r2
	d1 ~
	d4 r r2
	d1 ~
% 5-56
	d4 r r2
	R1*10
	g,8\f g g g g4 r
	r1
	r1
% 6-70
	r4 g2\sf g4
	c r d r
	e r d r
	d1\p ~
	d1 ~
	d1 ~
	d1
	g,8\f g g g g4 r
	r1
	r1
	r4 g2\sf g4
	c r d r
	e r d r
	R1*4

	d1\f ~
	d1
	d2 e
	d d
	d4 r g, r
	g r g r
	g g g g
	g r g g
	g1\fermata
}

corniesII =  \relative c' {
	\time 2/2
	R1*21
% 3
	g1\p ~
	g1
	c1\f
	g'1
	c1
	g1
% 4-42
	e4 c'2 g4
	r1
	r2 g4 c
	c,2 g'
	g4 c2 b4
	r1
	r2 g4 g
	d'2\sf d\sf
	d1 ~
	d4 g, e' e
	d r r2
	d1 ~
	d4 r r2
	d1 ~
% 5-56
	d4 r r2
	R1*10
	g,8\f g g g g4 r
	r1
	r1
% 6-70
	r4 g2\f c,4
	c r g' r
	c r d r
	d1\p ~
	d1 ~
	d1 ~
	d1
	g,8\f g g g g4 r
	r1
	r1
	r4 g2\sf c,4
	c r g' r
	c r d r
	R1*4

	d1\f ~
	d1
	g,2 c
	d d
	g,4 r g, r
	g r g r
	g g g g
	g r g g
	g1\fermata
}

trombeesI =  \relative c'' {
	\time 2/2
	R1*23
	c2\f r
	d r
	e r
	d r
	
% 4
	c4 r r2
	r1
	r2 g4 g
	c r g r
	g r r2
	R1*3
	c8-. c-. c-. c-. c-. c-. c-. c-. 
	c4 g e' r
	d r r2
	g,1
	r1
	g1
% 5
	R1*11
	g8\f g g g g4 r
	r1
	r1
% 6
	r4 g2\sf g4
	c r d r
	e r d r
	R1*4
	
	g,8\f g g g g4 r
	r1
	r1
	r4 g2\sf g4
	c r d r e r d r
	R1*4
	d1\f ~
	d
	d2 e
	d d
	d4 r g, r 
	g r g r

	g g g g
	g r g g
	g1\fermata
}

trombeesII =  \relative c' {
	\time 2/2
	R1*23
	c2\f r
	g' r
	c r
	g r
	
% 4
	c,4 r r2
	r1
	r2 g'4 c,
	c r g' r
	c, r r2
	R1*3
	c8 c c c c c c c 
	c4 g e' r
	d' r r2
	g,,1
	r1
	g1
% 5
	R1*11
	g'8 g g g g4 r
	r1
	r1
% 6
	r4 g2 c,4
	c r g' r
	c r d r
	R1*4
	
	g,8\f g g g g4 r
	r1
	r1
	r4 g2 c,4
	c r g' r 
	c r d r
	R1*4
	d1\f ~ 
	d
	g,2 c
	d d
	g,4 r g, r 
	g r g r

	g g g g
	g r g g
	g1\fermata
}

timpani =   \relative c {
	\time 2/2
	R1*23
	e2\f r
	b r
	e r
	b r
% 4
	e4 r r2
	r1
	r2 b4 e
	e r b r
	e r r2
	R1*3
	e8-. e-. e-. e-. e-. e-. e-. e-. 
	e4 b r2
	r1
	b2 r
	r1
	b2 r
% 5
	R1*11
	
	b4\f b8 b b4 r
	r1
	r1
% 6
	r4 b8 b b4 e
	e r b r
	e r r2
	R1*4

	b8\f b b b b4 r
	r1
	r
	r4 b8 b b4 e
	e r b r
	e r r2
	R1*6
	b4\f r e r
	r1
	b4 r b r 
	b r b r
	b b b b
	b r b b
	b1\fermata
}

trombonealto =  \relative c' {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*22
	g,2\f r
	bes r
	ees1
	bes
% 4
	ees4 r r2
	c4 r r2
	aes4 r r2
	c2 d
	ees4 r r2
	r1
	r

	ees2 d
	ees1
	r
	r
	g
	f4 r r2
	g1
% 5
	f4 r r2
	R1*10
	d2\f r
	R1*3
	ees4 r d r
	c r a r
	R1*4
	d2\f r
	R1*3
	ees4 r d r
	c r a r
	R1*4
	d,2\f ees
	d ees
	d' c
	bes a
	bes4 r bes r
	bes r bes r
	
	bes bes f' d
	bes r bes bes
	bes1\fermata
}

trombonetenor =  \relative c' {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*22
	ees2\f r
	f r
	g1
	f
% 4
	ees4 r r2
	c4 r r2
	aes4 r r2
	aes'2 aes
	g4 r r2
	r1
	r

	f2 f
	a1
	r
	r
	bes
	a4 r r2
	bes1
% 5
	a4 r r2
	R1*10
	f2\f r
	R1*3
	g4 r f r
	ees r c r
	R1*4
	f2\f r
	R1*3
	g4 r f r
	ees r c r
	R1*4
	d2\f ees
	d ees
	f ees
	d c
	bes4 r bes r
	bes r bes r
	
	bes bes f' d
	bes r bes bes
	bes1\fermata
}

trombonebasso =  \relative c {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*22
	ees2\f r
	bes' r
	ees,1
	bes
% 4
	ees4 r r2
	c4 r r2
	aes4 r r2
	f'2 bes,
	ees4 r r2
	r1
	r

	a,2 bes
	c1
	r
	r
	f
	f4 r r2
	f1
% 5
	f4 r r2
	R1*10
	bes,2\f r
	R1*3
	ees4 r bes r
	ees r f r
	R1*4
	bes,2\f r
	R1*3
	ees4 r bes r
	ees r f r
	R1*4
	d2\f ees
	d ees
	d ees
	f f,
	bes4 r bes r
	bes r bes r
	
	bes bes f' d
	bes r bes bes
	bes1\fermata
}

violinoI =  \relative c' {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*3
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16\f( ees d  ees)
	d8-.\p d-. g-. g-. c,-. c-. f-.\f f-.
	
	d-.\p d-. g-. g-. c,-. c-. f-.\f f-.
	d r bes'2\sfp(  a4)
	r aes2\sfp(  g4)
	f4.( ees8 d c bes  aes)
	g4( bes  ees2) ~
	ees4( d8 c bes aes g  f)
	ees r ees'2\sfp(  d4)
% 3
	r ees2\sfp(  d4)
	ees8-. ees-. c-. c-. f-. f-. d-. d-.
	g-. g-. d-. d-. c-. c-. c-. c-.
	bes4 r r d(
	c4. bes8  a2)
	bes8 r d8\trill( c16  d) ees8-. ees-. c-.\sf c-.
	f-. f-. d\trill( c16  d) ees8-. ees-. c-.\sf c-.
	
	d8-.\p d-. g-. g-. c,-. c-. f-. f-.
	bes,-. bes-. ees-. ees-. ees-. ees-. d-. d-.
	ees-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r ees'2 ~
	ees4 d8 c bes aes g f
% 4
	g16 g g g c c c c a a a a bes bes bes bes
	ees, ees ees ees aes aes aes aes fis fis fis fis g g g g 
	c, c c c f f f f d d d d ees ees ees ees
	aes8-. aes-. aes-. aes-. aes-. aes-. bes16( aes g  aes)
	g8 r ees'2\sf(  d8) r
	r4 c2\sf(  bes8) r
	r4 aes2\sf(  g8) r

	f4..\sf f16 f4..\sf f16
	ees'8 ees4 ees ees ees8
	ees4 <f, d'>-. <ees c'>-. <d bes'>-.
	<a a'>8 f'8-. f-. f-. f-. f-. g16( f e  f)
	des'8 des4 des des(  bes8) 
	a8-. f-. f-. f-. f-. f-. g16( f e  f)
	des'8 des4 des des(  bes8) 
% 5
	a4 r r2
	d8-.\p d-. d-. d-. d-. d-. ees16( d c  d)
	ees4 r r2
	c8-. c-. c-. c-. c-. c-. d16( c bes  c)
	d4 r r2
	bes8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	c4 r ees,, r
	
	r d r d'
	r ees r c,
	r d r d'
	r ees r c,
	d''8-.\f d-. d-. d-. d-. d-. ees16( d c  d)
	ees8 r fis,2\sf(  g8) r
	d'8 r e,2\sf(  f8) r
% 6 - 70
	c'8-. r d,2\sf(  ees8) r
	r4 <ees, bes' g'> r <d bes' f'>
	r <c g' ees'> r <a f' c'>
	r d\p r d'
	r ees r c,
	r d r d'
	r ees r c,

	d''8-.\f d-. d-. d-. d-. d-. ees16( d c  d)
	ees8 r fis,2\sf(  g8) r
	d'8-. r e,2\sf(  f8) r
	c'8-. r d,2\sf(  ees8) r
	r4 <ees, bes' g'> r <d bes' f'>
	r <c g' ees'> r <a f' c'>
	bes''16\p bes bes bes b b b b c c c c a a a a
	bes bes bes bes b b b b c c c c a a a a
% 7
	bes bes bes bes b b b b c c c c a a a a
	bes bes bes bes b b b b c c c c a a a a
	f'8\f f4 f f f8 ~
	f8 f4 f f f8
	f16 f f f f f f f ees ees ees ees ees ees ees ees 
	d d d d d d d d c c c c c c c c 
	bes4 <f d'> r <d bes'>
	r <bes f'> r <f d'>

	<d bes'> bes'16 bes bes bes f f f f d d d d
	bes4 <d bes' bes'> bes bes
	bes1\fermata
}

violinoII =  \relative c' {
	\time 2/2
	\key ees \major
	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16\f( ees d  ees)
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
	g-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
	g-.\p aes-. g-. f-. ees-. f-. ees-. d-.
	c d ees f fis g aes a
	bes8 r8 bes2\sfp(  a4)

	r bes2\sfp(  a4)
	bes8-. bes-. g'-. g-. c,-. c-. f-.\f f-.
	d-.\p d-. f-. f-. bes,-. bes-. ees-.\f ees
	ees4\p( d8 c bes aes g  f)
	ees4(  g2) g4(
	f4. ees8  d2)
	ees8 r g\trill( f16  g) aes8-. aes-. f-. f-.
% 3
	bes-. bes-. g\trill( f16  g) aes8-. aes-. f-. f-.
	g-. g-. a-. a-. a-. a-. bes-. bes-.
	bes-. bes-. bes-. bes-. ees,-. ees-. f-. ees-.
	d4( f  bes2) ~
	bes4( a8 g f ees d  c)
	bes r bes'2\sfp(  a4)
	r bes2\sfp(  a4)

	bes8-. bes-. bes-. bes-. a-. a-. aes-. aes-.
	g-. g-. ges-. ges-. f-. f-. bes-. bes-.
	g-.\f ees'-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r g2(
	f4.) ees8 d f ees d
% 4
	ees16 ees ees ees g g g g c, c c c f f f f
	g, g g g ees' ees ees ees a, a a a d d d d
	ees, ees ees ees c' c c c f, f f f bes bes bes bes
	c8 c4 c8(  d) d4 d8
	ees16 ees ees ees g g g g f f f f bes bes bes bes
	g g g g ees ees ees ees d d d d g g g g
	ees ees ees ees c c c c bes bes bes bes ees ees ees ees

	<f,\sf ees'>2 <f\sf d'>
	<c' a'>8 <c a'>4 <c a'> <c a'> <c a'>8
	<c a'>4 <bes bes'>-. <ees c'>-. <d bes'>-.
	<c a'>8 f-. f-. f-. f-. f-. g16( f e  f)
	e8 e4 e e e8(
	f) f-. f-. f-. f-. f-. g16( f e  f)
	e8 e4 e e e8(
% 5
	f) f-.\p f-. f-. f-. f-. g16( f e  f)
	f4 r f r
	ees r r2
	ees4 r ees r
	d r r2
	d4 r d r
	c r a, r

	r bes r bes'
	r c r a,
	r bes r bes'
	r c r a,
	f''8\f f f f f f f f
	fis8-. r ees2\sf(  d8) r
	bes'8-. r des,2\sf(  c8) r
% 6
	aes'-. r <f,\sf bes>2 <g bes>8 r
	r4 <ees bes' g'> r <d bes' f'>
	r <c g' ees'> r <a f' c'>
	r bes\p r bes'
	r c r a,
	r bes r bes'
	r c r a,

	f''8\f f f f f f f f
	fis-. r ees2\sf(  d8) r
	bes'-. r des,2\sf(  c8) r
	aes'-. r <f,\sf bes>2 <g bes>8 r
	r4 <ees bes' g'> r <d bes' f'>
	r <c g' ees'> r <a f' c'>
	f''8\p f4 f f f8 ~
	f f4 f f f8 ~
% 7
	f f4 f f f8 ~
	f f4 f\< f f8\!
	bes16\f bes bes bes b b b b c c c c a a a a 
	bes bes bes bes b b b b c c c c a a a a 
	bes16 bes bes bes bes bes bes bes c c c c c c c c
	bes bes bes bes bes bes bes bes a a a a a a a a
	bes4 <d, bes'> r <bes f'>
	r <f d'> r <d bes'>

	<d bes'> bes'16 bes bes bes f f f f d d d d 
	bes4 <d bes' bes'> bes bes
	bes1\fermata
}

viola =  \relative c' {
	\time 2/2
	\key ees \major
	g4 r r2
	R1*10
	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16\f( ees d  ees)
	bes'8\p bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
% 3
	g-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
	ees,-.\p ees-. f-. f-. d-. d-. g-. g-.
	ees'-. ees-. f-. f-. g-. g-. f-. f-.
	f4 r r bes,(
	ees c  f) f
	f8-. bes,-. d-. g,-. g'-. g-. f-.\sf a,-.
	bes-.\p bes-. d-. g,-. g'-. g-. f-.\sf ees-.

	d-.\p bes-. e-. e-. f-. f-. d-. d-.
	ees-. ees-. a,-. a-. bes-. bes-. bes-. bes-. 
	bes4\f r ees2\sf ~
	ees4 d8 c bes aes g f
	ees ees'-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
% 4
	ees8 r ees,2\sf( c8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f' f f f bes bes bes bes
	ees,-. ees-. c'-. c-. a-. a-. bes-. bes-.
	ees,-. ees-. aes-. aes-. fis-. fis-. g-. g-.
	c,-. c-. f-. f-. d-. d-. ees-. ees-.

	c'2\sf bes\sf
	<c,, c'>8-. <c c'>-. <c c'>-. <c c'>-. <c c'>-. <c c'>-. <c c'>-. <c c'>-. 
	<c c'>4 d'-. ees-. g-.
	c, r r2
	bes'8 bes4 bes bes( des8)
	c4 r r2
	bes8 bes4 bes bes( des8)
% 5
	c4 r r2
	b8-.\p b-. b-. b-. b-. b-. c16( b a  b)
	c4 r r2
	a8-. a-. a-. a-. a-. a-. bes16( a g  a)
	bes4 r r2
	g8-. g-. g-. g-. g-. g-. a16( g f  g)
	a4 r f, r

	r f r f'
	r f r f,
	r f r f'
	r f r f,
	bes'8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
% 6
	f-. r aes2\f( g8) r
	ees4 r bes' r
	ees, r f r
	r f,\p r f'
	r f r f,
	r f r f'
	r f r f,

	bes'8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
	f-. r aes2\sf( g8) r
	ees'4 r bes r
	ees, r f r
	d8\p( f d f ees f ees  f)
	d( f d f ees f ees  f)
% 7
	d( f d f ees f ees  f)
	d( f d f ees f ees  f)
	bes16\f bes bes bes b b b b c c c c a a a a 
	bes bes bes bes b b b b c c c c a a a a
	bes8 d, d d ees ees ees ees
	f f f f f f f f 
	bes4 r bes r 
	bes r bes r
	
	bes bes f d
	bes bes' bes, bes
	bes1\fermata
}

violoncello =  \relative c {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*10

	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16\f( ees d  ees)
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
% 3
	g8-.\p g-. c-. c-. f,-. f-. bes-.\f bes-.
	ees,-.\p ees-. f-. f-. d-. d-. g-. g-.
	ees r bes'2\sfp( a4)
	bes,8-. bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	f'8-.\p f-. f-. f-. f-. f-. g16\f( f ees  f)
	d8-.\p d-. g-. g-. c,-. c-. f-.\f f-.
	d-.\p d-. g-. g-. c,-. c-. f-.\f f-.

	bes1\p
	bes,
	ees4\f r ees'2\sf ~
	ees4 d8 c bes aes g f
	ees-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
% 4-42
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f8 f f f bes bes bes bes
	ees,-. ees-. c'-. c-. a-. a-. bes-. bes-.
	ees,-. ees-. aes-. aes-. fis-. fis-. g-. g-.
	c,-. c-. f-. f-. d-. d-. ees-. ees-.

	a2\sf bes\sf
	c8-. c-. c-. c-. c-. c-. c-. c-. 
	c,4-. d-. ees-. e-.
	f r r2
	f8 f f f f f f f 
	f4 r r2
	f8 f f f f f f f 
% 5-56
	f4 r r2
	R1*6
	
	bes4\p r bes r
	f r f r
	bes r bes r
	f r f r
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
% 6-70
	f8 r aes2\sf( g8) r
	ees4 r bes' r
	ees, r f r
	bes4\p r bes r
	f r f r
	bes r bes r
	f r f r
	
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
	f8 r aes2\sf( g8) r
	ees'4 r bes r
	ees, r f r
	d'8\p( f d f ees f ees  f)
	d( f d f ees f ees  f)
% 7-85
	d( f d f ees f ees  f)
	d( f d f ees\f f ees  f)
	d( f d f ees f ees  f)
	d( f d f ees f ees  f)
	d d d d ees ees ees ees
	f f f f f, f f f
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes bes' bes, bes
	bes1\fermata
}

contrabasso =  \relative c {
	\time 2/2
	\key ees \major
	ees4 r r2
	R1*16

	bes8-. bes-. bes-. bes-. bes-. bes-. c16\f( bes a  bes)
	f'8-.\p f-. f-. f-. f-. f-. g16\f( f ees  f)
	d8-.\p d-. g-. g-. c,-. c-. f-.\f f-.
	d-.\p d-. g-. g-. c,-. c-. f-.\f f-.

	bes1\p
	bes,
	ees4\f r ees'2\sf ~
	ees4 d8 c bes aes g f
	ees-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
% 4-42
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f8 f f f bes bes bes bes
	ees,-. ees-. c'-. c-. a-. a-. bes-. bes-.
	ees,-. ees-. aes-. aes-. fis-. fis-. g-. g-.
	c,-. c-. f-. f-. d-. d-. ees-. ees-.

	a2\sf bes\sf
	c8-. c-. c-. c-. c-. c-. c-. c-. 
	c,4-. d-. ees-. e-.
	f r r2
	f8 f f f f f f f 
	f4 r r2
	f8 f f f f f f f 
% 5-56
	f4 r r2
	R1*6
	
	bes4\p r bes r
	f r f r
	bes r bes r
	f r f r
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
% 6-70
	f8 r aes2\sf( g8) r
	ees4 r bes' r
	ees, r f r
	bes4\p r bes r
	f r f r
	bes r bes r
	f r f r
	
	bes8-.\f bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8-. r c2\sf( bes8) r
	g-. r bes2\sf( a8) r
	f8 r aes2\sf( g8) r
	ees'4 r bes r
	ees, r f r
	R1*4
	d'8( f d f ees f ees  f)
	d( f d f ees f ees  f)
	d d d d ees ees ees ees
	f f f f f, f f f
	bes4 r bes r
	bes r bes r

	bes bes f d
	bes bes' bes, bes
	bes1\fermata
}
