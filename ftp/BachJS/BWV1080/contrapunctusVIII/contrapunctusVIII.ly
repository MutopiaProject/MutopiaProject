\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus VIII"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus VIII"
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
lastupdated = "2006/Apr/17"

 footer = "Mutopia-2006/04/18-739"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	%\set Staff.midiInstrument = "harpsichord"

	R1*10						%1 to 10
	r2 d
	c4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4
	d, d'( c bes)				%15
	a f'( e d)
	cis2 r4 cis8( d16 e)
	a,8 d c! bes c a bes g
	a1~
	a8 a g f g e f d'			%20
	f,4\prall e r8 cis' d4~
	d8 b a g a c b4~
	b8 gis fis e fis a gis b
	a c b d c2~
	c8 ees d c d bes c a		%25
	bes1~
	bes8 d c bes c a bes g
	a4 d gis, g
	f bes e, ees
	d g cis, c~					%30
	c8 c bes a bes d c ees
	d a' g fis g bes a c
	bes2~ bes8 g a f
	g2 r4 cis
	d8 g, f e f a g bes			%35
	a e d cis d f e g
	f c b a b d cis e
	d f e g f e d cis
	\appoggiatura cis8 d2 d'
	c4 f b, bes					%40
	a d g,2\prallmordent
	f4 g a8 g a4
	d,2 r4 ees'~
	ees8 cis d d d b c c
	c a bes! bes bes a g fis	%45
	g2. f!4~
	f8 g f ees d ees c d
	e! c' bes a g a f g
	a g f e d e c d
	b4 g' a bes!				%50
	gis e' r2
	r8 e d c b c a b
	cis4 d e8 d e4
	a, bes8 a g f g4~
	g8 c, d e f e g f			%55
	e2 r4 a~
	a8 d, e f g f a g
	f2 r4 d'~
	d c2 bes4~
	bes a g2					%60
	f8 c' d e f2
	e4 a d, des
	c f g,2\prallmordent
	a4 bes c8 bes c4
	f, r r bes~					%65
	bes8 a b c d c d4
	g,8 b c d e f g g
	g e f f f d ees ees
	ees cis d d d c bes a
	bes f bes2 a4				%70
	bes8 f' ees d c d bes c
	d4 g2 fis4
	g8 d c bes a bes g a
	bes2 a
	d4 g, f2					%75
	ees d4 ees
	cis d g2~
	g8 e f f e4 a
	d4. e8 cis4 d
	b c! r bes					%80
	gis a r d
	c f b, bes
	a d g,2\prallmordent
	fis4 g a8 g a4
	d,8 e fis g a( g) bes( a)	%85
	c( b) d( cis) e( d) f( e)
	g d cis e a,4 g'
	f a d,8 e f f
	f dis e e e cis d d
	d b c! c c a bes bes		%90
	bes g cis cis cis g e'e
	e cis d4 r16 c[ bes a] g f' e d
	cis2 r8 a b cis
	d( cis) e d f4 bes,~
	bes8 a d c ees d fis, c'	%95
	bes d ees g f d e cis
	cis d d,4 d' e
	cis d g2~
	g8 e f f f2~
	f8 e a a a4 gis				%100
	a d,8 b c4 b
	a r r2
	r4 c'8 a b gis a fis
	gis e r4 r2
	r4 e a, b					%105
	r c d e
	r f e d
	r c8 b c4 d
	e1~
	e8 a,8 c ees d bes c a		%110
	bes4 r8 g' fis4 f
	r8 ees d c d4 ees~
	ees8 d cis d e fis g g
	g e f! f f d ees ees
	ees cis d d d b c c 		%115
	c a bes! bes bes g aes aes
	aes fis g2 fis4
	g2 fis8 g a4~
	a g8 g g e f f 
	ees4 a8 a a g bes bes		%120
	a4 d8 d d b c c
	b4 e fis gis
	a b e, gis
	a2 r
	r4 a8 a a f g g				%125
	g e f f f e d cis
	d f e d cis d b cis
	d a bes! g e4 g~
	g8 g f e fis d' gis, b~
	b b a gis a f' b, d~		%130
	d d c b cis a' d, f
	b,4 e a a,
	g c f f,
	e8 e' d c b c a b
	c e d f e4 d~				%135
	d c b cis
	d8 a g f e d e4
	d8 e f g a g bes a
	bes2 b\prallmordent
	c r							%140
	r8 f e d c d bes c
	a c bes a g a f g
	a2 g
	f e
	d4 r r2						%145
	R1
	r2 f'
	e4 a dis, d
	c f bes,2\prallmordent
	a4 bes c8 bes c4			%150
	f, f'~ f8 e d f
	e4 a8 gis a4 dis,
	e g cis, d
	r e f g
	r a g f						%155
	r e8 d e4 fis
	g8 d e fis g fis a g
	bes a g f ees d ees ees
	ees cis d d d b c c
	c a bes! bes bes a g fis	%160
	g bes a g fis g e fis
	g d g4~ g8 bes a c
	bes1~
	bes4 a8 g a4 d~
	d8 c b d cis d e4~			%165
	e8 d cis e d e f4~
	f8 e d f e d cis b
	cis4 f b,8 d cis e
	a,4 a'8 a a fis g g
	g e f! f f d e e 			%170
	e4 a, d, e
	r f g a
	r bes a g
	r f8 e f4 g
	a8 g fis a d,4 d'~			%175
	d8 c bes d g,4 c~
	c8 bes a c bes4 bes~
	bes16[ c bes a] g bes c d ees[ f ees d] cis d e f
	g[ a g f] e f g a bes8[ a16 g] f e d cis
	d2. cis4					%180
	d c! b8 g' g fis
	fis a a g g f ees d
	cis4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4				%185
	d,1~
	d16[ b cis d] e f g e cis4.\trill d8 
	d2 r
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	%\set Staff.midiInstrument = "harpsichord"

	r2 d						%1
	c4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4
	d, d'( c b)					%5
	c f( e dis)
	e2 r8 d! c b
	c2 r8 b a gis
	a c b d gis, f' e d
	c b c e a d, cis e			%10
	d f e g f c b f'
	e4 c d g
	c, a b e
	a,8 c bes! d c2~
	c8 bes a g a f g e			%15
	f c'' bes a bes g a f
	e4 bes' a g
	f e, f g~
	g8 g' f e f d e cis
	d1~							%20
	d4 cis a'2
	g4 c fis, f
	e a d,2\prallmordent
	c4 d e8 d e4
	a, fis g a~					%25
	a8 a' g fis g e f d
	e4 f g e
	f a r8 b, cis e
	a,4 f' r8 g, a c
	f,4 d' r8 e, fis a			%30
	d,4 fis g a
	bes a bes c
	d8 f e d cis4 d
	e8 d cis b cis4 e
	a \clef bass cis,, d bes'	%35
	e, a2 g4
	c, f2 e4
	a r r g
	\appoggiatura g8 f2 \clef alto r4 bes'~
	bes8 gis a a a fis g g		%40
	g e f! f f e d cis
	d2. c!4~
	c8 c bes a bes d c bes
	a4 r g'2
	f4 d ees2~					%45
	ees8 d c bes a bes g a
	b4 c2 bes4~
	bes8 a g f e f d e
	f4 r a'2 
	g4 c fis, f					%50
	e a d,2\prallmordent
	c4 d e8 d e4
	a,2 r4 g~
	g8 f g a bes a c bes
	a2 r4 d~					%55
	d8 g, a bes c bes d c
	bes2 r4 e~
	e8 cis d e f e g f
	e2 d
	c4 f2 e4					%60
	f2 r4 d'~
	d8 b c c c a bes bes
	bes gis a a a g f e
	f2. ees4~
	ees8 d e! f g f g4			%65
	c, d8 e f e f4
	e r r d
	c a' bes bes,
	a f' g g,
	f8 f' ees d c d bes c		%70
	d4 r r2
	r4 bes' a2
	d,4 g2 fis4
	g8 d g g g e! f! f
	f d ees ees ees cis d d		%75
	d b c! c c bes a g
	a2 b4 cis
	d8 a d4~ d8 b c! c 
	c a bes! bes a4 a'
	g c fis, f					%80
	e a d, b'~
	b8 gis a a a fis g g
	g e f! f f ees d c
	d2 r4 c~
	c bes c d					%85
	g, b cis d
	a r r cis'
	d r r c!
	bes8 bes bes g a a a f
	g g g e f4 d8 g				%90
	e4 r r g8 g
	g e f4 r g
	a2 r
	r4 a d, e
	r f g a						%95
	r bes a g
	r f8 e f4 g
	a2 b4 cis
	d a~ a8 f g g
	g4 e \clef soprano r8 f' e d	%100
	c b a4~ a8 a4 gis8
	a e a gis a c b d
	c e a,4 d c
	b d8 b c a b gis
	a4. g!8 fis4 f~				%105
	f8 d e4 r a~
	a8 gis d' gis, a c b f
	e dis e4 r2
	r8 e gis b a fis g e
	f!4 fis g4. fis8			%110
	g4 r8 d' c a d aes
	g4 aes~ aes8 g fis g
	a!4 bes \clef alto r bes
	a d gis, g
	f bes e, ees				%115
	d g cis, c
	b bes a2\prallmordent
	g4 d'8 d d bes c c
	c a bes bes a4 d8 d
	d b c c bes4 g'8 g			%120
	g e f f e4 a8 a
	\clef soprano a( gis) b( a) c( b) d( c)
	e( d) f( e) d c b c
	a2 r
	r \clef alto d,2			%125
	c4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4
	d, d' c b
	c f e d						%130
	e a g f~
	f8 dis e e e cis d d
	d b c! c c b a gis
	a2. gis4
	a8 c b a gis a fis gis		%135
	a e' a2 g4~
	g8 f e d cis d b cis
	d4 r r fis,
	g8 a bes c d c e d
	e f g a bes a c bes			%140
	c4 r r2
	r8 a g f e f d e
	f c f2 e4~
	e d~ d8 b cis e
	a, b cis d e d f e			%145
	\clef soprano g fis gis a b a c b
	d c b a b c b d
	d b c c c ais b b
	b gis a a a g f e
	f a g f e f d e				%150
	f a c bes c4 r
	r2 c
	b4 e ais, a
	g c f,2\prallmordent
	e4 f g8 f g4				%155
	c, c'~ c8 bes a c
	bes4 a g fis
	g8 f! ees d c4 r
	\clef alto r d g, a
	r bes c d					%160
	r ees d c
	r bes8 a bes4 c
	d8 ees d cis d f e g
	f e f4~ f8 e d f
	e fis g4~ g8 f e g			%165
	f g a4~ a8 g f a
	gis a b2 a8 gis
	a e a a a fis g g
	g e f! d b d cis e
	a,4 d8 c! b4 bes~			%170
	bes8 gis a a a fis g g
	g e f! f f ees d cis
	d f e! d cis d b cis
	d e f g a4 d
	fis, a d fis				%175
	g4. f!8 e4 ees~
	ees8 d c ees d4 d~
	d bes8 bes bes4 g8 g
	g4 bes8 bes e,4 r
	r8 f' f e e g g fis			%180
	fis a a g g4 bes!
	a c bes8 a bes4~
	bes8 gis a a a fis g g
	g e f! f f ees d cis
	d f e! d cis d b cis		%185
	d bes! a g a[ d16 c] bes a g8
	f4 e8 d e f g4~
	g fis r2

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c'{

	%\set Staff.midiInstrument = "harpsichord"

	R1*5						%1 to 5
	r2 a
	g4 c fis, f
	e a d,2\prallmordent
	c4 d e8 d e4
	a, g'( f e)					%10
	f bes( a gis)
	a2 r8 g! f e
	f2 r8 e d cis
	d2 r8 c! bes a
	bes2 c						%15
	f,8 a g f g e f d
	a' g' f e f d e cis 
	d1
	cis4 a' d, f
	bes, a bes g				%20
	a8 a' g f g e f d
	e2 d4 g
	cis, c b e
	a,2 r4 a'8 g
	fis4 d e fis				%25
	g, a bes g
	c d e c
	f,8 g' f e f d e cis
	d ees d c! d bes c a
	bes c bes a bes g a fis		%30
	g1~
	g~
	g8 a g f g e f d
	cis bes' a g a f g e
	f4 a d2						%35
	c4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4
	d,2 r
	R1*2						
	r8 bes'' a g fis g e fis	%42
	g4 d g2
	f4 bes e, ees
	d g c,2\prallmordent		%45
	bes4 c d8 c d4
	g,2 r4 g'
	c,2 r4 c
	f,2 r4 f'~
	f8 dis e e e cis d d		%50
	d b c! c c b a gis
	a2 r4 g'~
	g8 f e d cis d b cis
	d2 r4 e
	f f,8 g a4 b				%55
	c bes a fis'
	g,8 f'! e d cis d b cis
	d e f g a g bes a
	g f a g f e g f
	e f g a bes a c bes			%60
	a g f e d a' c, b
	c1~
	c2 r4 cis
	d8 d' c! bes a bes g a
	bes a g f e f d e			%65
	f e d c b c a b
	c d e f g a bes! g
	a4 d g, ges
	f bes ees,2\prallmordent
	d4 ees f8 ees f4			%70
	bes, bes'2 a4
	bes8 g a bes c bes d c
	bes4 ees c d
	g, ees cis d
	b c a bes					%75
	g aes fis g~
	g8 e f! f f d e e
	d4 r r2
	r4 g'~ g8 e f f
	f dis e e e cis d d			%80
	d b c! c c b a gis 
	a2 r4 d
	cis c b c~
	c8 bes! a g fis g e fis
	g4 g'2 fis4					%85
	g f! e d
	cis8 bes' a g f g e f
	d e c d bes c a bes
	g4 c fis, f
	e a d, g'16 f e d			%90
	cis[ d e f] e d cis b a[ b cis d] cis b a g
	f4 r16 d e32 f g a bes2\downmordent
	a8 a' g f e f d e
	f2 r8 e d cis
	d2 r8 c! bes a				%95
	g4 g' a a,
	bes2 r8 bes' a g
	g e f f f d e e
	d4 d' a b
	r c d e						%100
	r f e d
	r c8 b c4 d
	e1~
	e4 gis,8 f' a, e' b d
	c b c4~ c8 b a gis			%105
	a4. g!8 f e d c
	b4 e, fis gis
	a4. gis8 a c b d
	c2 r4 cis
	d a bes d					%110
	g,8 d' g bes a c b d
	ees, g f aes b, d c ees
	fis, a g bes cis,2
	d1~
	d~							%115
	d~
	d4 d'8 d d b c c
	c a bes! g d'4 d,
	g~ g16 a bes c d4 c16( b a g)
	c4 g16( fis e d) g4 g'16( f! e d)	%120
	cis4 d16( c b a) gis4 a16( g f e)
	d4 c d e
	f d e e'
	a,8 e' a a a f g g
	g e f f f d bes'4			%125
	a d gis, g
	f bes e,2~
	e4 d2~ d8 cis
	d4 r r2
	R1							%130
	r2 a'
	g4 c fis, f
	e a d,2\prallmordent
	c4 d e8 d e4
	a, r r b					%135
	c8 b c d e d f e
	f d g2 f8 e
	f4 a fis d
	g2 r4 g
	c,8 c' bes a g a f g		%140
	a bes c d e d f e
	f4 bes, c c,
	f8 g a bes c b d cis
	d b, cis d e d f e
	g f e d cis d b c			%145
	d c! b a gis a fis gis
	a4 a'2 gis4
	a c fis, gis
	\clef tenor r a bes! c
	r d c bes					%150
	r a8 g a4 b
	c8 d c b a c fis a
	a fis g g g e f f
	f dis e e e d c b
	c e d c b c a b				%155
	c d c bes! a4 d
	g c, bes a
	g2 \clef bass r8 bes a g
	f4 bes e,! ees
	d g c,2						%160
	bes4 c d8 c d4
	g,2 r
	r4 g'8 a g4 cis,
	d d'~ d8 c bes a
	g4. f8 e d cis bes'			%165
	a4. g8 f e d c'
	b4. a8 gis b e,4
	a1~
	a
	r2 d,						%170
	c4 f b, bes
	a d g,2\prallmordent
	f4 g a8 g a4
	d, d'~ d8 c bes d
	c4 c'~ c8 bes a c			%175
	bes4 bes,~ bes8 a g bes
	a4 a'~ a8 g fis a
	g4 g8 g g4 e8 e
	e4 cis8 cis cis4 r
	r gis' a a,					%180
	d1~
	d2 r
	r4 a d, e
	r f g a
	r bes a g					%185
	r f8 e f4 g
	a1
	d,2\fermata r
	
	\bar "|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key d \minor}

\score{
    \context StaffGroup <<
	\new Staff <<\global \clef soprano \soprano>>
	\new Staff <<\global \clef alto \alto>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \midi {\tempo 4=100}
  \layout{}
}

