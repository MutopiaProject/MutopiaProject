\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 17)

\header{
title="Die Kunst der Fuge"
subtitle="Contrapunctus XIX - Fuga a 3 Soggetti"
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XIX, Fuga a 3 Soggetti"
mutopiacomposer = "BachJS"
mutopiaopus = "BWV 1080"
mutopiainstrument = "String Ensemble"
date = "?-1750"
source = "Breitkopf & Härtel, 1885"
style = "Baroque"
copyright = "Public Domain"
maintainer = "Arnaud Gossart"
maintainerEmail = "arnaud.gossart@tiscali.fr"
maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"
lastupdated = "2006/May/09"

 footer = "Mutopia-2006/05/10-766"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Global settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {	\key d \minor \time 4/4
%			\set Staff.midiInstrument=harpsichord			
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \new voice{\relative c''{

	\global

	R1*15					%1 to 15
	r2 a
	d2. d4
	c1
	d
	e						%20
	a,2. b4
	c2. d4
	g,2 fis
	g gis
	a8 c4 b8 c2~			%25
	c4 b8 a b2
	c4 bes! a g
	fis2. g8 a
	g2. a8 bes
	c1~						%30
	c4 bes8 a bes2
	a4 b8 cis d2~
	d4 e8 d cis2
	d4 cis2 b4
	cis2 d~					%35
	d cis
	d a
	d2. d4
	c1
	d						%40
	e
	a,4 b c2~
	c2. b4
	c g c2~
	c2. a4					%45
	d1~
	d4 g, c bes
	a g a2~
	a g4 f
	e d ees2~				%50
	ees d~
	d2. d4
	g f e g
	c2. c4
	f e d c					%55
	b2 cis
	d2. c8 d
	e4 a2 d,4~
	d g2 c,4~
	c b2 bes4				%60
	a2 r
	r a
	d2. c4
	bes1
	c						%65
	d
	g,2 a4 bes
	c g c bes
	a f bes2~
	bes a					%70
	bes aes~
	aes4 g8 f g4 a!
	bes f bes2
	a8 bes c d ees a, g fis
	g2. a8 bes				%75
	a4 bes8 c bes2~
	bes4 a8 bes c2~
	c4 d8 c bes2
	a a'
	d,2. e4					%80
	f1
	e
	d
	g~
	g2 fis					%85
	g4 f!8 ees d4 ees
	f2. ees8 d
	c4 d ees f
	g f8 ees d4 ees8 d
	c2. d8 ees				%90
	f1~
	f4 ees8 d c4 bes
	a a'8 g f4 ees~
	ees d2 c8 bes
	a4 g a2					%95
	bes1~
	bes4 a8 bes c2~
	c4 a' d,2~
	d4 e f2~
	f e~					%100
	e4 d8 cis d2~
	d g~
	g f~
	f e4 d
	cis2 d~					%105
	d cis
	d4 a d c
	bes1~
	bes8 a e'4 a g~
	g f8 e f4 d 			%110
	bes'1
	e,2 d~
	d cis
	d4 a~^\markup{\hspace #0 \raise #1 \bold "XIX b"} a g
	f r r2					%115
	R1*5					%---
	r4 c'8 d c b a gis
	a e a b c b a c
	b e, b' c d c16 b c8 d
	e d c d e2~
	e8 d16 cis d8 e f2~		%125
	f8 e d c b a b d
	c a' g f e d e g
	f e d cis d4 e
	a,2. b4
	c cis2 d8 e				%130
	f bes a g f e d c
	bes c' bes a g f e d
	cis4 d2 cis4
	d e f2
	e4 a e d~				%135
	d c8 d e4 f~
	f e2~ e8 b
	c4 r r2
	R1*3					%---
	r8 a'8 g f e d e g
	fis4 g2 f4~
	f8 g f e d c d f
	e4 f2 e8 d				%145
	e4 r r2
	r4 f8 g f e d cis
	d a d e f e d f
	e a, e' f g f16 e f8 g
	a g f g a2~				%150
	a8 g16 fis g8 a bes2~
	bes8 a g f e d e g
	f e d c b a b d
	c4 b8 a gis fis gis b
	e,4 a2 gis4				%155
	a e'2 d4~
	d c8 d e4 dis
	e r r2
	R1*10					%---
	r2 f,					
	c'2. bes4				%170
	a1
	bes
	c
	f,2~ f8 fis g a
	bes2~ bes8 b c d		%175
	ees1~
	ees4 a, d2~
	d cis
	d c!~
	c4 bes8 a bes4 ees		%180
	d e!8 fis g2~
	g4 f~ f8 ees d c
	b a g4 d'2
	g2. f4
	ees1					%185
	f
	g
	c,~
	c8 fis, g a bes c bes g
	ees'1~					%190
	ees8 ees d c bes a bes d
	g,4. a8 fis4. g8
	g2^\markup{\hspace #0 \raise #1 \bold "XIX c"} r
	R1*7					%---
	r2 bes
	a c
	b4. cis8 d2~
	d4. cis16 b cis2
	d4 r r dis				%205
	e b e d
	c2 cis
	d4 a d2~
	d4 c8 b c2~
	c4 bes8 a bes4 g		%210
	a a'2 d,4~
	d e f2
	e~ e8 cis d e
	a,2. g8 fis
	g1~						%215
	g2 f8 e f4
	e r bes'2
	a c
	b4. cis8 d2~
	d4. cis16 b cis8 dis dis4\turn	%220
	e b e d
	c2 cis
	d~ d8 f ees d
	c g' f ees d c des4~
	des8 b c2 b4			%225
	c4. bes!16 a g8 e e'4~
	e8 d16 cis d8 c16 b a4 r
	R1
	r2 r4 a'~
	a8 g16 a bes4~ bes8 e, a g	%230
	f e16 d cis8 d e d16 e f8 e
	d4. cis8 d8 e16 f e8 d
	cis4 r r8 e f g
	f e d cis d2~
	d4 cis8 d e2~			%235
	e4 d8 e f g a f
	d4 e8 fis g a bes g
	e4 r r2
	s1
	
	\bar "|"
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \new voice{\relative c'{

	\global

	R1*10					%1 to 10
	r2 d
	a'2. g4
	f1
	g
	a						%15
	d,~
	d2 e~
	e4 c f2~
	f4 d g2~
	g4 e a g~				%20
	g f8 e f2
	e4 d8 e f2~
	f4 ees2 d4~
	d8 e! f2 e8 d
	c4 d e2					%25
	d2. e8 f
	e4 d c2~
	c4 d8 ees d2~
	d4 e8 fis g2~
	g4 fis8 g a2			%30
	d,2. e4
	f1
	e
	d
	a'~						%35
	a2. g4~
	g f8 e f2
	r d
	a'2. g4	
	f1						%40
	g
	a
	d,4 e f2~
	f4 e8 d e2~
	e4 c f2~				%45
	f4 d g f
	e d ees2~
	ees d4 c
	b a bes2~
	bes a4 g				%50
	fis a d c
	bes a bes2
	b c~
	c4 e a2~
	a4 g f4. e8				%55
	d4 e8 f g2
	fis4 g8 a bes4 a8 bes
	c2. bes8 a
	bes2. a8 g
	fis2 g~					%60
	g4 f!8 e f4 g8 f
	e2. f8 g
	a4 g f ees
	d g8 fis g2~
	g f!~					%65
	f4 g8 a g4 f
	e c f2~
	f4 e8 d ees2~
	ees d 
	c1						%70
	f
	bes,2. c4
	d1
	c
	bes						%75
	f'2. ees8 f
	g2. fis8 g
	a2. g8 f
	ees2 d~
	d g						%80
	f d
	a'2. g4
	f1
	g
	a						%85
	d,2 r
	bes'4 a8 g f4 g
	a bes c bes8 a
	g4 a bes2~
	bes4 a8 g a2~			%90
	a4 bes8 c bes4 a
	g fis g2
	d'2. c4
	bes1
	c						%95
	d
	g,2. fis8 g
	a4 c8 bes a g a4~
	a g d2 
	a'2. g4					%100
	f1
	g
	a
	d,4 g8 f g a bes4
	e, a2 g8 f				%105
	e4 d e2
	d4 f8 e f g a4~
	a g8 fis g4 bes
	e,2 \clef soprano r4 e'~
	e a, d2~				%110
	d4 e8 f e4 d
	cis a2 g8 f
	g4 e~ e8 f g4~
	g \clef alto f8 g f e d cis
	d a d e f e d f			%115
	e a, e' f g f16 e f8 g
	a g f g a2~
	a8 g16 fis g8 a bes2~
	bes8 a g f e d e g
	f e d c b a b d			%120
	c b a gis a4 b
	c4. d8 e4 fis
	g gis2 a4~
	a8 f e d c b a g
	f g' f e d c b a		%125
	gis4 a2 gis4
	a b c cis 
	d a'2 g4~
	g f8 e d4 g~
	g8 f g a bes a16 g a8 bes	%130
	cis,4 d~ d8 cis f e
	d2~ d8 a' g f
	e4 a g bes
	a2. gis4
	a2 r4 e					%135
	e2 r4 a
	d4. c8 b4 a8 gis
	a4 r r c
	a2. gis8 a
	b e a,2 gis4			%140
	a r r2
	R1
	r8 d c bes a g a c
	b4 c2 bes4~
	bes8 g a4 bes g~		%145
	g8 a g f e d e g
	f a d,4 r2
	R1*8					%---
	\clef soprano r4 c'8 d c b a gis
	a e a b c b a c
	b e, b' c d c16 b c8 d
	e d c d e2~
	e8 d16 cis d8 e f2~		%160
	f8 e d c b a b d
	c1~
	c8 d c bes! a g a c
	bes1~
	bes8 c bes a g f g bes	%165
	a bes a g f e f a
	d, e f4~ f8 e bes'4~
	bes a8 g f a d,4~
	d8 g c,4 \clef alto d2
	e4 f8 g a4 g~			%170
	g f8 e f2~
	f8 ees f4~ f8 d ees g
	c,4. d8 ees2~
	ees4 d8 c d2~
	d8 d e fis g2~			%175
	g8 d' c bes a g a c
	fis,2. fis4
	g8 a g f! e d e g
	fis4 g2 fis8 a
	d, fis g fis g4 c~		%180
	c bes r8 f'! ees d
	c b c d g,2
	d'2. c4
	b1
	c						%185
	d
	g,4 a bes2~
	bes4 a8 g fis e fis a
	d,2 r
	r8 d' c bes a g a c		%190
	fis,1
	g8 f! ees4 d c~
	c bes r2
	R1
	r2 f'					%195
	e g
	fis4. gis8 a2~
	a4. gis16 fis gis2
	a4 e a g
	f2 r4 fis				%200
	g d g f!
	e fis8 g a2~
	a4 g a d,
	g4. f8 e2
	d4 r r2					%205
	r r4 b'~
	b e, a g
	f2. g8 f
	e2~ e8 d ees c
	d2. e!8 d				%210
	cis4 e a2~
	a8 d, g4 r2
	r e
	f d
	ees4. d8 cis2~			%215
	cis d~
	d4 cis d e
	f e8 f g2~
	g8 fis g bes! a2~
	a g4 fis				%220
	e1~
	e4 e a g~
	g8 fis g a bes4 b
	c2~ c4. bes8
	a4. aes8 g2~			%225
	g bes
	a c
	b4. cis8 d2~
	d4. cis16 b cis2
	\clef soprano d8 e16 f g2 cis,4	%230
	d8 a bes4 \clef alto a2~
	a8 g f e d4 r
	r8 e f g f e d cis
	d a d e f e d f
	e a, e' f g f16 e f8 g	%235
	a g f g a2~
	a8 g16 fis g8 a bes2~
	bes8 a g f e d e g
	f4 s2.
	
	\bar "|"
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \new voice{\relative c'{

	\global

	R1*5					%1 to 5
	r2 a
	d2. d4
	c1
	d
	e						%10
	a,2 d~
	d cis
	d4 a bes2~
	bes4 g c2~
	c4 a d c~				%15
	c bes a2~
	a4 b8 c b2
	a2. a4
	bes2. b4
	c2 cis					%20
	d4 a d2
	c r
	R1
	r2 d,
	a'2. g4					%25
	f1
	g
	a
	d,2. c8 d
	e4 d8 e fis4 e8 fis		%30
	g4 d g2
	f4 g8 a bes2~
	bes a~
	a g4 g'8 f
	e4 d8 e f2				%35
	e4 d e2
	d4 a8 g a2~
	a4 g8 f g2~
	g4 c, f e
	d a' d c				%40
	bes a8 g c2~
	c4 d ees8 c b a
	g1~
	g~
	g4 f8 g a2~				%45
	a4 g8 a bes2~
	bes a4 g
	f2 r
	R1*6					%--
	r2 d'					%55
	g,2. a4
	bes1
	a
	g
	d'2. e8 d 				%60
	cis4 a d2~
	d4 cis8 b cis4 d8 e
	d2 a
	r4 bes ees d
	c d8 ees d4 c			%65
	b a bes2~
	bes a
	g4 bes a g
	f2 r
	R1*2					%--
	r2 bes
	f2. g4
	a1		
	g						%75
	f
	c'2. d8 ees
	d2. ees8 d
	c4 a d c~
	c bes8 a bes2			%80
	a d~
	d4 cis8 b cis2
	d2. cis8 d
	ees2. d4
	c d8 ees d4 c			%85
	bes a bes c
	d c d ees
	f ees8 d c4 d
	ees d8 c bes4 f~
	f8 g a bes c2			%90
	f,2. f4
	g1
	a
	bes
	f4 c' f2~				%95
	f4 ees d2
	r2 a
	d2. c4
	b1
	cis						%100
	d
	g,4 a bes c8 bes
	a4 b8 cis d4 c
	bes!1
	a~						%105
	a~
	a4 d8 cis d2~
	d4 bes ees d~
	d cis8 b cis2
	d a~					%110
	a4 d, g2~
	g4 f8 e f4 d
	e f8 g a2~
	a4 d bes2
	a4 r r2					%115
	R1*19					%---
	r4 c8 d c b a gis		%135
	a e a b c b a c
	b e, b' c d c16 b c8 d
	e d c d e2~
	e8 d16 cis d8 e f2~
	f8 e d c b a b d		%140
	c2 cis
	d2. c!4~
	c8 bes a g d'2~
	d8 e d c g'4 r
	r8 c,8 bes a g f g bes	%145
	a4. a8 g f e4
	d a' bes2
	a4 b8 cis d2~
	d4 cis8 d e2~
	e8 a, d4~ d8 c bes a	%150
	bes d ees4~ ees8 d cis d
	cis4 d2 c4~
	c b8 a gis fis gis b
	a e' d c b a b d
	c4 e d f				%155
	e r r2
	r a,2
	e'2~ e4. d8
	c1
	d						%160
	e
	a,8 a' g f e d e g
	f1~
	f8 g f e d c d f
	e4 r r2					%165
	R1
	r4 a,8 bes a g f e
	f c f g a g f a
	g c, g' a bes a16 g a8 bes
	c bes a bes c2~			%170
	c8 bes16 a bes8 c d2~
	d8 c bes a g f g bes
	a1~
	a8 f g a bes2~
	bes8 c bes a g2~		%175
	g4 g c2~
	c8 ees d c bes a bes d
	g,4 bes8 a g f e4
	d8 d' c bes a g a c
	bes ees d2 r4			%180
	R1
	r2 r4 f,4~
	f8 ees d ees f g aes f
	g2~ g8 g b d
	g bes aes g fis4. g8	%185
	aes g, f ees d c d f
	e!1 
	fis4 r r2
	r8 d e fis g2~
	g8 g a bes c d c bes	%190
	a4 r r2
	r4 bes a8 g a4
	g2 bes
	a c
	b4. cis8 d2~			%195
	d4. cis16 b cis2\prall
	d r4 dis
	e b e d
	c2 r4 cis
	d a d c!				%200
	bes4. a8 g a bes g
	c bes a g fis e fis d
	g4 e f! g8 a
	bes a g a bes e, a4~
	a d2 c4					%205
	b e2.~
	e4 r r2
	R1*2					%---
	r2 bes					%210
	a c 
	b4. cis8 d2~
	d4. cis16 b cis2
	d4. c!8 b4 a
	bes!2~ bes8 a bes g		%215
	a2~ a8 bes a gis
	a4 r r bes
	c d e f8 e
	d2~ d8 cis d f
	e d e2 b4				%220
	b1
	a4. g16 f e4. d16 e
	d4 e8 fis g4 f
	ees8 d c4 d ees~
	ees8 d ees4~ ees8 d f4~	%225
	f e!~ e g~
	g fis~ fis8 gis a4~
	a2~ a8 gis16 fis gis4~
	gis a8 e a bes16 a g!8 a
	bes d g, a bes g e f16 g	%230
	a4 g2 f4~
	f8 e16 d a'4~ a g
	a r r2
	R1
	r2 bes					%235
	a c
	b4. cis8 d2~
	d4. cis16 b cis2
	d8 e d c! b a b d
	
	\bar "|"
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \new voice{\relative c{

	\global

	r2 d					%1
	a'2. g4
	f1
	g
	a						%5
	d,2 f~
	f4 b, e2
	a,4 e' a g
	f d bes' a
	g e cis d8 e			%10
	f4 d c bes 
	a g a2
	d,2. d'4
	e2. d8 e
	f2 fis					%15
	g2. fis8 e
	fis2 gis
	a r
	R1*2					%--
	r2 d,
	a2. b4
	c1
	bes!
	a						%25
	d
	c4 d ees2~
	ees4 a, d c
	b2 bes~
	bes a					%30
	g r4 g
	d'2. e8 f
	g2. fis8 e
	fis4 d g2~
	g f4 g					%35
	a2 a,
	d2. c4
	bes a bes2
	a1
	bes4 f' bes a			%40
	g f e d8 c
	f2 fis
	g g,
	c2. bes4
	a1 						%45
	bes
	c 
	f,2 fis
	g4 f! e d
	c g' c bes				%50
	a g fis d
	g d' g f
	e d c bes!
	a c f e
	d e f2~					%55
	f4 e2 ees4
	d4 e8 fis g2~
	g4 c, f2~
	f4 ees8 d ees2
	d r						%60
	r d
	a'2. g4
	f1
	g
	a						%65
	d,
	c~
	c
	d2. ees4
	f c f ees				%70
	d c8 bes c4 d
	ees bes ees2~
	ees4 d8 c d4 e!
	f2 c4 d
	ees bes ees2~			%75
	ees4 d2 c8 d
	e!4 fis8 g a4 g
	fis d g2~
	g fis
	g2. cis,4				%80
	d e f g
	a2. bes8 a
	bes4 f bes2~
	bes4 g c bes
	a g a2					%85
	g r
	R1*2					%--
	r2 bes,
	f'2. ees4				%90
	d1
	ees
	f
	bes,4 c8 d ees2~
	ees4 f8 g f4 ees!		%95
	d ees8 f g4 f
	e! fis8 g a4 g
	fis e fis2
	g2. gis4
	a bes8 a g!4 a			%100
	bes f bes d,
	ees2 e
	f2. e8 f
	g1~
	g4 f8 e f4 d			%105
	a'2. g4
	f1
	g
	a
	d,2~ d8 c bes a			%110
	g2~ g8 a bes g
	a1~
	a
	d~
	d4 r r2 				%115
	R1*12					%---
	r4 f8 g f e d cis		
	d a d e f e d f
	e a e f g f16 e f8 g	%130
	a g f g a2~
	a8 g16 fis g8 a bes2~
	bes8 a g f e d e g
	f e d c b a b d
	c2 r4 e					%135
	a,2 r4 a'~
	a gis2 a4~
	a8 f e d c b a g 
	f g' f e d c b a
	gis4 a e' e,			%140
	a8 a' g f e d e g
	f4 g a2
	d, r4 d
	g2 r4 g
	c,2 r4 c				%145
	cis d2 cis4
	d2. e4
	f2 d
	a'2. g4
	f1						%150
	g
	a
	d,2 e
	a,4 r r2
	r8 e' d c b a b d		%155
	c b a gis a4 b
	c f2 fis4
	g gis2 a4~
	a8 e a b c b a g
	fis a b cis d c b! a	%160
	gis4 a2 gis4
	a b c a
	d, e f d
	g a bes g
	c, d e c				%165
	f g a f
	bes,2 c
	f, r4 f'
	e ees d2
	a'~ a8 g f e			%170
	f2~ f8 d e f
	g4 d ees2~
	ees8 f ees d c bes c ees
	d2~ d8 d e fis
	g2~ g8 f! ees d			%175
	c2 r4 c
	d2 r4 d
	ees e2 a,4
	d r r2
	r4 bes8 c bes a g fis	%180
	g d g a bes a g bes
	a d, a' b c b16 a b8 c
	d c b c d2~
	d8 c16 b c8 d ees2~
	ees8 d c bes! a g a c	%185
	b4 c2 bes4~
	bes8 c bes a g fis g bes
	a d c bes a g a c
	bes2 r4 g
	c2 r4 c~				%190
	c8 a bes c d ees d bes
	ees4 c d2
	g, r
	R1*9					%---
	r2 f'		
	e g
	fis4. gis8 a2~			%205
	a4. gis16 fis gis2
	a r4 a
	bes f bes a
	gis e a g
	fis d g2~				%210
	g fis
	g r4 gis
	a e a g!
	f d g2~
	g8 a g f e2				%215
	f8 g f e d2
	a4 a'2 g4
	f2 e
	g fis4. gis8
	a1~						%220
	a4. gis16 fis gis2
	a4 r a,2
	bes g
	aes4. g8 fis2~
	fis g					%225
	c r4 cis
	d2 r4 dis
	e8 d!16 e f4~ f8 b, e d
	cis b a4 r a
	d1~						%230
	d8 e16 f e8 d cis a d c
	bes4 a bes2
	a4 r r2
	r d
	a'2. g4					%235
	f1
	g
	\once \override TextScript #'padding = #2
	a_\markup{\column{
		\line{\italic {N.B. While working on this fugue, where}}
		\line{\italic {the name B.A.C.H. appears}}
		\line{\italic {in the countersubject,}}
		\line{\italic {the composer died.}}
		\line{(In the autograph, in the hand of}
		\line{C.P.E. Bach)}}}
	d,4 s2.
	
	\bar "|"
	
}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score{
    \context StaffGroup <<
	\new Staff {\clef soprano \mark \markup{\hspace #0 \raise #1 "XIX a"} \soprano}
	\new Staff {\global \clef alto \alto}
	\new Staff {\global \clef tenor \tenor}
	\new Staff {\global \clef bass \bass}
    >>
  \midi {\tempo 4=120}
  \layout{}
}

