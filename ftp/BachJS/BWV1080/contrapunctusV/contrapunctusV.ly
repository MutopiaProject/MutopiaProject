\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 16)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus V"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus V"
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
lastupdated = "2006/Apr/07"

footer = "Mutopia-2006/04/07-722"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	R1*6						%1 to 6
	d2 a'4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8 a g f				%10
	e gis a b c2~
	c8 c bes! a bes2~
	bes8 bes a g a2~
	a4 bes g2~
	g2. f4						%15
	e2 r
	d a4. b8
	c4. d8 e2
	f e4. d8
	c2~ c8 b c d				%20
	e4 dis~ dis8 fis e dis
	e d! c b c4. b8
	a2~ a8 bes! a g
	a c d e f g a4~
	a8 g f e f e d cis			%25
	d a b cis d2~
	d8 c! bes! a g2~
	g~ g8 f bes4
	a r r2
	R1*3					
	r2 c						%33
	f,4. g8 a4. bes8
	c2 d						%35
	c4. bes8 a2~
	a8 g a bes c2~
	c8 d c bes a4 f'~
	f e2 d4~
	d c2 bes4~					%40
	bes4. a8 c b c4
	fis,8 d g4~ g8 g' f!4
	bes,4. a8 d4 r
	r2 r4 d
	g2. f8 ees					%45
	f2~ f8 ees d4~
	d8 g, f ees d f g a
	bes f bes4~ bes8 c bes a
	bes c d4~ d8 ees f4~
	f8 ees d c bes4. c8			%50
	d4 c f2~
	f8 e f g c,2~
	c4 f c4. d8
	ees4. f8 g4 d~
	d8 e! f4~ f8 g a4			%55
	e8 f g4 d8 e f4
	e2 a4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8 g f e				%60
	d2. a4~
	a c f,2~
	f8 a g f e2~
	e~ e8 d cis d
	cis4 e' a4. g8				%65
	f4. e8 d4 g~
	g8 f e4~ e8 d c4
	f8 e d4 g8 f e4
	a2 d,4. e8
	f4. g8 a2 					%70
	bes a4. g8
	f2~ f8 e f g
	a g f a d,2~
	d8 bes c2 bes4
	a2~ a8 d, g bes				%75
	e,2. d4~
	d8 cis d b cis e a4~
	a8 bes a g f e d e
	f g a4~ a8 g f g
	a g f e d bes' a g			%80
	f a b cis d2~
	d8 ees d c bes d e fis
	g2~ g8 a g f
	e cis d2~ d8 g
	cis,4 d2 cis4				%85
	d2 r8 d c bes
	a bes a g fis g fis a
	<<
	{\stemUp e d e g fis a c4~ c2 c8 bes d cis d1~ d\fermata}
	\\
	{\stemDown s2 s8 a4.~ a2~ a8 bes a g fis1~ fis}
	>>
	
	\bar "|."

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c''{

	a2 d,4. e8					%1
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g
	a bes c4~ c8 bes a bes		%5
	e, f g4~ g8 a f g
	a g f e d b cis4
	d2~ d8 e f g
	a e a4~ a8 d, g4
	f8 a b cis d a d4			%10
	c!2 r
	r r8 \clef soprano a' g f
	e2~ e8 g f e 
	f2 e
	e8 a, b cis d a d4~			%15
	d8 d cis b c2
	\clef alto r8 a, b cis d e f4~
	f8 g a4~ a8 g f e
	d4 d'~ d8 d c b
	a e fis gis a2~				%20
	a8 gis a b c2
	b~ b8 b a gis
	a g! f e f4. g8
	c,4 r r2
	R1							%25
	d2 a'4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8 g f ees
	d1~							%30
	d8 ees d c bes2~
	bes~ bes8 d c bes
	a4. a'8 g f g4
	c, r r8 f e d
	g a bes4~ bes8 a bes4		%35
	a e f2~
	f8 e f g a2~
	a8 bes a g f4 a
	g2 f
	e d							%40
	c4 r g'2
	d'4. c8 bes4. a8
	g2 fis
	g4. a8 bes2~
	bes8 c bes a g bes a g		%45
	a4 c f,4. g8
	f ees d c d4 r
	r8 a bes c d c ees4
	d g8 a bes c d4~
	d8 c bes a g a bes4~		%50
	bes8 g a4~ a8 f g a
	bes2~ bes8 bes a g
	a4 r r c
	g4. a8 bes4. c8
	d4 a~ a8 bes c4~			%55
	c bes2 a4~
	a8 b a gis a4 r
	r2 d,
	a'4. g8 f4. e8
	d2 cis						%60
	d4. e8 f2~~
	f8 g f ees d2~
	d~ d8 d c bes
	a2. gis4
	a4 r r a'					%65
	d4. c8 bes4. a8
	g4 c~ c8 bes a4~
	a8 g f4 bes8 a g4
	c8 bes c4~ c8 a bes4
	a8[] \clef soprano cis d e f2	%70
	r8 a g f e d e4
	d2 r2
	R1*5
	\clef alto d,2 a'4. g8		%78
	f4. e8 d2
	cis d4. e8					%80
	f2~ f8 g f e
	d2~ d4 r
	r8 a' bes c d2
	a~ a8 a g4~
	g8 a bes4 a4. g8~			%85
	\stemUp <<{g e fis4}\new Voice{\stemDown d2}>> \stemNeutral a'4. g8
	fis4. e8 d2
	cis d4. e8
	fis2~ fis8 g fis e
	d1~							%90
	d\fermata

		
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	R1*9						%1 to 9
	d2 a4. b8					%10
	c4. d8 e2
	f e4. d8
	cis2~~ cis8 a b cis
	d2~ d8 d cis b
	cis4 d8 e f e f g			%15
	a4 e a2
	R1*3
	a,2 e'4. d8					%20
	c4. b8 a2
	gis a4. b8
	c2~ c8 d c bes!
	a2 r8 e' d cis
	d2~ d8 cis e4				%25
	a,2. d4~
	d4. c8 bes2~
	bes8 bes a g a4. g8
	a4 bes c2~
	c8 bes a g f4 g				%30
	a2~ a8 g f e
	d4 e f g~
	g8 g f2 e4
	f8 c d e f4 r
	r r8 c f4. e8				%35
	f a c4~ c2~
	c8 bes a g f2~
	f8 e f g a4 r
	R1*2
	c2 g4. a8					%41
	bes4. c8 d2
	ees d4. c8
	bes2~ bes8 a bes c
	d2~ d8 d c bes				%45
	c2~ c8 f, bes4~
	bes a bes r
	r2 f'2
	bes,4. c8 d4. ees8
	f2 g						%50
	f4. ees8 d2~
	d8 c d e! f2~
	f4 r f c~
	c8 d ees4~ ees8 f g4
	d4. e!8 f4. g8				%55
	a4 e8 f g4 d~
	d8 d cis b cis2
	d8 a c!4~ c8 a bes g'
	e4 a,~ a8 a b cis
	d4 r r a'					%60
	bes bes, a8 g a bes
	c2~ c8 c bes a
	g1~ 
	g8 g f e f2
	e4 r r2						%65
	d'4 g~ g8 f e4~
	e8 d c4 f4. e8
	d2. e4~
	e8 d e fis g2
	a d,4. e8					%70 
	f4. g8 a2
	bes a4. g8
	f2~ f8 e fis g
	a g fis a d,4 g~
	g8 cis, d f bes,2~			%75
	bes8 a g a f2
	e a4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8 g f e				%80
	d f g a bes2~
	bes8 c bes a g bes c d
	ees2 d4 g~
	g f8 e d f e d
	e4 f e8 d e4				%85
	d2 r8 e, fis g
	a g a bes c bes c fis,
	g a g e a g fis e
	d2~ d8 cis d e
	fis1~						%90
	fis\fermata
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	R1*3					%1 to 3
	d2 a'4. g8
	f4. e8 d2				%5
	cis d4. e8
	f2~ f8 g f e
	d f g a bes2
	a4. a,8 b4. cis8
	d4. e8 f4 d				%10
	a'2~ a8 a bes c
	d2 g,~
	g8 g f e f2~
	f8 f e d e2
	a1~						%15
	a2~ a8 bes a g
	f2. d4
	a'4 f c'2~
	c8 c b a gis2
	a~ a8 g! f4				%20
	e1~ 
	e2 r
	a d,4. e8 
	f4. g8 a2
	bes a4. g8				%25
	f2~ f8 e f g
	a2 r8 a g f
	e2 d~
	d8 d c bes a2
	bes~ bes8 bes a g		%30
	fis2 g~
	g8 g f! e d4 e
	f2 c'4. bes8
	a4. g8 f2
	e f4. g8				%35
	a2~ a8 bes a g
	f2~ f8 a bes c
	d2~ d8 e d c
	b d c b a g a b
	c d e f g a g f			%40
	e c f2 ees4
	d1~
	d8 g, c4~ c8 c bes a
	g d' e fis g2~
	g4 f ees2~				%45
	ees8 ees d c d4. ees8
	f2 bes,4. c8
	d4. ees8 f2
	g f4. ees8
	d2~ d8 c d ees			%50
	f1~
	f~
	f4 r r2
	c'4 g~ g8 a bes4~ 
	bes8 c d4 a4. bes8		%55
	c4 g8 a bes4 f8 g
	a2~ a8 g f e
	d2 r4 g~
	g8 e f2.~
	f8 e f g a2~			%60
	a8 fis g4 d2
	a bes
	b c
	cis d
	a4 r a' d~				%65
	d8 c bes4~ bes8 a g4 
	c4. bes8 a4. g8
	f4 bes8 a g4 c8 bes
	a2 g
	d r8 g' f e				%70
	d2. cis4
	d8 g, a bes c! c, d e
	f g a f bes4 a8 g
	fis4 a bes8 a, bes c
	d e f d g f e g			%75
	cis, d e cis d c bes d
	gis, a b gis a g'! f e
	d2~ d8 c bes4
	a8 bes a g f4 bes
	a2. b8 cis				%80
	d2~ d8cis d e
	f4 fis g2~
	g8 fis g a bes4. b8
	c a d c! b a bes4~
	bes8 a4 gis8 a4 a,		%85
	\stemUp \tieUp <<
	{a'2 d,4. e8 fis4. g8 a2 bes a4. g8 fis2~ fis8 e fis g a1~ a\fermata}
	\new Voice{\stemDown \tieDown d,2 s d r d r r8 c bes a g2 d'1~ d}
	>>

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

