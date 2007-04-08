\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus X"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus X"
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
lastupdated = "2006/Apr/22"

 footer = "Mutopia-2006/04/23-744"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	%\set Staff.midiInstrument = "harpsichord"

	R1*7						%1 to 7
	r2 r4 c
	b e r gis,
	a e a8 g f e				%10
	d c b4~ b8 cis d e
	f e f d e fis g a
	bes a bes g a4 d~
	d8 c d b c4 cis
	d g, f a					%15
	d4. e8 f g a4~
	a bes8 a g f g4
	c,1~
	c8 fis, g a bes2~
	bes a~						%20
	a8 d4 cis8 d2~
	d4 cis r2
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8					%25
	f2~ f8 e fis gis
	a g!16 f e4~ e8 d c b
	a gis a b cis d e f
	g a bes g e a g a
	f g a f d g f g				%30
	e f g e f4. g8 
	a4. g8 f e d cis
	d2~ d8 b cis4
	d8 bes! a g f4 f'~
	f8 e fis gis a2~			%35
	a~ a8 a g f
	e4 a2 g4
	f2 e~
	e4 fis8 g a4 d,~
	d e8 f! g4 c,~				%40
	c8 b cis d e4 a,~
	a8 a d cis d2~
	d4 d cis2
	d8 bes c!4~ c8 a bes4~
	bes8 a d4~ d8 cis d4~		%45
	d8 cis d e f4. e8
	d2~ d8 cis d e
	cis4 r r2
	R1
	r4 d8 e f g a f				%50
	g a bes g e a g a
	f e d4~ d8 b c d
	e d c4~ c8 b e4~
	e d c b
	a2 r 						%55
	R1*2						%--
	r4 a8 b cis d e f
	g a bes g e a g a
	f g f e d e f d				%60
	e fis g2 f4
	g d g2~
	g4 f8 e f4 d
	c2. c4
	f2~ f8 g f g				%65
	e4 a, bes f
	r d' c f
	bes,8 c d e f g a4~
	a8 g f e d2
	c~ c8 c d e					%70
	f2~ f8 fis g a
	bes2 r8 d, e f
	g2~ g8 gis a b
	c2 r8 e, f! g
	a2 d,4. e8					%75
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a f g4~ g8 d e g
	c,2 bes~					%80
	bes8 g a c f2~
	f4 b, e2~
	e4 d r8 e f a
	d,2 c~
	c8 a b cis d4 a				%85
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g f2
	e r
	r r8 c d c					%90
	bes2 r
	r8 f' g f e4 a
	f8 a bes a g4 c
	f, bes r f~
	f ees2 d4~					%95
	d c2 bes4~
	bes a~ a8 g g'4~
	g8 e fis4 f2~
	f4 ees8 d ees2~
	ees4 d8 c d ees f4~ 		%100
	f8 d e! f g4 bes,~
	bes8 g a bes c d ees c
	d4 f bes,4. c8
	d4. e8 f2
	g f4. ees8					%105
	d2~ d8 c d e!
	f4 f,8 g a bes c d
	ees f g ees c f ees f
	d ees f d bes g g'4~
	g g2 fis4					%110
	g8 f! ees d cis4 d
	e!2~ e8 a, d c
	bes1~
	bes8 bes a g f4. f8
	e a4 g8 f e f g				%115
	a g a bes c d ees c
	d2 c4 f8 e
	f4. cis8 d2~
	d2. cis4
	d2\fermata r				%120
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	%\set Staff.midiInstrument = "harpsichord"

	r4 cis d a					%1
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g fis d g4~
	g8 e fis a bes2~			%5
	bes8 g a cis d2~
	d8 c bes a g f e4
	a4. g8 f4 e8 fis
	gis4 a8 b c4 b
	a2 r 						%10
	R1*3						%--
	r4 gis a e
	r bes' a d					%15
	g,8 a b cis	\clef soprano d e f4~
	f8 e d c bes a bes4~
	bes a8 g f g f ees
	\clef alto d2~ d4 e!8 f
	g f e d c4 f				%20
	f2~ f8 fis g gis
	a2 r
	R1
	d2 a4. b8
	cis4. d8 e2					%25
	a, r
	R1*7						%--
	\clef soprano d2 a4. b8
	c4. d8 e2					%35
	f e4. d8 
	cis2~ cis8 a b cis
	d2~ d8 d c! b
	c2~ c8 c bes! a
	\clef alto bes2~ bes8 bes a g	%40
	a2~ a8 g f e
	f2. f4
	e2. e4
	a2 d,4. e8
	f4. g8 a2					%45
	bes a4. g8
	f2~ f8 e f g
	a4 d~ d8 c bes a
	g4 c~ c8 bes a g
	f4 bes2 a4					%50
	e' r r2
	r4 d, f c
	r a' g c
	\clef soprano f,8 g a b c d e4~
	e8 d c b a2~				%55
	a8 fis gis4 r2
	R1*3						%--
	r4 d8 e f g a b				%60
	c d ees c a d c d
	bes c bes a g a bes g
	a b c2 bes4~
	bes e, a2~
	a4 d g,2~					%65
	g8 g f e f e d cis
	d e f4~ f8 e d4~
	d d'8 cis d e f4~
	f a, bes d,8 e
	f e f g a4. g8				%70
	f a bes c d2~
	d4. c8 bes4. a8
	g b c d e2~
	e4. \clef alto d8 c4. b8
	c2 f,4. g8					%75
	a4. bes8 c2
	d c4. bes8
	a2~ a8 g a bes
	c2 r
	r8 e, f a d,4 e				%80
	f4. e8 d a bes d
	g2~ g8 bes a e
	f2 r
	r8 fis g bes e,4 fis
	g8 fis g4 bes f				%85
	\clef soprano r4 d' c f
	bes,8 c d e f g a4~
	a8 g f e d2
	cis r
	\clef alto r8 g a g fis4 a	%90
	r8 g f! g a4 e
	f c' g e'
	a, r r8 d ees d
	c4 f bes, c
	r8 g a g f4 bes				%95
	r8 ees, f ees d4 g
	r8 c, d c bes4 bes'~
	bes8 g a4. g8[] f ees
	d4 g4. f8[] ees d
	c4 f4. ees8[] d c			%100
	bes4. a8 bes c d e!
	f4 c r2
	r8 c' bes a g fis g a
	bes a bes g c ees d c
	bes4 ees r8 ees d c			%105
	bes a g a bes a bes g
	c4 r r f,
	g8 a bes2 a4~
	a d, r8 g a bes
	c d ees c a d c d			%110
	bes2 a4 bes~
	bes8 a g a f2~
	f8 a g f e4 d
	cis8 d e4~ e8 e d4~
	d cis d a					%115
	r f' e a
	d,8 e f g a bes c4~
	c8 bes a g f g a4~
	a1~
	a2\fermata r				%120

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c{

	%\set Staff.midiInstrument = "harpsichord"

	R1*2						%1 to 2
	r2 r4 fis
	g d r bes'
	a d g,8 a bes c				%5
	d e f4~ f8 e d c
	bes a d2 cis8 b
	cis d e4~ e8 d e4~
	e2. d4
	c2 r8 e, a4~				%10
	a g8 fis g2
	f!8 g a b c2
	bes8 c d e f2
	e4 f8 d e a, bes4
	a d r fis,					%15
	g d a'8 g f e 
	d c bes4~ bes8 c d e
	f g f2 g8 a
	bes2~ bes8 a g f
	e4 f8 g a4 d				%20
	d, r r d'
	e2 r
	R1*3						%--
	d2 a4. b8
	c4. d8 e2
	f e4. d8 
	cis2~ cis8 a b cis!
	d e f4~ f8 e d e			%30
	cis d e4~ e8 a, d4~
	d8 e f4~ f8 g a4~
	a8 g f e f4 e
	a, b8 cis d2
	c!4. b8 c2~					%35
	c8 c bes! a bes4. d8
	a'2 r
	R1*6						%--
	r4 fis, g d
	r bes' a d					%45
	g,8 a bes c d e f4~
	f8 e d c bes2\trill
	a2. d8 c
	bes a g2 c8 bes
	a g f4~ f8 e f4				%50
	bes e, a2~
	a8 g f g a4 e
	a4. b8 c d c b
	a2. gis4
	a e e' d8 c					%55
	b4 e,8 fis gis a b c
	d e f d b e d e
	cis a d4 g, bes
	e, d2 cis4
	d r r2						%60
	R1*5						%--
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a c d e f4. e8				%70
	d4. c8 bes4. a8
	g d' e fis g4. f8
	e4. d8 c4. b8
	a8 e' fis gis a4. g8
	f e f c d c d bes			%75
	a g f4~ f8 e f a~
	a g f g a4. bes8
	c2. f,4~
	f8 d e g c4. bes8
	a2~ a8 f g c				%80
	f,2 r4 bes~
	bes8 d, e g cis,4. cis8
	d e f a d4. c8
	bes2~ bes8 g a d
	g,4 d'8 e f e d cis			%85
	d a a'4~ a8 e d cis
	g'4 d r8 d c bes
	a4. cis8 d4 a
	a'8 e d e f4 cis
	d a c fis,					%90
	g c r8 c bes c
	d4 a c cis
	d c! bes g
	a8 c bes c d4 a
	bes c~ c8 a bes a			%95
	g4 c r8 f, g f
	ees4 a r8 d, ees cis
	d4 r d'4. c8
	b a g4 c4. bes8
	a g f4 bes4. a8				%100
	g1
	f4. g8 a bes c a
	bes4 f g d
	r bes' a d
	g,8 a bes c d ees f4~		%105
	f8 ees d c bes2
	a4 f' ees d
	c2 f
	bes,8 c d bes ees d c bes
	a bes c a d4 d,				%110
	g g'~ g8 f e d
	cis d e cis d c bes a
	g d e f g a bes g
	a1
	r4 a bes f					%115
	r d' c f
	bes,8 c d e f g a4~
	a8 g f e d4. e8
	f4 e8 d e f g4~
	g fis\fermata r2			%120

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	%\set Staff.midiInstrument = "harpsichord"

	R1*6						%1 to 6
	r4 f e a
	r cis, d a
	e'8 d c b a g f4~
	f8 g a b c4 a				%10
	b e~ e8 a, b cis
	d2 c!8 d e fis
	g2 d8 e f g
	a2~ a8 f g e
	f e d cis d bes c a			%15
	b cis d2 f,4
	g2. f8 g
	a2. bes8 c
	d4 e8 fis g f e d
	c4 d8 e f e d c				%20
	bes4 bes'8 a bes4 bes,
	a a'8 bes a g f e
	f e f g f e d cis
	d d, d' e f a d f
	e f g e cis d e cis			%25
	d4 d, r2
	R1*4						%--
	a'2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a2~ a8 g f e				%35
	d2 g~
	g8 g f e f2~
	f8 e f g a2~
	a8 bes! a g fis4.\trill e16 fis
	g8 a g f! e4.\trill d16 e	%40
	f4 e8 d cis4.\trill b16 cis
	d2~ d8 f, bes a
	g a bes g e a g a
	f g a fis bes4 g
	d'4. e8 f4. fis8			%45
	g2 f!8 g a4
	bes a2 g4~
	g8 g e d f2~
	f4 e8 d e2~
	e4 d8 cis d2~				%50
	d cis
	d a4. b8
	c4. d8 e2
	f e4. d8
	c2~ c8 b c d				%55
	e dis e4 r e
	fis8 gis a2 gis8 fis
	g!4 f! e d
	cis d8 bes g4 a
	d, r r2						%60
	R1
	r4 g8 a bes c d e
	f g a f d g f g
	e f g e c f e f
	d e f d b e d e				%65
	cis2 d~
	d4 bes f'4. d8
	g4. g8 f4. e8
	d4. c8 bes2
	f' r						%70
	r r8 d e fis
	g2 r
	r r8 e fis gis
	a2 r
	r4 a bes f					%75
	r d c f
	bes,8 c d e f g a4~
	a8 g f e d2
	c r
	R1*5						%--
	g'2 d4. e8					%85
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a2 r8 a g a
	bes4 fis a d,				%90
	ees e f r
	r2 r8 e f e
	d4 f2 ees4~
	ees d r8 f ees f
	g4 c, d2					%95
	ees4 a, bes2
	c4 fis, g2
	d r
	R1*4						%--
	r4 d' ees bes
	r g' f bes
	ees,8 f g a bes c d4~		%105
	d8 c bes a g2
	f r
	R1*7						%--
	a2 d,4. e8					%115
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a1
	d,2\fermata r				%120
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 4/4 \key d \minor}

\score{
    \context StaffGroup <<
	\new Staff <<\global \clef soprano \soprano>>
	\new Staff <<\global \clef alto \alto>>
	\new Staff <<\global \clef tenor \tenor>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \midi {\tempo 4=110}
  \layout{}
}

