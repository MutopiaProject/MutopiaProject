\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 16)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus III"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus III"
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

footer = "Mutopia-2006/04/07-720"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	R1*8						%1 to 8
	d2 a
	c e							%10 
	f e4 d
	cis2~ cis8 a b cis
	d2~ d8 d e f
	g b, cis d e4 d~
	d8 cis c2 b8 bes			%15
	a gis a b c4 cis~
	cis d8 e f4 e~
	e8 a, b cis d4. e8
	cis4 f d4. e8
	a,4 d2 cis8 c~				%20
	c b ees4 c4. d8
	g,4 c2 b8 bes~
	bes a a'2 d,4~
	d8 e f4~ f8 g a4~
	a8 g bes2 a8 g				%25
	f2~ f8 e fis g
	a4 d,~ d8 g cis, d
	e f g e f2~
	f8 f e d c4. d8
	e4 r r2						%30
	R1*12
	e2 a,						%43
	c e
	f e4 d						%45
	c2~ c8 a b cis
	d c! b a b4 c~
	c8 b c d e d c bes
	a4 bes~ bes8 a bes c
	d c bes aes g2~				%50
	g8 fis g a bes a bes c
	d cis d e f4 fis~
	fis g8 a bes4 a~
	a8 d, e fis g2~
	g8 fis g a~ a fis g4		%55
	R1*2
	d2 a4. b8
	c4. d8 e4. d8
	f2~ f8 e4 d8				%60
	cis4 c~ c8 a b cis
	d2~ d8 d e f
	g4. fis8 g4. gis8
	a2~ a8 a g f
	g4 f8 e d cis d e			%65
	f g f e f g a4
	c,2~ c8 fis, g a
	bes2 a~
	a8 fis g4~ g8 g fis e
	fis g a4 d,2~				%70
	d4. cis8 d2~
	d1\fermata
	
	\bar "|."

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c''{

	R1*4						%1 to 4
	a2 d,						%5
	f a
	bes a4 g
	f2~ f8 e f g
	a4 g2 fis8 f
	e dis e fis g4 gis~			%10
	gis a8 b c4 b~
	b8 e, f g a4 g~
	g8 fis g a bes4 a
	g2~ g8 e f g
	a4. g8 fis e f4~			%15
	f2~ f8 a g f
	g e f g a2~
	a8 cis, d e f g a bes
	e,4 a2 gis8 g~
	g fis bes4 g4. a8			%20
	d,4 g2 fis8 f~
	f e aes4 f4. g8
	c,4 c'2 b8 bes
	a gis a b c4 cis~
	cis d8 e f d e4~			%25
	e8 a, b cis d2~
	d8 c bes a bes2~
	bes4 a~ a8 d gis, a
	b2~ b8[ a16 g] fis8 f
	e dis e fis g4 gis~			%30
	gis a8 b c a b4~
	b8 e, fis gis a2~
	a8 bes! a g fis4 f~
	f8 a g f e4 ees~
	ees8 g f ees d4. e8			%35
	f e f g a g a4~
	a8 g bes a g f g4~
	g8 c, d e f e f4~
	f8 e16 d e4 f4. g8
	c,4 a'2 gis8 g~				%40
	g8 fis16 e fis4 g4. a8
	d,4 b'2 ais8 a~
	a gis g2 fis8 f
	e dis e fis g4 gis~
	gis a8 b c4 b~				%45
	b8 e, fis gis a g f e
	f fis g a~ a g f e
	d g a b c e, f g~
	g f ees d c f g a
	bes d, ees f bes, b c d		%50
	ees d c ees d fis g4~
	g8 a bes4~ bes8 d c bes
	c a bes c d2~
	d~ d8 cis d e
	a,2 d,4. e8					%55
	f4. g8 a4. g8
	bes2~ bes8 a4 g8
	f2~ f8 e fis gis
	a b c4 b8 cis d4
	cis8 c bes a bes4 b			%60
	a8 g fis a d,2~
	d8 fis g a bes b cis d
	e d ees a, bes c d4~
	d c8 b a4 e'~
	e8 e d cis d a bes g		%65
	a2~ a8 bes a g
	fis g a4 d,2~
	d~ d8 ees d c
	bes d cis e~ e e d cis
	d4. c8 bes2~				%70
	bes8 a bes2.~
	bes8 a bes g a2\fermata
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	d2 a						%1
	c e
	f e4 d
	cis2~ cis8 a b cis
	d4 c!2 b8 bes				%5
	a gis a b c4 cis~
	cis d8 e f4 e~
	e8 a, b cis d cis d e
	f e d cis d4 d,
	a'8 b c4~ c8 e d c			%10
	b b, c d e fis gis e
	a4 g! f e 
	d8 d' e fis g4 f
	e d cis d
	e2 d~						%15
	d4 c8 b a4 r
	r d~ d8 b cis e
	a,4 r r2
	R1*10
	r4 e'2 a,4~					
	a8 b c4~ c8 d e4~			%30
	e8 d f2 e8 d
	c2~ c8 b cis d
	e2~ e8 a, b c
	d2~ d8 g, a bes!
	c bes c2 f,4~				%35
	f8 g a4~ a8 bes c4~
	c8 bes d2 c8 bes
	a2~ a8 g a b
	c g c2 b8 bes~
	bes a f'4 d4. e8			%40
	a,4 d2 cis8 c~
	c b g'4 e4. fis8
	b,4. cis8 d4. d8
	c b c a b4. c8
	d c4 b a gis8				%45
	a4 r r2
	r8 d, e fis g4 a8 f
	g f' e d c c, d e
	f4 g8 ees f ees' d c
	bes bes, c d ees f ees d	%50
	c d e! fis g4 r8 ees
	d4 r8 g f bes a4~
	a g~ g8 e fis a
	d, fis g a bes r r4
	r8 d cis c~ c c b bes		%55
	a gis a b c4 cis~
	cis d8 e f4 e
	r8 a, b cis d a d,4
	e8 dis e fis g4. gis8
	a4 r r e'					%60
	e r r2
	R1
	a,2 d,
	f a
	bes a4 g					%65
	f2~ f8 e fis g
	a2~ a8 d, e fis
	g2~ g8 fis g a
	bes4 a8 g a2~
	a~ a8 a g fis				%70
	g1~
	g8 fis g e fis2\fermata

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c'{

	R1*14						%1 to 14
	a2 d,						%15
	f a
	bes a4 g
	f2~ f8 e f g
	a a, r a bes a b cis
	d d, r d' ees d e fis		%20
	g g, r g aes g a b
	c c, r c' des c d e
	f f, r f' fis g r g,
	f e d d' a bes' a g
	f e d4~ d8 g cis,4			%25
	d r8 a bes bes' a g
	fis4.\trill e16 fis g8 f e d
	cis4.\trill b16 cis d8 c b a
	gis4 gis' a a,8 b
	c4 r8 a e' f e d			%30
	c b a4~ a8 d gis,4
	a8 c d e f4 e8 d
	cis a b cis d e d c
	b g a b c d c bes
	a g a f bes a bes c			%35
	d4. e8 f4. d8
	g4. f8 e d e c
	f4 e d2
	c4 r8 c des c d e
	f f, r f' bes, a b cis		%40
	d d, r d' ees d e fis
	g g, r g' c, b cis dis
	e4. e8 f g a4~
	a4. a8 g fis e4~
	e8 f! e d c4 e				%45
	a, r r2
	R1*4
	c2 g						%51
	bes d
	ees d4 c
	bes2~ bes8 a b cis
	d4 e8 fis g2				%55
	d c8 d e4~
	e8 g f e d4 cis
	d2~ d8 c!4 b8
	a2 g8 a bes!4
	a8 d e f g4 gis				%60
	a8 bes a g! fis4 g8 a
	bes c bes a g f e d
	cis4 c2 b8 bes
	a gis a b c4 cis~
	cis d8 e f4 e~				%65
	e8 a, b cis d2~
	d8 c! bes a bes2~
	bes8 a bes g d'2~
	d1~
	d~							%70
	d2~ d8 a bes g
	d1\fermata

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
  \midi {\tempo 4=115}
  \layout{}
}

