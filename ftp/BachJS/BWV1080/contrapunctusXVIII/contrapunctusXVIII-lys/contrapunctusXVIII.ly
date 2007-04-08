\version "2.8.0"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Global definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {

	\time 3/2 \key d \minor
%	\set Staff.midiInstrument = "harpsichord"
	}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rectus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoRectus = \new Voice{\relative c''{

	\global

	R1*3/2*13						%1 to 13
	a2 d1
	c2 a1							%15
	gis2 a b
	c2. d4 c bes!
	a2. bes4 a g
	f2. g4 f e
	f g a2. b8 cis					%20
	d e f g a2~ a8 bes a g
	f4 e d2. cis8 b
	cis2 d2. e4
	f2. g4 f ees
	d1 r8 d e fis					%25
	g fis g a bes4 r r2
	r r d,2~
	d4 c bes a g fis
	g ees d1~
	d4 ees8 f g4 f ees d			%30
	c2~ c8 d ees c d bes c a
	bes2~ bes8 c d ees f2~
	f f'8 ees d c d4 f
	c8 bes a g f2~ f8 g f ees
	d e! fis g a1					%35
	bes8 a bes c d c d ees f ees d c
	bes aes g aes bes4 bes2 c8 d
	ees1.~
	ees4 f8 g f4 ees d2~
	d1~ d4 e!8 f					%40
	e d cis d cis4 d e2
	a,4 a'2 g8 f e g f e
	d cis d e f2~ f8 e f g
	a g a bes a g f e d2~
	d8 cis d e d c bes a b cis! d e	%45
	f e f g f e d cis d e f d
	bes a bes c bes4 d bes d
	g8 f g a g f e4~ e8 f e d
	cis b cis d cis e e,4~ e8 f g a16 bes!
	a1.~							%50
	a~
	a~
	a~
	a4 g8 fis g a bes c d2~
	d4 c bes a g8 a bes4			%55
	a1.\fermata

	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoRectus = \new Voice{\relative c'{

	\global

	R1*3/2*9						%1 to 9
	d2 a'1							%10
	f2 d1
	cis2 d e 
	f2. g4 f e
	d2 r4 e f g
	a2 r4 b c d						%15
	e d c b a gis
	a2. bes!4 a g
	f2. g4 f e
	d2. e4 d cis
	d e f2. g8 e					%20
	f4 a d, a8 b cis4 d8 e
	d4 cis d8 e f g a2~
	a2. bes8 c bes2\trill
	a4 d,2 ees4 d c
	bes4. c16 bes a2 r				%25
	g'8 a bes c d2~ d8 ees d c
	bes4 a g2. fis8 e
	fis2 g2. a4
	bes2. c4 bes a
	g2. aes4 g f					%30
	ees2. g4 f ees
	d2~ d8 ees f ees d ees d c 
	bes4 a8 g f2~ f8 g a bes
	c2 d8 ees d c bes2~
	bes8 c d ees d4 c8 bes a4 a'	%35
	g2 f2. g8 aes
	g f ees f g f g aes g4 f
	ees2 r8 a, g bes c d ees d
	c4 a bes c d fis
	g8 a bes c bes d a c bes4 g		%40
	a bes a f cis8 d e cis
	d2~ d8 f e d cis2
	d~ d8 e f g a2~
	a4 e f a bes4. a16 g
	f8 e f g f e d2 cis4			%45
	d a d8 e f4~ f8 g a f
	d2 r r4 d
	e cis e g~ g8 a g f
	e4 a r2 r
	d,8 e f g a2. g4				%50
	f e d2. cis8 b
	cis2 d2. e4
	f e f g f e
	d r e r r8 fis g a
	bes4 a g fis e2					%55
	r8 e fis g fis1\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorRectus = \new Voice{\relative c'{

	\global

	\set Staff.instrument=\markup{\hspace #0 \raise #10.0 \large Rectus}
	
	R1*3/2*4						%1 to 4
	a2 d1							%5
	c2 a1
	gis2 a b
	c2. d4 c b
	a2. bes!4 a g
	f8 g f e d4 a' b cis			%10
	d2 r4 e f g
	a g f e d cis
	d2. cis4 d e
	a, g f e d e
	f g a gis a b					%15
	c d e1~
	e4 a, e2 r4 d'
	c f, c2 r4 bes'
	a d8 e f4 cis d g,
	a2. g4 f e						%20
	d2~ d8 e f g a2~
	a8 a' a, g f e d e f4 f'
	e2 f2. g4
	f2 f,1~
	f4 g8 e fis a bes c d4 c		%25
	bes8 c bes a g fis g a bes c d ees
	d2 r r
	R1*3/2*4						%--
	bes8 c d ees f2~ f8 g f ees
	d4 c bes2. a8 g
	a2 bes2. c4
	d2. ees4 d c					%35
	bes2~ bes8 a bes c d4 bes
	ees2~ ees8 d ees f ees4 d
	c8 bes c d c4 bes a g
	a f g a bes8 c d c
	bes4 a g fis g e				%40
	f! g a8 g a bes a4 g
	f8 g a4~ a8 b cis d e4 a~
	a g f a d,2
	r r8 cis, d e f a g bes
	a2. bes4 a g					%45
	f8 g a4 d, r r d'~
	d g8 fis g4 bes,8 c d c bes a
	g a bes2 g4 b e~
	e8 d e f g4 cis,2 cis4
	d2~ d8 b cis d e cis d e		%50
	a,4 r d,8 e f g a2~
	a8 bes a g f2~ f8 e d cis
	d a' b cis d e d cis d4 g,
	fis bes!~ bes8 a g a bes c bes a
	g d e fis g a bes c bes a g fis!16 e	%55
	fis8 g a4 d,1\fermata
		
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassRectus = \new Voice{\relative c{

	\global

	d2 a'1							%1
	f2 d1
	cis2 d e
	f2. g4 f e
	d2 r4 e f g						%5
	a2 r4 b c d
	e d c b a gis
	a g!8 f e2.\trill( d8 e)
	f4 e8 d cis2.\trill( b8 cis)
	d2 r4 f, g a					%10
	bes a bes1\trill
	a1.~
	a8 g f g a4 bes a g
	f e d2 r4 bes'
	a8 g f e f2 r4 f'				%15
	e8 d c b c2 r4 e
	a,8 b c d e2 e,
	f8 g a bes c2 c,
	d8 e f g a2 r4 bes
	a g f e d2						%20 
	R1*3/2		
	r2 r d'8 e f g
	a bes a g f4 e d cis
	d c!8 bes a2.\trill g8 a
	bes4 g d'2 r8 bes c d			%25
	ees4 d8 c bes4 a g fis
	g a bes a bes c
	d2 ees r8 ees d c
	bes a g fis g d e fis g a bes c
	bes a g a bes2 r4 b				%30
	c8 d ees c a2 r8 d ees f
	g4 f8 ees d4 c bes a
	bes c d ees f2~
	f8 g f ees d2~ d8 ees d c
	bes4 a8 g fis2.\trill e8 fis	%35
	g4 ees bes'2 r
	R1*3/2*5						%--
	d8 e f g a2~ a8 bes a g
	f4 e d2. cis8 b
	cis2 d2. e4
	f2. g4 f e						%45
	d2~ d8 cis d e f4 d
	g2~ g8 fis g a g4 f
	e2~ e8 d e f g4 e
	a2~ a8 g a bes a4 e
	f2. e8 d cis a b cis			%50
	d cis d e f2~ f8 e f g
	a4 r d,,8 e f g a2~
	a4 g f e f8 a b cis
	d1.~
	d~								%55
	d2~ d8[ a16 g fis g a8] d,2\fermata

	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inversus %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoInversus = \new Voice{\relative c''{

	\global

	a2 d,1							%1
	f2 a1
	bes2 a g
	f2. e4 f g
	a2 r4 g f e						%5
	d2 r4 c bes a
	g a bes c d ees!
	d4 e!8 fis g2. a8 g
	f!4 g8 a bes2. c8 bes
	a2 r4 f' e d					%10
	c d cis1\trill
	d1.~
	d8 e f e d4 cis d e
	f g a2 r4 cis,
	d8 e f g f2 r4 fis,				%15
	g8 a bes c bes2 r4 g
	d'8 c bes a g2 g'
	f8 e d c bes2 bes'
	a8 g f e d2 r4 cis
	d e f g a2						%20
	R1*3/2
	r2 r a,8 g f e
	d cis d e f4 g a bes
	a b8 cis d2. e8 d
	c!4 e							%25
	a,2 r8 c b a
	gis4 a8 b c4 d e f
	e d c d c b
	a2 g r8 g a b
	c d e f e a g f e d c b			%30
	c d e d c2 r4 c
	bes8 a g bes d2 r8 a g f
	e4 f8 g a4 bes c d
	c bes a g f2~
	f8 e f g a2~ a8 g a bes			%35
	c4 d8 e f2. g8 f
	e4 g c,2 r
	R1*3/2*5						%--
	a8 g f e d2~ d8 cis d e
	f4 g a2. bes8 c
	bes2 a2. g4
	f2. e4 f g						%45
	a2~ a8 bes a g f4 a
	e2~ e8 f e d e4 f
	g2~ g8 a g f e4 g
	d2~ d8 e d cis d4 g
	f2. g8 a bes d c bes			%50
	a bes a g f2~ f8 g f e
	d4 r a''8 g f e d2~
	d4 e f g f8 d c bes
	a1.~
	a~								%55
	a2~ a8[ d16 e fis e d8] a'2\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoInversus = \new Voice{\relative c'{

	\global

	R1*3/2*4						%1 to 4
	d2 a1							%5
	bes2 d1
	ees2 d c
	bes2. a4 b cis
	d2. c!4 d e
	f8 e f g a4 d, c bes			%10
	a2 r4 g f e
	d e f g a bes 
	a2. bes4 a g
	d' e f g a g
	f e d ees d c					%15
	bes a g1~
	g4 d' g2 r4 a,
	bes f' bes2 r4 cis,
	d a8 g f4 bes a e'
	d2. e4 f g						%20
	a2~ a8 g f e d2~
	d8 d, d' e f g a g f4 f,
	g2 f2. e4
	f2 f'1~
	f4 e8 g f d c b a4 b			%25
	c8 b c d e f e d c b a gis
	a2 r r
	R1*3/2*4						%--
	c8 bes a g f2~ f8 e f g
	a4 bes c2. d8 ees
	d2 c2. bes4
	a2. g4 a b						%35
	c2~ c8 d c bes a4 c
	g2~ g8 a g f g4 a
	bes8 c bes a bes4 c d ees
	d f ees d cis8 b a b
	cis4 d e f e g					%40
	f e d8 e d cis d4 e
	f8 e d4~ d8 c bes a g4 d~
	d e f d a'2
	r r8 bes'8 a g f d e cis
	d2. c!4 d e						%45
	f8 e d4 a' r r a,~
	a e8 f e4 c'8 b a b c d
	e d cis2 e4 c g~
	g8 a g f e4 bes'2 bes4
	a2~ a8 c bes a g bes a g		%50
	d'4 r a'8 g f e d2~
	d8 cis d e f2~ f8 g a bes
	a d, c bes a g a bes a4 e'
	f cis~ cis8 d e d cis b cis d
	e a g f e d cis b cis d e fis16 g	%55
	fis8 e d4 a'1\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenorInversus = \new Voice{\relative c'{

	\global

	\set Staff.instrument=\markup{\hspace #0 \raise #10.0 \large Inversus}
	
	R1*3/2*9						%1 to 9
	a2 d,1							%10
	f2 a1
	bes2 a g
	f2. e4 f g
	a2 r4 g f e
	d2 r4 c bes a					%15
	g a bes c d ees
	d2. cis4 d e
	f2. e4 f g
	a2. g4 a bes
	a g f 2. e8 g					%20
	f4 d a' d8 c bes4 a8 g
	a4 bes a8 g f e d2~
	d2. cis8 b cis2
	d4 a'2 g4 a b
	c4. b16 c d2 r					%25
	e,8 d c b a2~ a8 gis a b
	c4 d e2. f8 g
	f2 e2. d4
	c2. b4 c d
	e2. d4 e fis					%30
	g2. e4 f! g
	a2~ a8 g f g a g a bes
	c4 d8 e f2~ f8 ees d c
	bes2 a8 g a bes c2~
	c8 bes a g a4 b8 c d4 d,		%35
	e2 f2. e8 d
	e f g f e f e d e4 fis
	g2 r8 d'8 ees c bes a g a
	bes4 d c bes a f
	e8 d cis b cis a d b cis4 e		%40
	d cis d f bes8 a g bes
	a2~ a8 f g a bes2
	a~ a8 g f e d2~
	d4 g f d cis4. d16 e
	f8 g f e f g a2 bes4			%45
	a d a8 g f4~ f8 e d f
	a2 r r4 a
	g bes g e~ e8 d e fis
	g4 d r2 r
	a'8 g f e d2. e4				%50
	f g a2. bes8 c 
	bes2 a2. g4
	f g f e f g 
	a r g r r8 f e d
	cis4 d e f g2					%55
	r8 g fis e fis1\fermata
		
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassInversus = \new Voice{\relative c{

	\global

	R1*3/2*13						%1 to 13
	d2 a1
	bes2 d1							%15
	ees2 d c
	bes2. a4 b cis
	d2. cis4 d e
	f2. e4 f g
	f e d2. c8 bes					%20
	a g f e d2~ d8 cis d e
	f4 g a2. bes8 c
	bes2 a2. g4
	f2. e4 f g
	a1 r8 a g f						%25
	e f e d c4 r r2
	r r a'~
	a4 b c d e f
	e gis a1~
	a4 g!8 f e4 fis g a				%30
	bes2~ bes8 a g bes a c bes d
	c2~ c8 bes a g f2~
	f f,8 g a bes a4 f
	bes8 c d e f2~ f8 e f g
	a g f e d1						%35
	c8 d c bes a bes a g f g a bes
	c d e d c4 c2 bes8 a
	g1.~
	g4 f8 ees f4 g a2~
	a1~ a4 g8 f						%40
	g a bes a bes4 a g2
	d'4 d,2 e8 f g e f g 
	a bes a g f2~ f8 g f e
	d e d cis d e f g a2~
	a8 bes a g a bes c d c bes a g	%45
	f g f e f g a bes a g f a
	c d c b c4 a c a
	e8 f e d e f g4~ g8 fis g a
	bes c bes a bes g g'4~ g8 f e d16 cis
	d1.~							%50
	d~
	d~
	d~
	d4 e8 f e d cis b a2~
	a4 b cis d e8 d cis4			%55
	d1.\fermata
	
	\bar "|."
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% Music parts definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

music = {

	\tag #'rectus \new StaffGroup <<
						\new Staff{\clef soprano \sopranoRectus}
						\new Staff{\clef alto \altoRectus}
						\new Staff{\clef tenor \tenorRectus}
						\new Staff{\clef bass \bassRectus}
					>>

	\tag #'inversus \new StaffGroup <<
						\new Staff{\clef soprano \sopranoInversus}
						\new Staff{\clef alto \altoInversus}
						\new Staff{\clef tenor \tenorInversus}
						\new Staff{\clef bass \bassInversus}					
					>>
}
		