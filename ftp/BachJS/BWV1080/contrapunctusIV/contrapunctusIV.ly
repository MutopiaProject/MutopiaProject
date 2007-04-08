\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 16)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus IV"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus IV"
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
lastupdated = "2006/Apr/04"

footer = "Mutopia-2006/04/07-721"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	a2 d,						%1
	f a
	bes a4 g
	f2~ f8 e f g
	a2~ a8 bes! a gis			%5
	a2~ a8 bes! a gis
	a4 d g, bes~
	bes e, a g~
	g f bes2~
	bes4 a d2~					%10
	d4 c bes2~
	bes4 a8 g f2~
	f8 f' e d e f g e
	a2 r4 a,
	f1							%15
	e4 e' c2~
	c8 c b a b cis d4
	e2~ e8 cis d e
	a,2. d4
	bes2. c4					%20
	a2. bes4
	g2. a4
	f2 r
	R1*3
	c'2 f,						%27
	a c
	d c4 bes
	a2~ a8 g a b				%30
	c2 r
	r4 e4 c2~
	c4 b8 c d2~
	d8 g, a b c2~
	c4 d bes2					%35
	r4 d bes bes'~
	bes a8 g a g fis a
	d,2 r4 d
	bes4. bes8 a2
	r4 a' f2					%40
	r4 g cis,8 d e4~
	e8 a, b cis d2~
	d8 b c! d e2~
	e8 g f e d2~
	d8 f e d c2~				%45
	c8 e d c b2~
	b8 a gis b a b c4~
	c8 b a c b c d4~
	d8 c b d c d e4~
	e8 d cis e d e f4~			%50
	f e2 d4
	c a'2 gis4
	a e c2
	r4 c a2
	r4 a' f2					%55
	r4 f d2
	r8 c' bes a g f e d 
	c4 d bes2~
	bes4 g' e2~
	e8 a g f e d c bes			%60
	a f' e dis e2~
	e8 f e dis e2~
	e8 g fis e fis g a4
	d,2. d4
	bes2~ bes8 ees d cis		%65
	d2~ d8 ees d cis
	d2 r
	R1*9
	e2 a,						%77
	c e					
	g fis4 e
	dis2~ dis8 b cis dis		%80
	e2~ e8 f! g e
	f e d4~ d8 e f d
	e d c4~ c8 d ees c
	d c b4~ b8 c d b
	c1~							%85
	c2 b
	c r4 c
	a2 r4 a'
	f2 r4 d
	b2 r4 d						%90
	g1~
	g2~ g8 g f e
	f2 r8 g a bes
	c f, ees d ees2~
	ees4 d r8 e fis g			%95
	a d, c bes c2~
	c8 bes c ees d2~
	d4 c8 d ees2~
	ees4 d8 ees f2~
	f4 ees8 f g2~				%100
	g4 f8 g a2~
	a8 d, g2 fis4
	g r r g
	e2 r8 f e d
	c2 r4 c						%105
	a2 r8 g' f e
	d ees d cis d2~
	d8 ees d cis d2~
	d8 ees d cis d4. e8
	f4 a f r					%110
	d a2 c4~
	c e2 f4~
	f e2 d4~
	d cis~ cis8 a b cis
	d2 r4 d						%115
	bes2 r
	r8 bes c d c bes a g
	a1~ 
	a4 g c2~
	c4 a d2~					%120
	d4 b e2~
	e8 f g d cis bes' a g
	f1~
	f4 e8 d e2~
	e4 d8 cis d2~				%125
	d4 c!8 bes c2~
	c~ c8 bes c a
	bes d ees c d g d c~
	c bes d ees d c bes a
	g fis g4 r a				%130
	gis2 a4 r
	r2 r8 a' g e
	f a d, cis d2~
	d8 f e d cis d b cis
	d4. cis8 d4. cis8			%135
	d4. ees8 a,4 r
	r8 d e! g cis,2
	d1\fermata
		
	\bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	R1*4
	d2 a						%5
	c e
	f e4 d
	cis2~ cis8 a b cis
	d2~ d8 c! d e
	f2~ f8 e f g				%10
	a2~ a8 g f e
	d2~ d8 e d cis
	d4 g cis, e~
	e a, d2~
	d8 ees d cis d4 d'~			%15
	d c8 b a g f e
	d4 g~ g8 a g f
	g a bes g e2~
	e4 d8 e f2~
	f4 g e2~					%20
	e4 f d2~
	d4 e cis2
	d r8 c' bes a
	g2~ g8 d' c bes
	a2~ a8 ees' d c				%25
	bes2~ bes8 bes a g
	f4 ees d2
	c8 ges' f e f2~
	f8 c' bes a g a g f
	e d e4 d r					%30
	g2 c,
	e g
	a g4 f
	e2~ e8 d e fis
	g2~ g8 aes g fis			%35
	g2~ g8 aes g fis
	g4 c fis, a~
	a8 aes g fis g2~
	g8 fis g4~ g8 g f e
	d4 r r a'					%40
	f bes e,4. bes'8
	a g f g a2~
	a8 gis a4 r8 e f g
	a2 r8 d, e f
	g2 r8 c, d e				%45
	f2~ f8 e d f
	e2~ e4. a8
	f4 a~ a4. b8
	gis4 b~ b4. c8
	a2. gis8 a					%50
	b4 d gis, b!~
	b8 a c4 \clef soprano r8 f e d~
	d d c b a2
	r8 bes! a g f2
	r8 g' f e d2				%55
	r8 ees d c bes2
	r2 \clef alto r4 bes
	g2~ g8 a g f
	e c' bes a g bes a d
	c4 e, c2~					%60
	c4 aes' g8 des' c b
	c2~ c8 des c b
	c2~ c4. c8~ 
	c bes a g a2~
	a8 aes g fis g2~			%65
	g8 aes g fis g4 gis~
	gis8 a gis a b2~
	b4 bes g e
	a2. d,4
	bes'2. c,4					%70
	a'2. bes4
	g2~ g8 bes a g
	a2 d,
	f a
	c b4 a						%75
	gis2~ gis8 e fis gis
	a bes! a gis a d c b
	a bes! a gis a d c b
	ais fis' e d cis b ais cis
	fis, g fis g a4 fis			%80
	e b' a2~ 
	a8 gis fis a gis4 a
	b a8 gis a2~
	a4 g8 fis g4 r
	r fis~ fis8 g a fis			%85
	g4 f!8 aes g f e d
	e4 g e g~
	g8 g e d f4 r
	r a f a~
	a8 a g fis g2				%90
	r4 e' cis d~
	d8 b cis d e2~
	e8 e d cis d2
	r r8 bes a g
	f c' bes a bes4 r			%95
	r2 r8 g fis e
	d4 r r8 g a bes
	ees,4 r r8 a bes c
	fis,4 r r8 bes d aes
	g4 r r8 a! bes g			%100
	a4 r r2
	r r8 ees' d c
	bes4 r r8 c bes a
	g2 r4 g
	e2 r8 bes' a g				%105
	f2 r4 a
	f2~ f8 g f e
	d4 f~ f8 g f e
	d4 e f8 a b cis
	d4 f d a					%110
	f2 c
	e gis
	a g!4 f
	e2~ e8 cis d e
	a,4 a' fis2					%115
	r8 fis g a g f e d
	c4 r r2
	r8 e f g f ees d cis
	d4 r r e
	c r r fis					%120
	d r r gis
	e r r2
	r8 d' cis e d c bes a
	bes a g4~ g8 a bes g
	a g f4~ f8 g a f			%125
	g f ees4~ ees8 fis g e
	fis g a4 d, r
	R1
	r4 a bes c
	d2 r4 a						%130
	b2 r4 f'~
	f e r2
	a2 d,
	f a
	bes a4 g					%135
	fis2~ fis8 d e fis
	g2~ g8 fis g e
	fis1\fermata
		
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	R1*10						%1 to 10
	a2 d,
	f a
	bes a4 g
	f2~ f8 e f g
	a2~ a8 bes! a gis			%15
	a2~ a8 bes! a gis
	a4 d g, bes~
	bes e, a g
	f8 e f g a4 r
	r8 d, e f g4 r				%20
	r8 cis, d e f4 r
	r8 b, cis d e4 r
	r8 a bes c d2~
	d8 b c d e2~
	e8 cis d e f2~				%25
	f8 f e d c2~
	c2. bes4
	a c a2~
	a8 a g f e d e4~
	e a8 g f e f4~				%30
	f e8 d e f g4~
	g8 a bes2 a8 g
	f2 r
	R1
	d'2 g,						%35
	bes d
	ees2 d4 c
	bes2~ bes8 a bes c
	d ees d cis d e,! f g
	a d, d'4~ d8 ees d cis		%40
	d f e! d a'4 cis,~
	cis d8 e f2~
	f4 e c2~
	c4 d b2~
	b4 c a2~					%45
	a4 b gis2~
	gis4 e2 a4~
	a f2 d4
	b' gis2 gis4
	a e' a, d~					%50
	d8 c b d c b a gis
	a4. b8 b2\trill
	a r8 d c bes!
	a2 r8 bes a g
	f2 r8 g' f e				%55
	d2 r8 ees d c
	bes4 g' e2
	r8 c bes a g2~
	g r8 d' c bes
	a2 r8 bes a g				%60
	a4 b c e
	c2 r4 e
	c2 r4 ees
	a,2 r
	d g,						%65
	bes d
	f e4 d
	cis2~ cis8 a b cis
	d4 a f'2~
	f4 g, e'2~					%70
	e4 f d2~
	d8 f e d cis2~
	cis8 ees d cis d g f e
	d ees d cis d g f e
	dis e dis e fis e fis dis	%75
	b c b c d4 b
	a e' c r
	r e c e~
	e ais, r fis8 g
	a!2 r4 b~					%80
	b8 c d b c4 cis
	d2. c4
	b e c8 b c4
	a d ees f~
	f8 b, c d ees2~				%85
	ees8 d4.~ d4 g,~
	g8 g a b c4 r
	r c a2
	r8 a b cis d4 r
	r d b2						%90
	r8 b cis d e4 bes'!
	e,8 d e4 cis2
	r4 a f2
	r4 c' a c
	r f, d2						%95
	r4 a' fis a~
	a g8 fis g2~
	g8 fis g bes a2~
	a8 g a c bes2~
	bes8 a bes d c2~			%100
	c8 bes c ees d c bes a
	bes4. c8 a2\trill
	g8 ees' d c bes2
	r8 c bes a g2
	r8 d' c bes a2				%105
	r8 bes a g f2
	a d,
	f a
	bes a4 g
	f2~ f8 e f g				%110
	a bes! a gis a2~
	a8 a g f e4 d~
	d8 e d cis d e f g
	a r r4 r2
	r8 c d ees d c bes a		%115
	g4 d' bes2~
	bes8 g a bes a g f e
	f1~
	f8 f e d e4 g~
	g fis8 e fis4 a~			%120
	a gis8 fis gis4 b~
	b bes a2~
	a4 g a d~
	d bes g e
	r a f d						%125
	r g ees c
	d2~ d8 d e fis
	g4 r r2
	d'2 g,
	bes d						%130
	f e4 d 
	cis2~ cis8 a b cis
	d4 a~ a8 bes! a gis
	a b, cis d e f g e
	fis a g4~ g8 fis bes4~		%135
	bes8 a c2 b8 a
	b4 bes2 a8 g
	a1\fermata

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	R1*14
	d2 a					%15
	c e
	f e4 d
	cis2~ cis8 a b cis
	d2~ d8 c bes a
	g2~ g8 bes a g			%20
	f2~ f8 a g f
	e2~ e8 g f e
	d4 d' bes g
	e e' c a
	f f' d bes				%25
	g g' e c
	a8 f g a bes c d e
	f2~ f8 ees d c
	bes2 c
	cis d					%30
	c! r4 e
	c g'8 f e d ees4~
	ees8 ees d c b g a b
	c4 bes! a2
	g8 a bes d g4 r			%35
	R1*3
	g2 d					
	f a						%40
	bes a4 g
	f2~ f8 e f g				
	a2 r4 a
	f2 r4 g
	e2 r4 f					%45
	d2~ d8 c b d
	c4. b8 c4 a
	d4. c8 d4 b
	e4. d8 e4 c
	f4. e8 f4 d				%50
	gis2 r4 e
	a f d e
	a,2 r4 a'
	f2 r4 f
	d2 r4 d'				%55
	bes2 r4 bes
	g2 r8 a g f
	e2 r8 f e d
	c2 r 
	R1						%60
	f2 c					
	e g
	bes a4 g
	fis2~ fis8 d e fis
	g4 d bes2				%65
	r4 d bes2
	r8 c b a gis e fis gis
	a a' g f e f g e
	f g f e d c bes a
	g a bes g c d e c		%70
	f g a f bes a g f
	e d cis b a g f e
	d4 a'' f d
	r a f d
	r8 g' fis e dis cis dis b	%75
	e4 e, b' d
	c r r a'
	fis2 r4 a
	fis cis ais fis
	r b fis' a~				%80
	a gis a2~
	a8 b c a b4 a
	gis e f fis~
	fis g2 aes4~
	aes a~ a8 g fis a		%85
	g2 g, c
	r8 c d e
	f2 r8 g f e
	d2 r8 d e f
	g2 r8 a g f				%90
	e2 r8 e f g
	a2 r4 a
	d,2 r8 d c bes
	a4 r r f'
	bes,2 r8 bes a g		%95
	fis4 r r d'
	g, a bes g
	c ees c a
	d fis d bes
	ees g e c				%100
	f a fis d
	g ees c d
	g bes g2
	r4 g e2
	r4 a f2					%105
	r4 f d2~
	d4 f2 bes,4~
	bes d2 f4~
	f g~ g8 f4 e8
	d2~ d8 cis d e			%110
	f2~ f8 f e d
	c2~ c8 b4 bes8
	a1~
	a8 g' a bes a g f e
	fis2 r4 d				%115
	g, r r g'
	e2 r4 c 
	f c a f
	bes2~ bes8 a g bes
	a b c4~ c8 b a c		%120
	b cis d4~ d8 cis b d
	cis d e4~ e8 d cis e
	d4 e f d
	g2 r4 c,
	f2 r4 f,				%125
	bes2~ bes8 a bes g
	bes a g fis g2~
	g8 fis g a bes g bes d
	g1~
	g8 d c a bes d g, f		%130
	e e' d b c e a, gis
	a a' g e f2~ 
	f bes,
	a1 
	d~						%135
	d~
	d~
	d\fermata

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key d \minor}

\score{
    \context StaffGroup <<
	\new Staff <<\global \clef soprano \soprano>>
	\new Staff <<\global \clef alto \alto>>
	\new Staff <<\global \clef tenor \tenor>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \midi {\tempo 4=120}
  \layout{}
}

