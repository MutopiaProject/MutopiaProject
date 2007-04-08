\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus IX"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus IX"
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
lastupdated = "2006/Apr/18"

 footer = "Mutopia-2006/04/18-740"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	%\set Staff.midiInstrument = "harpsichord"

	R1*7						%1 to 7
	r4 a a'2~
	a4 gis8 fis e d c b
	a gis a b c a b c			%10
	d cis d e f d e f
	f4\prall( e) r8 e d e
	f a g f g f e d
	c f e d e d c bes!
	a d c bes c bes a gis		%15
	a4 e' cis2
	d r4 c!~
	c bes8( d) g4 e
	cis2 r4 cis
	d f e16( f g8) bes,4		%20
	a d cis16( d e8) g,4
	f2 r4 c'
	b2 r4 gis
	a1~
	a							%25
	b8 c d b c2~
	c bes!
	a g
	f8 a g f g f e d
	g bes a g a g f e			%30
	a4 c f2~
	f e~
	e d~
	d cis
	d1 							%35
	a'					
	f
	d
	cis						
	d2 e						%40
	f1~
	f4 g f e
	d1~
	d8 d c bes c bes a g
	a c' bes a bes a g f		%45
	e f g4 r g
	g( f) r8 c bes c
	a4 d c b
	c bes!8 a bes2
	a4 f' d2~					%50
	d8 c bes a bes a g f
	e f g a bes2~
	bes8 a b c d2~
	d8 c d e f2~
	f8 f e d e d c b			%55
	c d c bes! c bes a g
	a4 cis d e
	a,8 bes a g a g f e
	f c' bes a bes a g f
	e4 e' r8 e d cis			%60
	d4 a d c!
	bes a g f
	e8 d e f g e a4~
	a8 f bes4~ bes8 g c bes
	a d c bes c a c4~			%65
	c8 d c bes c bes a g
	f1~
	f8 a g f g f e d
	e1~
	e8 g' f e f e d c			%70
	d1~
	d8 f e d e d c b
	c e d c d c b a
	b4 r r2
	r4 e, e'2~					%75
	e4 dis r dis
	e8 f e d! e d c b
	c4 a' d, f~
	f8 e d c d c b a
	gis2 a4 b					%80
	c1~
	c4 a d c
	b1~
	b4 g c bes
	a1							%85
	e'
	c8 a' g f g f e d
	cis e d cis d cis b a
	d4 a a'2~
	a4 g8 f e d cis b			%90
	a g a b c a b cis
	d cis d e f d e f
	f4( e) r8 e d e
	f a g f g f e d
	c f e d e d c bes			%95
	a d c bes c bes a g
	f bes a g a g f e
	d1~
	d8 d' c bes c bes a g
	a4 r r2						%100
	r bes~
	bes4 b c cis
	r8 d c! bes c4 d
	bes g'2 f8 ees
	d4 ees f r					%105
	R1*6						%--
	r8 d, e fis g fis g a		
	bes g a b c b c d
	ees4 d c bes!
	a8 g a bes c a b cis		%115
	d4 g,2 f4~
	f8 e d2 g4~
	g8 bes a g a g f e
	f e f a g f e d
	e2 r4 cis'					%120
	d2~ d8 c! bes a
	g1~
	g
	f2 r4 bes
	a2 r4 cis					%125
	d8 c! bes a bes a g fis
	g1~
	g8 bes a g a g f e
	f4. g8 e4. d8
	d1\fermata					%130
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	%\set Staff.midiInstrument = "harpsichord"

	r4 d d'2~					%1
	d4 cis8 b a g f e
	d cis d e f d e f
	g fis g a bes g a bes 
	bes4\prall( a) r8 a g a		%5
	bes d c bes c bes a g
	f bes a g a g f e
	d g f e f e d c
	b4 e gis e
	c8 d c b a4 g'				%10
	f8 g f e d4 d'
	gis, a8 b c4 b
	a2 r4 gis
	a2 r4 e
	f2 r4 f						%15
	e2 r4 g~
	g f8 g a2
	d, r4 g
	e f8 g f4 e
	d r r e						%20
	f r r cis
	d2 r4 e
	f d r8 f e d
	c b c d e c d e
	f4 r r2						%25
	R1*5						%--
	r2 r4 a
	bes8 d c bes c bes a g
	f a g f g f e d
	e bes' a g a g f e
	d c' bes a g f e g			%35
	f4 e r cis'
	d a d c!~
	c bes8 a g4 f
	e f8 g f4 e
	d g2 bes4					%40
	a c f, a8 g
	a e' d cis d c bes a
	bes4 c bes a
	g2 r
	r4 c, c'2~					%45
	c4 bes8 a g f e d
	c bes c d e c d e
	f e f g a f g a
	a4( g) r8 g f g
	a c bes a bes a g f			%50
	e a g f g f e d
	c2 r8 c d e
	f2~ f8 e fis gis
	a2~ a8 g! a b
	c4 e, fis gis				%55
	a c, d e
	f g f cis
	cis( d) r2
	d1
	a'							%60
	f
	d
	cis
	d2 e
	f1~							%65
	f4 g f e
	d8 e d cis d c b a
	b1~
	b8 d c b c b a gis
	a4 r r2						%70
	r8 c' b a b a gis fis
	gis4 r r2
	r4 e e'2~
	e4  d8 c b a gis fis
	e d e fis gis e fis gis		%75
	a gis a b c a b c
	c4( b) r8 b a b
	c e d c d c b a
	g c b a b a gis fis
	e4( f!) e2~					%80
	e4 e a g
	fis r r2
	r4 d g f
	e r r2
	r8 e' d c d c b a			%85
	b c b a b a gis fis
	e1
	a~
	a4 \clef soprano d8 e f4 e8 d
	e4 r r2						%90
	\clef alto r r8 c, d e
	f4 r r8 f g a
	bes a g bes a2~
	a4 bes2 c8 bes
	a4 f g e					%95
	f r r cis
	d r r2
	R1
	r4 d d'2~
	d4 c8 bes a g fis e			%100
	d cis d e fis d e fis
	g fis g a bes g a bes
	bes4( a) r8 a g a
	bes d c bes c bes a g
	f bes aes g aes g f ees		%105
	d2 ees4 f
	bes, b c d
	ees1~
	ees8 g f ees f ees d c
	a'1~						%110
	a8 bes a g bes a g fis
	g4 r r2
	R1
	r8 b, c d ees c d e
	f1~							%115
	f2 e
	d4. c8 bes2
	a4 r r2
	d1
	a'							%120
	f
	d
	cis
	d2 e
	f1~							%125
	f4 g f ees
	d2 r4 d
	e cis d2~
	d cis
	a1\fermata					%130

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	%\set Staff.midiInstrument = "harpsichord"

	R1*21						%1 to 21
	r4 a a'2~
	a4 gis8 fis e d c b
	a gis a b c a b c
	d cis d e f d e f			%25
	f4( e) r8 e d e
	f a g f g f e d
	c f e d e d cis b
	a4 bes!8 a bes2~
	bes4 c8 bes c2~				%30
	c4 r r2
	R1*3						%--
	r4 d, d'2~					%35
	d4 cis8 b a g f e
	d cis d e f d e f
	g fis g a bes g a bes
	bes4( a) r8 a g a
	bes d c bes c bes a g		%40
	f bes a g a g f e
	d2 r8 d e f
	g a g f g f e d
	e f e d e c d e
	f1							%45
	c'
	a
	f
	e
	f2 g						%50
	a1~
	a4 bes a g
	f d' c b
	a f' e d
	c2 b						%55
	a g
	f8 bes a g a g f e
	f g f e f e d cis
	d2 r
	R1*13						%--
	a'1		
	e'
	c							%75
	a
	gis
	a2 b
	c1~
	c4 e c b					%80
	a8 gis a b c a b c
	d cis d e fis d e fis
	g, fis g a b g a b
	c b c d e c d e
	f,4 e fis d					%85
	g fis gis e
	a bes8 a bes4 g~
	g8 g' f e f e d cis
	d e, f g a g a b
	cis b cis d cis d e4~		%90
	e d a2~
	a4 f bes d
	g, bes e,8 g f e
	d4 r r2
	r4 a' bes2					%95
	c4 r r g
	a e f a
	bes8 c bes a bes a g fis
	g1
	d'							%100
	bes
	g
	fis
	g2 a
	bes1~						%105
	bes4 c bes aes
	g1~
	g4 g a bes
	c1~
	c8 ees d c d c bes a		%110
	bes2 c4 a
	bes c bes a
	g2 a4 b
	c r r2
	R1							%115
	r8 c bes a g bes a g
	f4 r r2
	R1
	r4 d d'2~
	d4 cis8 b a g f e			%120
	d cis d e f d e f
	g fis g a bes g a bes
	bes4( a) r8 a g a
	bes d c bes c bes a g
	f bes a g a g f e			%125
	d2 r4 a'
	bes2 r4 bes
	cis, g' f bes
	a2. g4
	fis1\fermata				%130

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	%\set Staff.midiInstrument = "harpsichord"

	R1*14						%1 to 14
	r4 d d'2~					%15
	d4 cis8 b a g f e
	d cis d e f d e f
	g fis g a bes g a bes
	bes4( a) r8 a g a
	bes d c bes c bes a g		%20
	f bes a g a g f e
	d g f e f e d c
	d4 b e2
	a, r
	r8 g' f e d c b a			%25
	gis4.\trill fis16 gis a8 g f e
	d4 d' e c
	f b, cis a
	d2 r4 d
	e2 r4 c						%30
	f8 a g f g f e d
	g bes a g a g f e
	a2 r4 bes
	g e a a,
	bes f' bes2					%35
	a r
	R1*22						%--
	r4 d,, d'2~
	d4 cis8 b a g f e			%60
	d cis d e f d e f
	g fis g a bes g a bes
	bes4( a) r8 a g a
	bes d c bes c bes a g
	f bes a g a g f e			%65
	d2 r
	r4 d e f
	g g' e g
	c, c, d e
	f a' d, f					%70
	b, d gis, b
	e, e' fis gis
	a1~
	a8 gis a fis gis!4 b
	b( a) r e					%75
	f1
	e 
	R1*2						%--
	r8 d c b c b a gis			%80
	a4 r r2
	R1*7						%--
	d1 									
	a'							%90
	f			
	d
	cis
	d2 e
	f1~							%95
	f4 g f e
	d1~
	d8 ees d c d c bes a
	bes2 r4 bes'
	fis a fis d					%100
	g2 d
	ees4 f e ees
	d2 r8 c bes a
	g4 r r2
	r4 ees' d g					%105
	f8 aes g f g f ees d
	ees f ees d ees d c b
	c d c bes! c bes a g
	a bes a g a g fis e
	fis2 r4 fis'				%110
	g ees c d
	g, r r2
	r4 f' ees d
	c r r2
	r8 e f g a f g a			%115
	bes4 r r2
	r8 g f e d f e d
	cis4 e cis a
	d c! bes2
	a r4 a						%120
	bes1~
	bes2 r8 e f g
	a, e' a g f4 e
	d2 r4 cis
	d2 r4 a						%125
	bes2 r4 c
	bes8 c bes a bes a g f
	e4 e' f g
	a g a a,
	d1\fermata					%130
	
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

