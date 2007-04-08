\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \column{
	\line{\bold \huge "Contrapunctus XV"}
	\line{\italic "Canon per Augmentationem in Contrario Motu"}}}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XV - Canon per Augmentationem in Contrario Motu"
mutopiacomposer = "BachJS"
mutopiaopus = "BWV 1080"
mutopiainstrument = "Harpsichord, Piano"
date = "?-1750"
source = "Breitkopf & Härtel, 1885"
style = "Baroque"
copyright = "Public Domain"
maintainer = "Arnaud Gossart"
maintainerEmail = "arnaud.gossart@tiscali.fr"
maintainerWeb = "http://arnaud.gossart.chez-alice.fr/"
lastupdated = "2006/Apr/29"

 footer = "Mutopia-2006/05/03-750"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

right = \relative c'{

	d8 bes' a2 g4											%1
	f8 e16 d ees2 d4
	cis8( d16 e!) d2 e4
	f8 a, g'2 f8 e
	f16 g a4 g8 f[ d'] g, e'								%5
	a, f' b, d c bes g' bes,
	a16 ees' d4 c8 bes[ g'] c, a'
	d, bes' e, g f ees c' ees,
	d d,4 e8 f a d f
	g,[ e'] f, d' e, cis' d e								%10
	a, d16 c bes8 a g g'16 f e8 d
	cis e16 d cis8 b a[ a'16 g] f e d cis!
	d4 r d,8 bes'4 a16 g
	a f d4 e16 f g e cis4 d16 e
	f e d4 d'8( ees e f fis									%15
	g gis a bes~ bes) a16 g a8 e
	f16 e d4 c16 b c8 f4 e16 d
	e c a4 b16 c d b gis4 a16 b
	c b a4 a,8( bes! b c cis
	d dis e f~ f) e16 d e8 b								%20
	c16 b a8 r c' d, bes'! e, \slurUp bes'~(
	bes16 a g a bes a bes b c b c cis d8)[ \slurNeutral d,]
	\appoggiatura e d( cis) r e \appoggiatura f e( d) r f
	\appoggiatura g f e4 d'8~ d[ cis16 d] e8 g,~
	g f16 e f4~ f8 e16 d c8 b								%25
	c c'16 b c4~ c8 bes16 a g8 fis
	g g'16 fis g4~ g8 f4 e8
	f8 bes16 a bes4~ bes16 a( g f e d cis d)
	cis( f e dis e d cis d c b c bes a bes a gis
	a8) \slurDown cis,16( d e8) e16( f g a bes4) a16 g \slurNeutral	%30
	f e d e f g a b cis b a b cis d e f
	g f e f g a bes a g f e d cis d e8~
	e d4 c!16 b c8 f4 e16 dis
	e8 b4 cis8 d a4 b!8
	c g4 a8 bes!16[ a g8~] g16 a g fis						%35
	g8 a, r g'~ g f16 e d cis e8~
	e16 d d'4 c16 b c8 bes16 a g fis a8~
	a16 g a bes c bes a8 ees' d4 c8
	bes16[ c d e!] fis e d8 bes' a4 g8
	fis16 g a bes c ees, d c fis!4.\prallprall e16 fis		%40
	g4~ g16 f!( e g f e d cis c bes! a gis)
	a8 a' d, fis g, g' c, e
	f, f' b, d e, e' a,16 cis d ees
	d b c4 c8~ c bes4 a8~
	a g4 f16 e f8 bes16 a g f e d							%45
	cis d e8 r e~ e16 f e d e f g a
	bes a g fis g4~ g16 a g fis g4~
	g16[ a g fis] g8 g'~ g16[ d cis b] a cis e g
	f[ e d cis] d8 bes a16 g ees'4 d8~
	d[ cis16 b] cis8 a g16 f d'4 c8~						%50
	c[ b16 a] b8 g f16[ e g bes] cis g f e
	d[ b cis8~] cis16 d e f e cis bes'!4 a16 g
	
	\bar "||"
	
	f8 e f d cis2\prall
	d4 r r2
	R1*2					%--
	a''4 cis, d2~
	d e
	fis4 g8 a g2~
	g a						%60
	bes4 a8 g a2~
	a g
	f4 d' e,2~
	e f4 g
	f8 e d2 e4				%65
	f a, e' g,
	d' f, c' a
	b c e, cis'
	d8 gis, a2 b4
	c e, b' d,				%70
	a' c, g' e
	fis g b, gis'
	a a'2 g4
	f d a f
	e' g, f' a,				%75
	g' bes, a g
	d' a8 b c4 d
	e e,8 fis g4 a
	bes g8 a b4 cis
	d d,8 e f g a bes		%80
	a2 r
	a'4 cis,2 d8 e
	d f a2 g8 f
	e g bes2 a8 g
	fis gis a2 a,4			%85
	gis g fis f
	e ees d cis~
	cis d8 e d4 g
	fis8 gis a2 bes!8 c
	bes4 fis2 g8 a			%90
	g bes d2 c8 bes
	a c ees2 d8 c
	b cis d2 d'4 
	cis c b bes
	a gis g fis~			%95
	fis g8 a g4 c
	b8 cis d4 r bes,!
	a' cis, g' cis,!~
	cis8 d e d cis d cis c
	b c b bes a4 a'			%100
	a( bes) r g
	gis( a) r f
	fis( g2) a,4~
	a bes!8 a g4 e'
	d8 bes' a2 g4			%105
	f8 e16 d ees2 d4
	cis8 d16 e! d2 e4
	f8 a, g'2 f8 e
	d1\fermata

}

% Left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

left = \relative c'{

	R1*4					%1 to 4
	a4 cis, d2~				%5
	d e
	fis4 g8 a g2~
	g a
	bes4 a8 g a2~
	a g						%10
	f4 d' e,2~
	e f4 g
	f8 e d2 e4
	f a, e' g,
	d' f, c' a				%15
	b c e, cis'
	d8 gis, a2 b4
	c e, b' d,
	a' c, g' e
	fis g b, gis'			%20
	a a'2 g4
	f d a f
	e' g, f' a,
	g' bes, a g
	d' a8 b c4 d			%25
	e e,8 fis g4 a
	bes g8 a b4 cis
	d d,8 e f g a bes
	a2 r
	a'4 cis,2 d8 e			%30
	d f a2 g8 f
	e g bes2 a8 g
	fis gis a2 a,4
	gis g fis f
	e ees d cis~			%35
	cis d8 e d4 g
	fis8 gis a2 bes!8 c
	bes4 fis2 g8 a
	g bes d2 c8 bes
	a c ees2 d8 c			%40
	b cis d2 d'4 
	cis c b bes
	a gis g fis~
	fis g8 a g4 c
	b8 cis d4 r bes,!		%45
	a' cis, g' cis,!~
	cis8 d e d cis d cis c
	b c b bes a4 a'
	a( bes) r g
	gis( a) r f				%50
	fis( g2) a,4~
	a bes!8 a g4 e'

	\bar "||"
	
	d8 bes' a2 g4
	f8( e16 d) ees2 d4
	cis8( d16 e!) d2 e4										%55
	f8 a, g'2 f8 e
	f16 g a4 g8 f[ d'] g, e'
	a, f' b, d c bes g' bes,
	a16 ees' d4 \clef treble c8 bes[ g'] c, a'
	d, bes' e, g f ees c' ees,								%60
	d \clef bass d,4 e8 f a d f
	g,[ e'] f, d' e, cis' d e
	a, d16 c! bes8 a g g'16 f e8 d
	cis e16 d cis8 b a[ a'16 g] f e d cis!
	d4 r d,8 bes'4 a16 g									%65
	a f d4 e16 f g e cis4 d16 e
	f e d4 \clef treble d'8( ees e f fis
	g gis a bes~ bes) a16 g a8 e
	f16 e d4 c16 b c8 f4 e16 d
	e c a4 b16 c d b gis4 a16 b								%70
	c b a4 \clef bass a,8( bes! b c cis
	d dis e f~ f) e16 d e8 b
	c16 b a8 r c' d, bes'! e, bes'~
	bes16 a g a bes a bes b c b c cis d8[ d,]
	\appoggiatura e d( cis) r e \appoggiatura f e( d) r f	%75
	\appoggiatura g f( e4) d'8~ d cis16 d e8 g,~
	g f16 e f4~ f8 e16 d c8 b
	c c'16 b c4~ c8 bes16 a g8 fis
	g[] \clef treble g'16 fis g4~ g8 f4 e8
	f8 bes16 a bes4~ bes16 a( g f e d cis d)				%80
	cis( f e dis e d cis d c b c bes a bes a gis
	a8[]) \clef bass cis,16( d e8) e16( f g a bes4) a16 g
	f e d e f g a b cis b a b \clef treble cis[ d e f]
	g f e f g a bes a g f e d cis d e8~
	e d4 c!16 b c8 f4 e16 dis								%85
	e8 b4 cis8 d \clef bass a4 b!8
	c g4 a8 bes!16[ a g8~] g16 a g fis
	g8 a, r g'~ g f16 e d cis e8~
	e16 d d'4 c16 b c8 bes16 a g fis a8~
	a16 g a bes c bes a8 ees' d4 \clef treble c8			%90
	bes16[ c d e!] fis e d8 bes' a4 g8
	fis16 g a bes c ees, d c fis!4.\prallprall e16 fis
	g4~ g16 f! e g f e d cis c bes! a gis
	a8 a' d, fis g, g' c, e
	\clef bass f, f' b, d e,[ e'] a,16 cis d ees			%95
	d b c4 c8~ c bes4 a8~
	a g4 f16 e f8 bes16 a g f e d
	cis d e8 r e~ e16 f e d e f g a
	bes a g fis g4~ g16 a g fis g4~
	g16[ a g fis] g8 g'~ g16[ d cis b] a cis e g			%100
	f[ e d cis] d8 bes a16 g ees'4 d8~
	d cis16 b cis8 a g16 f d'4 c8~
	c b16 a b8 g f16 e g bes cis g f e
	d[ b cis8~] cis16 d e f e cis bes'!4 a16 g
	f8 e f d cis2\prall										%105
	d4. c16 b c8[ bes16 a] bes8 g'16 fis
	g4. f!16 e f8 e16 d cis8[ a'16 gis]
	a8[ d16 c] bes8 a16 g a4 a,
	d1\fermata
	
	\bar "|."
	
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key d \minor}

\score{	\context PianoStaff <<
        \context Staff = "Upper" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef treble \right}
        \context Staff = "Lower" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef bass \left}
        >>
        \layout{}
		\midi{\tempo 4=100}
}



