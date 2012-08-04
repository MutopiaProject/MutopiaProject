\version "2.14.2"

markings = {\time 2/2 \mark "Allegro" s1*124 \bar "|."}
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
	\key ees \major
	R1*10
% 8-104
	
	r2 ees2\p ~
	ees4 d8-. c-. bes-. aes-. g-. f-.
	g2 g'2 ~
	g4 fis8-. ees-. d-. c-. bes-. a-. 
	g4 r4  g8-. g-. g-. g-.
% 9 -117
	g-.\f g-. aes16( g fis  g) ees'4 c ~
	c a f8-. f-. f-. f-. 
	f-. f-. g16( f e  f) d'4 bes ~
	bes g ees8-. ees-. ees-. ees-.
	ees-. ees-. f16( ees d  ees) c'4 a ~
	a fis d8-. d-. d-. d-.

	d-. d-. ees16( d cis  d) bes'4 g ~
	g ees c'4 r
	bes r a r
	r1 r r
	r8 b\p( d c b d f ees
	d c b aes g f ees  d)
% 10-131
	c4 r4 r2
	r1
	r8 g' bes aes g bes des c
	bes aes g f e des' c bes
	a4 r r2
	r1

	r8 a c bes a c ees des
	c bes a ges f ees d ees
	f4 r r2 
	r1 r
	r8 ees'\p d c bes aes g f
	ees4 r r2
% 11-144
	R1*5
	r4 a8-. g-. f-. e-. d4
	
	r1
	r4 c'8-. bes-. aes-. g-. f4
	r8 ees'8-. d-. c-. bes-. aes-. g-. f-.
	ees-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r ees'2 ~
% 12-155
	ees4 d8 c bes aes g f
	g4 r f'2
	ees d
	c bes
	aes1
	g4 g' f2
	ees d

	c bes
	f1
	ees'1 ~
	ees4 r r2
	d1 ~
	d4 r4 r2
	des1 ~
% 13-169
	des4 r4 r2
	c2. bes4-.
	aes-. g'-. f-. ees-.
	d r r2
	ees1(
	d4) r r2
	ges1(

	f4) r r2
	R1*4
	aes,1\p ~
	aes8 a( bes d f f, bes  aes)
% 14-180
	g4 r bes2 ~
	bes8 d( f d bes f bes  aes)
	g4 r bes2 ~
	bes8 d( f d bes f bes  aes)
	g8 r bes2\sf a16( bes c  bes)
	ees8 r g,2\sf fis16( g aes  g)

	c8 r ees2\sf d16( ees f  ees)
	f4 r ees r
	f r d r
	r2 bes\p ~
	bes8 d( f d bes f bes  aes)
	g4 r bes2 ~
	bes8 d( f d bes f bes  aes)

% 15-193
	g8 r g'2\sf( f4)
	ees8 r ees2\sf( d4)
	c8 r ees2\sf d16( ees f  ees)
	d4 r ees r
	f r d r
	r1 r
	ees,4\p( e f  d) 
	
	bes'1
	ees4\f e f d
	ees( e f  d)
	g2 f
	ees d
	ees4 r r2
	des2-.\ff b-.
% 16-208
	c2-. r4 c
	ees ees d d
	ees2 r
	des2-. b-.
	c2-. r4 c
	ees ees d d
	ees8-.\p ees8-. ees8-. ees8-. ees8-. ees8-. f16\sf( ees d  ees)
	bes8-.\p bes8-. bes8-. bes8-. bes8-. bes8-. c16\sf( bes a  bes)
	
	g8-.\p g8-. g8-. g8-. g8-. g8-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees d' ees d ees d ees d
	ees f g f g f g f
	g4 r ees ees
	ees2 r2
}


flautoII =  \relative c''' {
	\key ees \major
	R1*14
% 8-104
	r2 g8 g g g
% 9 -117
	g\f g aes16 g fis g ees'4 c 
	c a f8 f f f
	f f g16 f e f d'4 bes 
	bes g ees8 ees ees ees
	ees ees f16 ees d ees c'4 a 
	a fis d8 d d d

	d d ees16 d cis d bes'4 g 
	g ees a r g r fis r
	R1*16
% 10
	r8 c'\p bes aes g f ees d
	ees4 r r2
% 11-144
	R1*8
	
	r8 c'8 bes aes g f ees d 
	ees8\f ees ees ees ees ees f16 ees d ees
	bes'8 bes bes bes bes bes c16 bes a bes
	g4 r4 g2 
% 12-155
	f4.  ees8[] d f ees d
	ees4 c'2 d4
	bes c a bes
	g aes f g
	ees2 f
	ees4 ees'2 d4 
	d c2 bes4 

	bes aes2 g4
	ees2 d
	a'1 
	a4 r r2
	aes1 
	aes4 r4 r2
	bes1 
% 13-169
	bes4 r4 r2
	c2. bes4
	aes g f c'
	bes r r2
	a1 
	bes4 r r2
	ees1 

	d4 r r2
	R1*10
% 14
	r4 g,2 f4
	g8 r ees2 d4 
	ees8 r c'2 bes4
	aes r g r
	aes r f r
	R1*4
% 15-193
	r4 bes2\sf a16 bes c bes
	g8 r g2\sf fis16 g aes g
	ees8 r c'2\sf bes4
	aes4 r g r
	aes r f r
	r1 r
	bes,1\p
	
	ees4\cresc e f d
	bes'1\f
	bes 
	bes2 aes
	g f
	g4 r r2
	des'2\ff b
% 16-208
	c2 r4 c
	bes bes bes bes
	bes2 r
	des2 b
	c2 r4 c
	bes bes bes bes
	ees8\p ees ees ees ees ees f16\sf ees d ees
	bes8\p bes bes bes bes bes c16\sf bes a bes

	g8\p g g g g g aes16\sf g f g
	ees8\f bes ees bes ees bes ees bes
	ees bes' bes bes bes bes bes bes
	bes d ees d ees d ees d
	ees4 r bes bes
	bes2 r2
}

oboeI =  \relative c'' {
	\key ees \major
	R1*9
	r2 d2\p ~
	d4 c8-. bes-. aes-. g-. f-. ees
	f2 f'2 ~
	f4 ees8-. d-. c-. bes-. a-. g-.
	a2 fis'
	g4 r d2\f
% 9 -117
	ees1 ~
	ees2 c
	d1 ~
	d2 bes
	c1 ~
	c2 a

	bes1(
	ees4) r a r
	g r fis r
	r1
	f1\p ~
	f1 ~
	f4 r4 r2
	r1
% 10-131
	bes1 ~
	bes1 ~
	bes4 r4 r2
	r1
	ees,1 ~
	ees1 ~

	ees4 r4 r2
	r1
	aes1 ~
	aes1 ~
	aes4 r r2
	R1*3
	r2 bes2\p ~
	bes4 a8( g f ees d  c)
	d4 r r2
	r4 g8-. f-. ees-. d-. c4
	r1
	
	r4 bes'8-. aes-. g-. f-. ees4
	r1 r
	ees8-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	f1
	g4 r g2(
% 12-155
	f4.) ees8 d f ees d
	ees4 g a bes
	g aes fis g
	ees f d ees
	aes1
	g4 c2 bes4 ~
	bes aes a g ~

	g f2 ees4
	f1
	a1 ~
	a4 r r2
	f1 ~
	f4 r4 r2
	g1 ~
% 13-169
	g4 r4 r2
	c,2. bes4-.
	aes-. g'-. f-. ees-.
	d r r2
	a'1(
	bes4) r r2
	a1(
	bes4) r r2
	R1*6
% 14-180
	g8-.\p g-. g-. g-. g-. g-. aes16( g f  g)
	aes4 r r2
	g8-. g-. g-. g-. g-. g-. aes16( g f  g)
	aes4 r r2
	r4 bes2\sf bes4
	g8 r g2\sf g4

	ees8 r ees2\sf ees4
	aes4 r g r
	aes r f r
	g8-.\p g-. g-. g-. g-. g-. aes16( g f  g)
	aes4 r r2
	g8-. g-. g-. g-. g-. g-. aes16( g f  g)
	aes4 r r2
% 15-193
	r4 bes2\sf bes4
	g8 r g2\sf g4
	ees8 r ees2\sf ees4 
	aes4 r g r
	aes r f r
	R1*3
	
	ees4\p\cresc e f d
	ees4\f( e f  d)
	bes'1 ~
	bes2 aes
	g f
	ees4 r r2
	des2-.\ff b-.
% 16-208
	c2 r4 aes'4
	g g f f
	g2 r
	des2-. b-.
	c2-. r4 aes'
	g g f f
	ees2.\p f16\sf( ees d  ees)
	bes'2.\p c16\sf( bes a  bes)
	
	g2.\p aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees f g f g f g f
	g bes bes bes bes bes bes bes
	bes4 r g g
	g2 r2
}

oboeII =  \relative c'' {
	\key ees \major
	R1*13
	r2 d2
	g,4 r bes2\f
% 9 -117
	c1 
	c2 a
	bes1 
	bes2 g
	a1 
	a2 fis

	g1\f
	g4 r c r
	bes r a r
	R1*19
% 10
% 11-144
	r2 d2\p	
	d4 c8 bes a c bes a
	bes4 r r2
	R1*5

	ees8\f ees ees ees ees ees f16 ees d ees
	f1
	ees4 r4 ees2 
% 12-155
	ees4 d8 c bes aes g f
	g4 ees' f2
	ees d
	c bes
	c d
	ees4 g f2
	ees d	

	c2 bes
	ees d
	ees1 
	ees4 r r2
	d1 
	d4 r r2
	des1 
% 13-169
	des4 r4 r2
	c2. bes4
	aes d c c
	bes r r2
	ges'1 
	f4 r r2
	ges1 

	f4 r r2
	R1*6
% 14
	ees8\p ees ees ees ees ees f16 ees d ees
	f4 r r2
	ees8 ees ees ees ees ees f16 ees d ees
	f4 r r2
	r4 g2\sf f4
	ees8 r ees2\sf d4
	
	c8 r c2\sf bes4
	d4 r ees r
	f r d r
	ees8\p ees ees ees ees ees f16 ees d ees
	f4 r r2
	ees8 ees ees ees ees ees f16 ees d ees
	f4 r r2
% 15-193
	r4 g2\sf f4
	ees8 r ees2\sf d4
	c8 r c2\sf bes4
	d r ees r
	f r d r
	R1*3
	
	bes1\p\cresc
	bes\f
	ees4 e f d
	g2 f
	ees d
	ees4 r r2	
	des2\ff b
% 16-208
	c2 r4 c
	ees ees d d 
	ees2 r
	des2 b
	c2-. r4 ees
	ees ees d d
	ees2.\p f16\sf ees d ees
	bes'2.\p c16\sf bes a bes

	g2.\p aes16\sf g f g
	ees8\f bes ees bes ees bes ees bes
	ees d ees d ees d ees d
	ees f g f g f g f
	g4 r ees ees
	ees2 r2
}

clarinettibI =  \relative c'' {
	\key f \major
	R1*14
	r2 e\f
% 9 -117
	f1 ~
	f2 d
	e1 ~
	e2 c
	d1 ~
	d2 b
	c1(
	f4) r d r
	c r b r
	R1*15
% 10-131
	r8 e\p( g f e g bes a
	g f e d c bes a  g)
	f4 r r2
% 11-144
	R1*8
	r8 f'-.\p e-. d-. c-. bes-. a-. g-.
	f1\f
	c'1
	a4 r f'2 ~
% 12-155
	f4 e8 d c bes a g
	a4 f' d e
	c d b c
	a bes g a
	f'2(  g)
	a4 f2 e4 ~
	e d2 c4 ~
	c bes2 a4
	f'2 e
	b1 ~
	b4 r r2
	e1 ~
	e4 r r2
	ees1 ~	
% 13-169
	ees4 r r2
	d2. c4
	bes-. a'-. g-. f-.
	e r r2
	f1( 
	e4) r r2
	f1( 
	e4) r r2
	d1\p ~
	d8 ees( e f fis g a  bes)
	c,1 ~
	c8 cis( d e f g gis  a)
	bes,1 ~
	bes8 b( c e g g, c  bes)	
% 14-180
	a4 r c2 ~
	c8 e( g e c g c  bes)
	a4 r c2 ~
	c8 e g e c g c bes
	a r a'2\sf(  g4)
	f8 r f2\sf(  e4)
	d8 r f2\sf f4
	e r f r g r e r
	r2 c2\p ~ 
	c8 e( g e c g c  bes)
	a4 r c2 ~
	c8 e( g e c g c  bes)
% 15-193
	a8 r a'2\sf(  g4)
	f8 r f2\sf(  e4)
	d8 r f2\sf f4
	e4 r f r
	g r e r
	c1\p ~
	c1 ~
	c1 ~

	c1
	f4\f fis g e
	f( fis g  e)
	f2 bes,
	a g
	f4 r r2
	ees'2\ff cis
% 16-208
	d2 r4 f
	f f e e
	f2 r
	ees2-. cis-.
	d-. r4 f
	f f e e 
	f2.\p g16\sf( f e  f)
	c2.\p d16\sf( c b  c)
	a2.\p bes16\sf( a g  a)
	f8\f c f c f c f c
	f c' c c c c c c
	c e f e f e f e
	f4 r c c
	c2 r
}

clarinettibII =  \relative c'' {
	\key f \major
	R1*14
	r2 c\f
% 9 -117
	d1 
	d2 b
	c1 
	c2 a
	b1
	b2 gis
	a1 
	a4 r b r
	a r gis r
	R1*15
% 10-131
	r8 c\p e d c e g f
	e d c bes a g f e
	f4 r r2
% 11-144
	R1*8
	r8 d' c bes a g f e
	f1\f
	g1
	f4 r a2
% 12-155
	g4.  f8[] e g f e
	f4 d' b c
	a bes gis a
	f g e f
	d'2 e
	f4 d2 c4 
	c bes4 b a4 
	a g2 f4
	d'2 c
	f,1 
	f4 r r2
	bes1 
	bes4 r r2
	a1 	
% 13-169
	a4 r r2
	d2. c4
	bes e d d
	c r r2
	b1
	c4 r r2
	b1
	c4 r r2
	R1*10
% 14-180
	r4 c2 c4
	d8 r a2 a4
	bes8 r d2 c4
	bes r a r 
	bes r g r
	R1*4
% 15-193
	r4 c2\sf c4
	d8 r a2\sf a4
	bes8 r d2\sf c4
	bes4 r a r
	bes r g r
	a2\p bes
	a bes
	a bes

	a\cresc bes
	a\f bes
	a bes
	c g
	f e
	f4 r r2
	ees'2\ff cis
% 16-208
	d2 r4 d
	c c c c 
	c2 r
	ees2 cis
	d r4 d
	c c c c 
	f2.\p g16\sf f e f
	c2.\p d16\sf c b c
	a2.\p bes16\sf a g a
	f8\f c f c f c f c
	f g a g a g a g
	a c c c c c c c
	c4 r a a
	a2 r
}

fagottoI =  \relative c {
	\key ees \major
	R1*6
	c8-.\p c-. c-. c-. c-. c-. d16( c b  c)
	g'8-. g-. g-. g-. g-. g-. aes16( g fis  g)
	ees4 r ees'2 ~

	ees4 d8-. c-. b-. aes-. g-. f-.
	ees4 c( ees  aes)
	r d,( f  bes)
	r ees,( g  c)
	r fis,( a  d)
	g,8-.\f g-. g-. g-. g-. g-. a16( g fis  g)
% 9 -117
	ees'4 c2 a4
	f8-. f-. f-. f-. f-. f-. g16( f e  f)
	d'4 bes2 g4
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	c'4 a2 fis4
	d8-. d-. d-. d-. d-. d-. ees16( d cis  d)

	bes'4 g2 ees4
	c r c' r
	d r d, r
	R1*3
	r8 b'\p( d c b d f ees
	d c b aes g f ees  d)
% 10-131
	c4 r r2
	r1
	r8 g'( bes aes g aes des c
	bes aes g f e des' c  bes)
	a4 r r2
	r1

	r8 a( c bes a c ees des
	c bes a ges f ees d  ees)
	f4 r r2
	r1
	r1
	r8 ees'\p( d c bes aes g  f)
	ees4 r ees'2 ~
% 11-144
	ees4 d8( c bes aes g  f)
	g4 r r2
	r1
	r4 f'8-.\p ees-. d-. c-. bes-. aes-.
	g4 c16( b a  b) c2 ~
	c4 d16( cis b  cis) d2 ~
	
	d4 ees16( d c  d) ees2 ~
	ees4 f16( e d  e) f2 ~
	f8 ees-. d-. c-. bes-. aes-. g-. f-.
	ees2\f ees' ~
	ees4 d8 c bes aes g f
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
% 12-155
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f2 bes
	ees,8 ees c' c a a bes bes
	ees, ees aes aes fis fis g g

	c, c f f d d ees ees
	a2\sf bes\sf
	c8 c c c c c c c
	f,4 r f4.( g16  a)
	bes4 f d f
	bes, r bes'4.( c16  d)
	ees4 bes g bes
% 13-169
	ees, r ees4.( f16  g)
	aes4 r aes-. g-.
	c-. bes-. aes-. a-.
	bes r r2
	bes8 bes bes bes bes bes bes bes 
	bes4 r r2
	bes8 bes bes bes bes bes bes bes 

	bes4 r r2
	r1 r
	bes1\p ~
	bes8 b( c d ees f fis  g)
	aes,1 ~
	aes8 a( bes d f f, bes  ges)
% 14-180
	g4 r r2
	f8-.\p f-. f-. f-. f-. f-. g16( f ees  f)
	g4 r r2
	f8-. f-. f-. f-. f-. f-. g16( f ees  f)
	g8 r ees'\f ees ees ees d d
	c8-. r c2\sf( bes8) r
	
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	r1
	f8-.\p f-. f-. f-. f-. f-. g16( f ees  f)
	g4 r r2
	f8-. f-. f-. f-. f-. f-. g16( f ees  f)
% 15-193
	g8 r ees'\f ees ees ees d d 
	c8 r c2\sf( bes8) r
	aes8 r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	r1
	r1
	g8\p bes( g bes aes bes aes  bes)
	
	g8 bes( g\cresc bes aes bes aes  bes)
	g8\f bes( g bes aes bes aes  bes)
	g8 bes( g bes aes bes aes  bes)
	g g g g aes aes aes aes
	bes bes bes bes bes, bes bes bes
	ees4 r r2
	des2-.\ff b-.
% 16-208
	c2 r4 aes4
	bes bes bes bes 
	ees,2 r2
	des'2-. b-.
	c-. r4 a4
	bes bes bes bes
	ees'8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)
	
	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees bes ees bes ees bes ees bes
	ees bes' ees bes ees bes ees bes
	ees4 r ees, ees
	ees2 r2	
}

fagottoII =  \relative c {
	\key ees \major
	R1*6
	c8\p c c c c c d16 c b c
	g'8 g g g g g aes16 g fis g
	ees4 r c'2 

	c4 b8 aes g f ees d
	c4 c ees aes
	r d, f bes
	r ees, g c
	r fis, a d
	g,8\f g g g g g a16 g fis g
% 9 -117
	ees'4 c2 a4
	f8 f f f f f g16 f e f
	d'4 bes2 g4
	ees8 ees ees ees ees ees f16 ees d ees
	c'4 a2 fis4
	d8 d d d d d ees16 d cis d

	bes'4 g2 ees4
	c r c' r
	d r d, r
	
% 10-131
	R1*16
	r8 c'\p bes aes g f ees d
	ees4 r g2 
% 11-144
	g4 f8 ees d f ees d
	ees4 r r2
	r1
	r4 d'8\p c bes aes g f
	ees4 c'16 b a b c2 
	c4 d16 cis b cis d2 
	
	d4 ees16 d c d ees2 
	ees4 f16 e d e f2 
	f8 c bes aes g f ees d
	ees2\f ees' 
	ees4 d8 c bes aes g f
	ees8 ees ees ees ees ees f16 ees d ees
% 12-155
	bes'8 bes bes bes bes bes c16 bes a bes
	ees8 r ees2 d8 r
	r4 c2\sf bes8 r
	r4 aes2\sf g8 r
	f2 bes
	ees,8 ees c' c a a bes bes
	ees, ees aes aes fis fis g g

	c, c f f d d ees ees
	a2\sf bes\sf
	c8 c c c c c c c
	f,4 r f4. g16 a
	bes4 f d f
	bes, r bes'4. c16 d
	ees4 bes g bes
% 13-169
	ees, r ees4. f16 g
	aes4 r aes g
	c bes aes a
	bes r r2
	bes8 bes bes bes bes bes bes bes 
	bes4 r r2
	bes8 bes bes bes bes bes bes bes 

	bes4 r r2
	R1*7
	
% 14-180
	d,8\p d d d d d ees16 d c d
	ees4 r r2
	d8 d d d d d ees16 d c d
	ees8 r ees' ees ees ees d d
	c8 r c2\sf bes8 r
	
	aes8 r aes2\sf g8 r
	f4 r ees r
	aes r bes r
	r1
	d,8\p d d d d d ees16 d c d
	ees4 r r2
	d8 d d d d d ees16 d c d
% 15-193
	ees8 r ees'\f ees ees ees d d 
	c8 r c2\sf bes8 r
	aes8 r aes2\sf g8 r
	f4 r ees r
	aes r bes r
	r1
	r1
	g8\p bes g bes aes bes aes bes
	
	g8 bes g\cresc bes aes bes aes bes
	g8\f bes g bes aes bes aes bes
	g8 bes g bes aes bes aes bes
	g g g g aes aes aes aes
	bes bes bes bes bes, bes bes bes
	ees4 r r2
	des2\ff b
% 16-208
	c2 r4 aes4
	bes bes bes bes 
	ees,2 r2
	des'2 b
	c r4 a4
	bes bes bes bes
	ees'8\p ees ees ees ees ees f16\sf ees d ees
	bes8\p bes bes bes bes bes c16\sf bes a bes
	
	g8\p g g g g g aes16\sf g f g
	ees8\f bes ees bes ees bes ees bes
	ees bes ees bes ees bes ees bes
	ees bes' ees bes ees bes ees bes
	ees4 r ees, ees
	ees2 r2	
}

corniesI =  \relative c' {
	R1*14
	e8\f e e e e4 r
% 9 -117
	c'4 r r2
	d4 r r2
	d4 r r2
	c4 r r2
	c4 r r2
	R1*20
% 10-131
	g1\p
	c,4 r r2
% 11-144
	R1*9
	c'1\f
	d
	e
% 12-155
	d
	c4 e d2
	r1
	r2 d4 e
	c2 d
	e4 e d2
	r1
	r2 d4 e
	d2\sf d\sf
	d1 ~
	d4 r r2
	d1 ~
	d4 r r2
	e1 ~
% 13-169
	e4 r r2
	r8 c c c c4 c
	c r d d d r r2
	g,1 ~
	g4 r r2
	g1 ~
	g4 r r2
	R1*6
% 14-180
	r8 c\p c c c c c c
	d4 r r2
	r8 c c c c c c c
	d4 r r2
	c8\f c c c c c d d 
	c r e2\sf r4
	r4 c2\sf r4
	g r g r
	r2 g4 r
	r8 c\p c c c c c c 
	d4 r r2
	r8 c c c c c c c 
	d4 r r2
% 15-193
	c8\f c c c c c d d 
	c r e2\sf r4
	r c2\sf r4
	g r g r
	r2 g4 r
	R1*4
	g1\f ~
	g1
	c4 r r2
	e2 d
	c8 c, c c c c c c
	c1\ff ~
% 16-208
	c8 c c c c4 r
	e' e d d 
	c8 c, c c c c c c 
	c1 ~
	c8 c c c c4 r
	e' e d d 
	c2.\p c4\sf
	g2.\p g4\sf
	e2.\p e4\sf
	c8\f g' c g c g c g
	c d e d e d e d
	e g e g e g e g
	e4 r g, g 
	g2 r2
}

corniesII =  \relative c' {
	R1*14
	e8\f e e e e4 r
% 9 -117
	c4 r r2
	d'4 r r2
	g,4 r r2
	e4 r r2
	c4 r r2
	R1*20
% 10-131
	g1\p
	c4 r r2
% 11-144
	R1*9
	c1\f
	g'
	c
% 12-155
	g
	e4 c'2 g4
	r1
	r2 g4 c
	c,2 g'
	g4 c2 g4
	r1
	r2 g4 g
	d'2\sf d\sf
	d1 ~
	d4 r r2
	g,1 ~
	g4 r r2
	g1 ~
% 13-169
	g4 r r2
	r8 c, c c c4 c
	c r d' d
	g, r r2
	g,1 ~
	g4 r r2
	g1 ~
	g4 r r2
	R1*6
% 14-180
	r8 e'\p e e e e e e
	g4 r r2
	r8 e e e e e e e
	g4 r r2
	e8\f e e e e e g g
	e r e2\sf r4
	r4 c2\sf r4
	g r c r
	r2 g4 r
	r8 e'\p e e e e e e
	g4 r r2
	r8 e e e e e e e
	g4 r r2
% 15-193
	e8\f e e e e e g g
	e r e2\sf r4
	r c2\sf r4
	g r c r
	r2 g4 r
	R1*4
	g1\f ~
	g1
	c4 r r2
	c'2 g
	e8 c c c c c c c
	c1\ff ~
% 16-208
	c8 c c c c4 r
	c' c g g
	e8 c c c c c c c 
	c1 ~
	c8 c c c c4 r
	c' c g g
	c,2.\p c4\sf
	g'2.\p g4\sf
	e2.\p e4\sf
	c8\f g' c g c g c g
	e g c g c g c g
	c g c g c g c g
	c4 r e, e
	e2 r2
}

trombeesI =  \relative c' {
	R1*14
	e8\f e e e e4 r
% 9
	c'4 r r2
	d4 r r2
	d4 r r2
	c4 r r2
	c4 r r2
	R1*31

	c2\f r
	d r
	e r
% 12
	d r
	c4 r r2
	r1
	r2 g4 g
	c r g r
	g r r2
	r1
	
	r1
	r1
	c8-. c-. c-. c-. c-. c-. c-. c-. 
	c4 r r2
	g8-. g-. g-. g-. g-. g-. g-. g-. 
	g4 r r2
	g8-. g-. g-. g-. g-. g-. g-. g-. 
% 13
	g4 r r2
	r8 c c c c4 c
	c r d d
	d r r2
	c2 c4 c
	g r r2
	c2 c4 c
	
	g4 r r2
	R1*7
	r4 d'\p d d
	e r r2
	r4 d d d
	c8\f c c c c c d d 
	c r e2\sf r4

	r4 c2\sf r4
	g r g r
	r2 g4 r
	r1
	r4 d' d d
	e r r2
	r4 d d d
% 15
	c8\f c c c c c d d 
	c r e2\sf r4
	r c2\sf r4
	g r g r
	r2 g4 r
	R1*4

	g1\f ~
	g
	c4 r r2
	e2 d
	c8 c, c c c c c c
	c1\ff ~
% 16
	c8 c c c c4 r
	e' e d d
	c8 c, c c c c c c
	c1 ~
	c8 c c c c4 r
	e' e d d 
	c2.\p c4\sf
	g2.\p g4\sf

	e2.\p e4\sf
	c8\f g c g c g c g
	c g' e g e g e g
	e g c g c g c g
	c4 r c, c
	c2 r2
}

trombeesII =  \relative c' {
	R1*14
	e8\f e e e e4 r
% 9
	c4 r r2
	d'4 r r2
	g,4 r r2
	e4 r r2
	c4 r r2
	R1*31

	c2\f r
	g' r
	c r
% 12
	g r
	c,4 r r2
	r1
	r2 g'4 c,
	c r g' r
	c, r r2
	R1*3
	c8 c c c c c c c 
	c4 r r2
	g8 g g g g g g g 
	g4 r r2
	c8 c c c c c c c
% 13
	c4 r r2
	r8 c c c c4 c
	c r d' d
	g, r r2
	c,2 c4 c
	g r r2
	c2 c4 c
	
	g4 r r2
	R1*7
	r4 g'\p g g
	c r r2
	r4 g g g
	e8\f e e e e e g g
	e r e2\sf r4

	r4 c2\sf r4
	g r c r
	r2 g4 r
	r1
	r4 g' g g
	c r r2
	r4 g g g
% 15
	e8\f e e e e e g g
	e r e2\sf r4
	r c2\sf r4
	g r c r
	r2 g4 r
	R1*4

	g1\f ~
	g
	c4 r r2
	c'2 g
	e8 c c c c c c c
	c1\ff ~
% 16
	c8 c c c c4 r
	c' c g g
	e8 c c c c c c c
	c1 ~
	c8 c c c c4 r
	c' c g g
	c,2.\p c4\sf
	g'2.\p g4\sf

	e2.\p e4\sf
	c8\f g c g c g c g
	c g c g c g c g
	c g' e g e g e g
	e4 r c c
	c2 r2
}

timpani =   \relative c {
	R1*14
	b8\f b b b b4 r
% 9
	e4 r r2
	r1
	b4 r r2
	e4 r r2
	e4 r r2
	R1*31
	e2\f r
	b r
	e r
% 12
	b r
	e4 r r2
	r1
	r2 b4 e
	e r b r
	e r r2
	R1*3

	e8-. e-. e-. e-. e-. e-. e-. e-. 
	e4 r r2
	b8-. b-. b-. b-. b-. b-. b-. b-. 
	b4 r r2
	e8-. e-. e-. e-. e-. e-. e-. e-. 
% 13
	e4 r r2
	r8 e e e e4 e
	e e e e
	b r r2
	b1\trill
	b4 r r2
	b1\trill

	b4 r r2
	R1*7
	r4 b\p b b
	e r r2
	r4 b b b
	e8\f e e e e e b b 
	e4 r r2

	r4 e8. e16 e4 r
	b r e r
	r2 b4 r
	r1
	r4 b\p b b
	e r r2
	r4 b b b
% 15
	e8\f e e e e e b b 
	e4 r r2
	r4 e8. e16 e4 r
	b r e r
	r2 b4 r
	R1*4
	e4\f r b r 
	e r b r
	e r r2
	b4 r b r
	e8 e16 e e8 e e e e e
	e2\ff e
% 16
	e8 e e e e4 r
	b b b b
	e8 e16 e e8 e e e e e
	e2 e
	e8 e e e e4 r
	b b b b
	e16\p e e e e8 e e4 r
	b16\p b b b b8 b b4 r

	b16\p b b b b8 b b4 r
	e8\f b e b e b e b
	e b16 b e8 b e b e b
	e b16 b e8 b e b e b
	e4 r e e 
	e2 r
}

trombonealto =  \relative c' {
	\key ees \major
	R1*10
	c1\p(
	bes
	ees
	d)
	d8\f d d d d4 r
% 9
	ees4 r c r
	c8 c c c c4 r
	d r bes r
	bes8 bes bes bes bes4 r
	c r a r
	a8 a a a a4 r
	
	d4 r g, r
	c r c r
	bes r a r
	R1*27
	g2\f r
	bes r
	ees1
% 12
	bes
	ees4 r r2
	c4 r r2
	aes4 r r2
	c2 d
	ees4 r r2
	r1

	r1
	ees2\sf d2\sf
	ees1 ~
	ees4 r r2
	d1 ~
	d4 r r2
	des1 ~
% 13
	des4 r r2
	c4 r r2
	r1
	r1
	ges'1 
	f4 r r2
	ges1 

	f4 r r2
	R1*10
	bes,2.\f bes4
	g8 r g2\sf r4
	
	r4 c2\sf r4
	d4 r ees r
	f r d r
	R1*4
% 15
	bes2.\f bes4
	g8 r g2\sf r4
	r c2\sf r4
	d r ees r 
	f r d r
	R1*4
	g,2\f aes
	g aes
	g' f
	ees d
	ees4 r r2
	des\ff b
% 16
	c2 r
	ees4 ees d d
	ees2 r
	des b
	c r
	ees4 ees d d
	r2 ees\sf
	r bes\sf
	
	r g\f
	R1*3
	r2 g4 g 
	g2 r
}

trombonetenor =  \relative c' {
	\key ees \major
	R1*10
	c1\p(
	bes
	ees
	d)
	bes'8\f bes bes bes bes4 r
% 9
	g4 r ees r
	a8 a a a a4 r
	f r d r
	g8 g g g g4 r
	ees r c r
	fis8 fis fis fis fis4 r
	
	g4 r bes, r
	ees r a r
	g r fis r
	R1*27
	ees2\f r
	f r
	g1
% 12
	f
	ees4 r r2
	c4 r r2
	aes4 r r2
	aes'2 aes
	g4 r r2
	r1

	r1
	f2\sf f2\sf
	a1(
	a4) r r2
	aes1 ~
	aes4 r r2
	g1 ~
% 13
	g4 r r2
	aes4 r r2
	r1
	r1
	a1(
	bes4) r r2
	a1(
	bes4) r r2
	R1*10
	g2.\f f4
	ees8 r ees2\sf r4
	
	r4 ees2\sf r4
	aes4 r g r
	aes r f r
	R1*4
% 15
	g2.\f f4
	ees8 r ees2\sf r4
	r ees2\sf r4
	aes r g r 
	aes r f r
	R1*4
	g2\f aes
	g aes
	bes aes
	g f
	ees4 r r2
	des\ff b
% 16
	c2 r
	g'4 g f f
	ees2 r
	des-. b-.
	c-. r
	g'4 g f f
	r2 ees\sf
	r bes'\sf
	
	r g\f
	R1*3
	r2 ees4 ees 
	ees2 r
}

trombonebasso =  \relative c {
	\key ees \major
	R1*10
	c1\p(
	bes
	ees
	d)
	g,8\f g g g g4 r
% 9
	ees'4 r c r
	f,8 f f f f4 r
	d' r bes r
	ees8 ees ees ees ees4 r
	c r a r
	d8 d d d d4 r
	
	bes4 r g r
	c r c r
	d r d r
	R1*27
	ees2\f r
	bes' r
	ees,1
% 12
	bes
	ees4 r r2
	c4 r r2
	aes4 r r2
	f'2 bes,
	ees4 r r2
	r1

	r1
	a,2\sf bes2\sf
	c1 
	f,4 r r2
	bes1 ~
	bes4 r r2
	ees1 ~
% 13
	ees4 r r2
	aes,4 r r2
	r1
	r1
	bes1 ~
	bes4 r r2
	bes1 ~

	bes4 r r2
	R1*10
	ees2.\f d4
	c8 r c2\sf r4
	
	r4 aes'2\sf r4
	f4 r ees r
	aes, r bes r
	R1*4
% 15
	ees2.\f d4
	c8 r c2\sf r4
	r aes2\sf r4
	f' r ees r 
	aes, r bes r
	R1*4
	g2\f aes
	g aes
	g aes
	bes bes
	ees4 r r2
	des-.\ff b-.
% 16
	c2 r
	bes4 bes bes bes
	ees2 r
	des-. b-.
	c-. r
	bes4 bes bes bes
	r2 ees\sf
	r bes\sf
	
	r g\f
	R1*3
	r2 ees'4 ees
	ees2 r
}

violinoI =  \relative c' {
	\key ees \major
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	f'8-. f-. f-. f-. f-. f-. ges16( f e  f)
% 8
	des8-. r ges4( f  e)
	f1 ~
	f8(  ees) ees-. ees-. ees-. ees-. ees-. ees-.
	ees d4 aes'( g  f8)
	ees4 r c2 ~
	c4 b8-. aes-. g-. f-. ees-. d-. 
	c4 r r2

	r1
	ees'8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g8-. g-. g-. g-. g-. g-. a16( g fis  g)
	d'8-. d-. d-. d-. d-. d-. ees16( d cis  d)
	bes4 r g8-.\f g-. g-. g-.
% 9
	g-. g-. a16( g fis  g) ees'4 c ~
	c a f8-. f-. f-. f-.
	f-. f-. g16( f e  f) d'4 bes ~
	bes g ees8-. ees-. ees-. ees-.
	ees-. ees-. f16( ees d  ees) c'4 a ~
	a fis d8-. d-. d-. d-.
	
	d-. d-. ees16( d cis  d) bes'4 g ~
	g ees r <ees, c' a'>
	r <d bes' g'> r <d a' fis'>
	r1
	g'8-.\p g-. g-. g-. g-. g-. bes16\f( aes g  aes)
	g8-.\p g-. bes16\f( aes g  aes) g8-.\p g-. bes16\f( aes g  aes)
	g4\p r r2
	r1
% 10
	c,8-.\p c-. c-. c-. c-. c-. ees16\f( des c  des)
	c8-.\p c-. ees16\f( des c  des) c8-.\p c-. ees16\f( des c  des)
	c4\p r r2
	r1
	f8-.\p f-. f-. f-. f-. f-. aes16\f( ges f  ges)
	f8-.\p f-. aes16\f( ges f  ges) f8-.\p f-. aes16\f( ges f  ges)
	
	f4\p r r2
	r1
	bes,8-.\p bes-. bes-. bes-. bes-. bes-. des16\f( ces bes  ces)
	bes8-.\p bes-. des16\f( ces bes  ces) bes8-.\p bes-. des16\f( ces bes  ces)
	bes4\p r r2
	R1*3

	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	f'8-. f-. f-. f-. f-. f-. g16( f e  f)
	d4 r r2
	r r4 c'8-. bes-.
	aes-. g-. f-. e-. d-. c-. bes-. a-.

	g4 r r ees''8-. d-.
	c-. bes-. aes-. g-. f-. ees-. d-. c-.
	bes-. ees-. d-. c-. bes-. aes-. g-. f-.
	ees'-.\f ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r ees'2 ~
% 12
	ees4 d8-. c-. bes-. aes-. g-. f-.
	g16 g g g c c c c a a a a bes bes bes bes
	ees, ees ees ees aes aes aes aes fis fis fis fis g g g g
	c, c c c f f f f d d d d ees ees ees ees
	aes8-. aes-. aes-. aes-. aes-. aes-. bes16( aes g  aes)
	g8 r ees'2\sf(  d8) r
	r4 c2\sf(  bes8) r
	
	r4 aes2\sf(  g8) r
	f4..\sf f16 f4..\sf f16
	ees'8 ees4 ees ees ees8 ~
	ees ees,, ees ees ees ees f16( ees d ees
	d8) aes''4 aes aes aes8 ~
	aes aes,, aes aes aes aes bes16( aes g  aes)
	g8 des'''4 des des des8 ~
% 13
	des des,, des des des des ees16( des c  des)
	c4 r8 ees'32( f32 g32 aes64 bes64  c4) bes-.
	aes-. g-. f-. ees-.
	bes'8-. bes,-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ges'8 ges4 ges ges(  ees8)
	d-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a'8 a4 a a a8
	
	bes4 r r2
	g8-.\p g-. g-. g-. g-. g-. aes16( g f  g)
	aes4 r r2
	f8-. f-. f-. f-. f-. f-. g16( f ees  f)
	g4 r r2
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	f4 r <bes,, aes'> r
% 14
	r g' r g'
	r aes r f,
	r g r g'
	r aes r f,
	bes'8\f bes bes bes bes bes a16( bes c  bes)
	ees8 r g,2\sf fis16( g aes  g)

	c8-. r ees,2\sf d16( ees f  ees)
	aes4 <d,, bes' aes'> r <ees bes' g'>
	r <f c' f> r <bes, f' d'>
	r g'\p r g'
	r aes r f,
	r g r g'
	r aes r f,
% 15
	bes'8-.\f bes-. bes-. bes-. bes-. bes-. a16( bes c  bes)
	ees8-. r g,2\sf fis16( g aes  g)
	c8-. r ees,2\sf d16( ees f  ees)
	aes4 <d,, bes' aes'> r <ees bes' g'>
	r <f c' f> r <bes, f' d'>
	ees'16\p ees ees ees e e e e f f f f d d d d 
	ees ees ees ees e e e e f f f f d d d d 
	bes'16 bes bes bes bes bes bes bes\cresc bes bes bes bes bes bes bes bes
	
	bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes
	ees\f ees ees ees e e e e f f f f d d d d
	ees ees ees ees e e e e f f f f d d d d
	g g g g g g g g f f f f f f f f 
	ees ees ees ees ees ees ees ees d d d d d d d d 
	ees4 r r2
	des,,2-.\ff b-.
% 16
	c r4 <ees c' aes'>
	<ees bes' g'> <ees bes' g'> <d bes' bes'> <d bes' bes'> 
	<ees bes' g'> r r2
	des2-. b-.
	c-. r4 <ees c' aes'>4
	<ees bes' g'> <ees bes' g'> <d bes' bes'> <d bes' bes'>
	ees''8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)
	
	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees f16 f g g f f g g f f g g f f
	g8 d'16 d ees ees d d ees ees d d ees ees d d
	ees4 r <g,,, ees'> <g ees'>
	<g ees'>2 r2
}

violinoII =  \relative c' {
	\key ees \major
	r2 des'2\p ~
	des4 c8 bes a ges f a
% 8
	bes4 r des2
	c4( ees des  c)
	b8(  c) c-. c-. c-. c-. c-. c-. 
	c b4 b( c  b8)
	c4 r ees,2 ~
	ees4 d8-. c-. b-. d-. c-. b-.
	c-. c-. c-. c-. c-. c-. d16( c b  c)

	g'8-. g-. g-. g-. g-. g-. a16( g f  g)
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g8-. g-. g-. g-. g-. g-. a16( g fis  g)
	d'8-. d-. d-. d-. d-. d-. ees16( d cis  d)
	bes4 r g'8-.\f g-. g-. g-.
% 9
	g-. g-. a16( g fis  g) ees'4 c ~
	c a f8-. f-. f-. f-.
	f-. f-. g16( f e  f) d'4 bes4 ~
	bes4 g ees8-. ees-. ees-. ees-. 
	ees-. ees-. f16( ees d  ees) c'4 a ~
	a fis d8-. d-. d-. d-. 
	
	d8-. d-. ees16( d cis  d) bes'4 g ~
	g ees r <ees, c' a'>
	r <d bes' g'> r <d a' fis'>
	r1
	d'8-.\p d-. d-. d-. d-. d-. ees-.\f ees-.
	d\p d ees\f ees d\p d ees\f ees
	d4\p r r2
	r1
% 10
	g,8\p f f f f f aes\f aes
	g\p g aes\f aes g\p g aes\f aes
	g4\p r r2
	r1
	c8\p c c c c c des\f des
	c\p c des\f des c\p c des\f des
	
	c4\p r r2
	r1
	f,8\p f f f f f ges\f ges
	f\p f ges\f ges f\p f ges\f ges
	f4\p r r2
	r1
	ees8-.\p ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
% 11
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r e r
	f r r2
	r r4 bes8-. aes-. 
	g-. f-. ees-. d-. c-. bes-. aes-. g-.
	aes4 r r d'8-. c-.

	bes-. aes-. g-. f-. ees-. d-. c-. bes-.
 	aes4 r r f''8-. ees-. 
	d-. c-. bes-. aes-. g-. f-. ees-. d-.
	ees-.\f ees'-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	g4 r g2
% 12
	f4. ees8-. d-. f-. ees-. d-.
	ees16 ees ees ees g g g g c, c c c f f f f 
	g, g g g ees' ees ees ees a, a a a d d d d 
	ees, ees ees ees c' c c c f, f f f bes bes bes bes
	c8 c4 c8(  d) d4 d8
	ees16 ees ees ees g g g g f f f f bes bes bes bes
	g g g g ees ees ees ees d d d d g g g g 

	ees ees ees ees c c c c bes bes bes bes ees ees ees ees 
	<f,\sf ees'>2 <f\sf d'>
	<c' a'>8 <c a'>4 <c a'> <c a'> <c a'>8 ~
	<c a'>  a,[ a a]  a[ a a a]
	bes <d' f>4 <d f> <d f> <d f>8 ~
	<d f> aes, aes aes aes aes bes16( aes g  aes)
	g8 <bes' g'>4 <bes g'> <bes g'> <bes g'>8 ~
% 13
	<bes g'>  g,[ g g]  g[ g g g]
	aes4 r8 ees''32( f g aes64 bes  c4) bes-.
	aes-. d,-. c-. c-.
	d8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	a8 a4 a a a8(
	bes) bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ges'8 ges4 ges ges(  ees8)
	
	d bes-.\p bes-. bes-. bes-. bes-. c16( bes a  bes)
	bes4 r bes r
	aes r r2
	aes4 r aes r
	g r r2
	g4 r g r
	f r f r
% 14
	r ees r ees'
	r f r d, 
	r ees r ees'
	r f r d,
	g'8\f g g g g g f f
	g-. r ees2\sf(  d8) r
	
	ees-. r c2\sf(  bes8) r
	d4 <d, bes' c'> r <ees bes' g'>
	r <f c' f> r <bes, f' d'>
	r ees\p r ees'
	r f r d,
	r ees r ees'
	r f r d,
% 15
	g'8-.\f g g g g g f f 
	g8-. r ees2\sf(  d8) r
	ees-. r c2\sf(  bes8) r
	d4 <d, bes' aes'> r <ees bes' g'>
	r <f c' f>
	r <bes, f' d'>
	bes'8\p bes4 bes bes bes8 ~
	bes bes4 bes bes bes8
	ees16 ees ees ees e e e e f\cresc f f f d d d d 
	
	ees ees ees ees e e e e f f f f d d d d
	bes'16\f bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes 
	bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes 
	bes bes bes bes bes bes bes bes aes aes aes aes aes aes aes aes
	g g g g g g g g f f f f f f f f
	g8  ees,16[ ees ees ees ees ees]  ees[ ees ees ees ees ees ees ees]
	ees\ff ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees 
%16 
	ees ees ees ees ees ees ees ees ees4 <ees c' aes'>
	<ees bes' g'> <ees bes' g'> <d bes' bes'> <d bes' bes'>
	<ees bes' g'>8  ees16[ ees ees ees ees ees]  ees[ ees ees ees ees ees ees ees] 
	ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees 
	ees ees ees ees ees ees ees ees ees4 <ees c' aes'> 
	<ees bes' g'> <ees bes' g'> <d bes' bes'> <d bes' bes'>
	ees''8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)
	
	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees d16 d ees ees d d ees ees d d ees ees d d 
	ees8 f16 f g g f f g g f f g g f f 
	g4 r <g,, ees'> <g ees'>
	<g ees'>2 r2
}

viola =  \relative c' {
	\key ees \major
	r2 bes'2\p ~
	bes4 a8 g f ees des c
% 8
	bes4 r bes'2 ~
	bes( a)
	aes2( g4  fis)
	g( f ees  d)
	c r r2
	R1*3

	r4 c,( ees  aes)
	r d,( f  bes)
	r ees,( g  c)
	r fis,( a  d)
	g,8-.\f g'-. g-. g-. g-. g-. a16( g fis  g)
% 9
	ees'4 c2 a4
	f8-. f-. f-. f-. f-. f-. g16( f e  f)
	d'4 bes2 g4
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	c'4 a2 fis4
	d8-. d-. d-. d-. d-. d-. ees16( d cis  d)

	bes'4 g2 ees4
	c r c' r
	d r d, r
	r1
	b'8-.\p b-. b-. b-. b-. b-. c-.\f c-.
	b\p b c\f c b\p b c\f c
	b4\p r r2
	r1
% 10
	e,8\p e e e e e f\f f
	e\p e f\f f e\p e f\f f
	e4\p r r2
	r1
	a8\p a a a a a bes\f bes
	a\p a bes\f bes a\p a bes\f bes
	
	a4\p r r2
	r1
	d,8\p d d d d d ees\f ees
	d\p d ees\f ees d\p d ees\f ees
	d4\p r r2
	R1*3

	r2 e4\p r
	f r r2
	r8 bes,-. bes-. bes-. bes-. bes-. bes-. bes-.
	bes-. bes-. c16( b a  b) c8-. c-. c-. c-.
	c-. c-. d16( cis b  cis) d8-. d-. d-. d-.
	
	d-. d-. ees16( d c  d) ees8-. ees-. ees-. ees-.
	ees-. ees-. f16( e d  e) f8-. f-. f-. f-.
	f4 r r2
	r g\f ~
	g4 f8-. ees-. d-. f-. ees-. d-.
	ees-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
% 12
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ees8 r ees,2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f f f f bes bes bes bes
	ees ees c' c a a bes bes
	ees, ees aes aes fis fis g g 

	c, c f f d d ees ees
	c'2\sf bes\sf
	<c,, c'>8 <c c'> <c c'> <c c'> <c c'> <c c'> <c c'> <c c'> 
	c' c c c c c c c 
	bes bes'4 bes bes bes8 ~
	bes d,, d d d d f f 
	ees ees''4 ees ees ees8 ~
% 13
	ees g,, g g g g g g 
	ees4 r aes'-. g-.
	c-. bes-. aes-. a-.
	bes r r2
	c,8 c4 c ees( ges8)
	f4 r r2
	c'8 c4 c c c8
	
	f,4 r r2
	e8-.\p e-. e-. e-. e-. e-. f16( e d  e)
	f4 r r2
	d8-. d-. d-. d-. d-. d-. ees16( d c  d)
	ees4 r r2
	c8-. c-. c-. c-. c-. c-. d16( c bes  c)
	d4 r d, r
%14
	r bes' r bes
	r bes r bes
	r bes r bes
	r bes r bes
	ees'8\f ees ees ees ees ees d d 
	c8-. r c2\sf( bes8) r

	aes-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	r bes,\p r bes
	r bes r bes
	r bes r bes
	r bes r bes
% 15
	ees'8\f ees ees ees ees ees d d 
	c8-. r c2\sf( bes8) r
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	g8\p( bes g bes aes bes aes  bes)
	g( bes g bes aes bes aes  bes)
	g( bes g bes aes\cresc bes aes  bes)

	g( bes g bes aes bes aes  bes)
	g\f( bes g bes aes bes aes  bes)
	g( bes g bes aes bes aes  bes)
	g g g g aes aes aes aes
	bes bes bes bes bes, bes bes bes
	ees16 ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees
	ees\ff ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees
% 16
	ees ees ees ees ees ees ees ees ees4 aes
	bes bes bes, bes
	ees16 ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees
	ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees ees
	ees ees ees ees ees ees ees ees ees4 aes
	bes bes bes, bes
	ees'8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)

	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees bes ees bes ees bes ees bes
	ees bes' ees bes ees bes ees bes
	ees4 r ees, ees 
	ees2 r
}

violoncello =  \relative c {
	\key ees \major
	r1 r 
	bes'8-.\p bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	f'8-. f-. f-. f-. f-. f-. g16( f e  f)
	aes2( g4  fis)
	g( f ees  d)
	c,8-.\p c-. c-. c-. c-. c-. d16( c b  c)
	g'8-. g-. g-. g-. g-. g-. aes16( g fis  g)
	ees8-. r aes4( g  fis)
	
	g4 r r2
	c,4 r r2
	bes4 r r2
	ees4 r r2
	d4 r r2
	g8-.\f g-. g-. g-. g-. g-. a16( g fis  g)
% 9 -117
	ees'4 c2 a4
	f8-. f-. f-. f-. f-. f-. g16( f e  f)
	d'4 bes2 g4
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	c'4 a2 fis4
	d8-. d-. d-. d-. d-. d-. ees16( d cis  d)

	bes'4 g2 ees4
	c r c' r
	d r d, r
	R1*13

	d'2.\p( ees4)\f
	d\p( ees\f d\p  ees)\f
	d\p r r2
	r1
	ees4\p r r2
% 11-144
	bes4 r r2
	ees,4 r r2
	r1
	r
	r8 ees-.\p ees-. ees-. ees-. ees-. f16( e d  e)
	f8-. f-. f-. f-. f-. f-. g16( fis e  fis)
	
	g8-. g-. g-. g-. g-. g-. aes16( g f  f)
	aes8-. aes-. aes-. aes-. aes-. aes-. bes16( a g  a)
	bes4 r r2
	r ees\f ~
	ees4 d8 c bes aes g f
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
% 12-155
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f f f f bes bes bes bes 
	ees,8 ees c' c a a bes bes
	ees, ees aes aes fis fis g g

	c, c f f d d ees ees
	a2\sf bes\sf
	c8 c c c c c c c
	f,4 r f4.( g16  a)
	bes4 f d f
	bes, r bes'4.( c16  d)
	ees4 bes g bes
% 13-169
	ees, r ees4.( f16  g)
	aes4 r aes-. g-.
	c-. bes-. aes-. a-.
	bes r r2
	bes8 bes bes bes bes bes bes bes 
	bes4 r r2
	bes8 bes bes bes bes bes bes bes 

	bes4 r r2
	e8-. e-. e-. e-. e-. e-. f16( e d  e)
	f4 r r2
	d8-. d-. d-. d-. d-. d-. ees16( d c  d)
	ees4 r r2
	c8-. c-. c-. c-. c-. c-. d16( c bes  c)
	d4 r d, r
% 14-180
	ees r ees r
	bes r bes r
	ees r ees r
	bes r bes r
	ees'8\f ees ees ees ees ees d d
	c8-. r c2\sf( bes8) r
	
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	ees,\p r ees r
	bes r bes r
	ees r ees r
	bes r bes r
% 15-193
	ees'8\f ees ees ees ees ees d d 
	c8-. r c2\sf( bes8) r
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	r1
	r1
	g8\p( bes g bes\cresc aes bes aes  bes)

	g8( bes g bes\f aes bes aes  bes)
	g8 bes( g bes aes bes aes  bes)
	g8 bes( g bes aes bes aes  bes)
	g g g g aes aes aes aes
	bes bes bes bes bes, bes bes bes
	ees4 r r2
	des'2-.\ff b-.
% 16-208
	c2 r4 aes4
	bes bes bes, bes 
	ees2 r2
	des'2-. b-.
	c-. r4 a4
	bes bes bes, bes
	ees'8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)
	
	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees bes ees bes ees bes ees bes
	ees bes' ees bes ees bes ees bes
	ees4 r ees, ees
	ees2 r2	
}

contrabasso =  \relative c {
	\key ees \major
	r1 r
% 8-104
	R1*4
	c8-.\p c-. c-. c-. c-. c-. d16( c b  c)
	g'8-. g-. g-. g-. g-. g-. aes16( g fis  g)
	ees8-. r aes4( g  fis)
	
	g4 r r2
	c,4 r r2
	bes4 r r2
	ees4 r r2
	d4 r r2
	g8-.\f g-. g-. g-. g-. g-. a16( g fis  g)
% 9 -117
	ees'4 c2 a4
	f8-. f-. f-. f-. f-. f-. g16( f e  f)
	d'4 bes2 g4
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
	c'4 a2 fis4
	d8-. d-. d-. d-. d-. d-. ees16( d cis  d)

	bes'4 g2 ees4
	c r c' r
	d r d, r
	R1*17
	ees'4\p r r2
% 11-144
	bes4 r r2
	ees,4 r r2
	r1
	r
	r8 ees-.\p ees-. ees-. ees-. ees-. f16( e d  e)
	f8-. f-. f-. f-. f-. f-. g16( fis e  fis)
	
	g8-. g-. g-. g-. g-. g-. aes16( g f  f)
	aes8-. aes-. aes-. aes-. aes-. aes-. bes16( a g  a)
	bes4 r r2
	r ees\f ~
	ees4 d8 c bes aes g f
	ees8-. ees-. ees-. ees-. ees-. ees-. f16( ees d  ees)
% 12-155
	bes'8-. bes-. bes-. bes-. bes-. bes-. c16( bes a  bes)
	ees8 r ees2\sf( d8) r
	r4 c2\sf( bes8) r
	r4 aes2\sf( g8) r
	f f f f bes bes bes bes 
	ees,8 ees c' c a a bes bes
	ees, ees aes aes fis fis g g

	c, c f f d d ees ees
	a2\sf bes\sf
	c8 c c c c c c c
	f,4 r f4.( g16  a)
	bes4 f d f
	bes, r bes'4.( c16  d)
	ees4 bes g bes
% 13-169
	ees, r ees4.( f16  g)
	aes4 r aes-. g-.
	c-. bes-. aes-. a-.
	bes r r2
	bes8 bes bes bes bes bes bes bes 
	bes4 r r2
	bes8 bes bes bes bes bes bes bes 

	bes4 r r2
	R1*5
	r2 d,4 r
% 14-180
	ees r ees r
	bes r bes r
	ees r ees r
	bes r bes r
	ees'8\f ees ees ees ees ees d d
	c8-. r c2\sf( bes8) r
	
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	ees,\p r ees r
	bes r bes r
	ees r ees r
	bes r bes r
% 15-193
	ees'8\f ees ees ees ees ees d d 
	c8-. r c2\sf( bes8) r
	aes8-. r aes2\sf( g8) r
	f4 r ees r
	aes r bes r
	R1*3

	r2 aes8\f( bes aes  bes)
	g8 bes( g bes aes bes aes  bes)
	g8 bes( g bes aes bes aes  bes)
	g g g g aes aes aes aes
	bes bes bes bes bes, bes bes bes
	ees4 r r2
	des'2-.\ff b-.
% 16-208
	c2 r4 aes4
	bes bes bes, bes 
	ees2 r2
	des'2-. b-.
	c-. r4 a4
	bes bes bes, bes
	ees'8-.\p ees-. ees-. ees-. ees-. ees-. f16\sf( ees d  ees)
	bes8-.\p bes-. bes-. bes-. bes-. bes-. c16\sf( bes a  bes)
	
	g8-.\p g-. g-. g-. g-. g-. aes16\sf( g f  g)
	ees8\f bes ees bes ees bes ees bes
	ees bes ees bes ees bes ees bes
	ees bes' ees bes ees bes ees bes
	ees4 r ees, ees
	ees2 r2	
} 
