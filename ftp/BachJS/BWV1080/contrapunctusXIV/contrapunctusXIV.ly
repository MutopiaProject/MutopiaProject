\version "2.8.1"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus XIV - Canon alla Decima"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XIV - Canon alla Decima"
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

 footer = "Mutopia-2006/05/03-749"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

right = \relative c''{

	R1*12/8*4													%1 to 4
	c4*3/2 f,2*3/2 a4*3/2~										%5
	a c2*3/2 d4*3/2~
	d c2*3/2 bes4*3/2~
	bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
	c8 bes! c d c bes a bes g f g e
	f c' f e f d c d bes a bes g								%10
	a f g a c bes c d e f g e
	f f, f'~ f e g f g a g a f
	e4*3/2 a,2*3/2 c4*3/2~
	c e2*3/2 f4*3/2~ 
	f e2*3/2 d4*3/2~											%15
	d c~ c8.*4/3 b16*2 c8.*4/3 d16*2
	e8 d e~ e f g f g a g a bes
	a bes c bes c d c bes c~ c a f
	d c d~ d bes' d, c bes c~ c a' c,
	bes a bes~ bes g' bes, a g a~ a g f							%20
	bes8.*4/3 g16*2 e4*3/2 r e'~
	e8 d16 cis b a g'4*3/2~ g8.*4/3 e16*2 a4*3/2~
	a gis g fis
	f! e~ e8.*4/3 a16*2 d,8 e f~
	f e16 d e8 r d'16 c bes a g a bes a g f e8 g bes			%25
	cis, e g r e f g a bes~ bes16 a g a bes g
	a g f e f8~ f e dis e16 d c d ees8~ ees d cis
	d16 c! bes c des8~ des c b c4.*4/3 r16*2 b'
	c8.*4/3 c,16*2 f4*3/2~ f8 e f bes4*3/2~
	bes8 a16 g f e d'4*3/2~ d8.*4/3 f,16*2 e8 f g~				%30
	g c f, bes4*3/2~ bes8.*4/3 c,16*2 a'4*3/2~
	a8.*4/3 bes,16*2 g'4*3/2~ g8 f e f g a
	g cis, r r16 d' cis b a g f4*3/2~ f16 a bes a g f
	e8 f g a16 g f g a8 b cis d~ d c b!
	c16 b a gis a8~ a bes a g fis g~ g f16 e d cis				%35
	f8 e f~ f g f e f g c, e d
	e16 f g a bes g a bes c8 e, f16 a g f e d c8 e g
	c2*3/2~ c8 bes a g4*3/2~
	g8.*4/3 c16*2 f,4*3/2~ f8.*4/3 d'16*2 e,8 g cis
	
	\bar "||"
	
	a,4*3/2 d,2*3/2 f4*3/2~										%40
	f a2*3/2 bes4*3/2~
	bes a2*3/2 g4*3/2~
	g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
	a8 g a bes a g f g e d e cis
	d a' d c! d bes a bes g f g e								%45
	f d e f a g a b cis d e cis
	d d, d'~ d cis e d e f e f d
	c4*3/2 f,2*3/2 a4*3/2~
	a c2*3/2 d4*3/2~
	d c2*3/2 bes4*3/2~											%50
	bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
	c8 b c~ c d e d e f e f g
	f g a g a bes a g a~ a f d
	bes a bes~ bes g' bes, a g a~ a f' a,
	g f g~ g e' g, f e f~ f e d									%55
	g8.*4/3 e16*2 c4*3/2 r c'~
	c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
	f e ees d
	des c~ c8.*4/3 f16*2 b,8 c d~
	d c16 b c8 r bes'!16 a g f e f g f e d c8 e g				%60
	a, c e r c d e f g~ g16 f e f g e
	f e d cis d8~ d c b c16 b! a b c8~ c bes a
	bes16 a g a bes8~ bes a gis \appoggiatura gis16 a4.*4/3 r16*2 gis'
	a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~
	g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~		%65
	e a d, g4*3/2~~ g8.*4/3 a,16*2 f'4*3/2~
	f8.*4/3 g,16*2 e'4*3/2~ e8 d cis d e f
	e a, r r16 bes' a g f e d4*3/2~ d16 f g f e d
	cis8 d e f16 e d e f8 g a bes~ bes a g
	a16 g f e f8~ f g f e dis e~ e d16 c bes a					%70
	d8 cis d~ d e d cis d e a, cis b
	cis16 d e f g e f g a8 cis,! d16 f e d cis! b a8 cis e
	a2*3/2~ a8 g f e4*3/2~
	e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 cis,8 e a
	a,8.*4/3 d16*2 bes4*3/2~ bes8 a g a4*3/2~					%75
	a8 e' cis r \appoggiatura bes'16 a8 g \appoggiatura a16 f4*3/2~ f16 a g f e d
	cis b a b cis d e d e f g e f d e f g a bes! a g f e d
	cis e g bes a g a g f e d c bes c bes a g f g bes a g f e
	f16*3/2 g( f e) f-. bes( a g) a-. d( cis b) cis-. f( e d)
	e f32*3/2 g f e d cis d f g a bes16*3/2 d, cis a d cis d4*3/2~	%80
	d4.*3/2\fermata d,16*3/2 e e2*3/2\prall
	d1*3/2\fermata

}

% Left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

left = \relative c'{

	a4*3/2 d,2*3/2 f4*3/2~										%1
	f a2*3/2 bes4*3/2~
	bes a2*3/2 g4*3/2~
	g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
	a8 g a bes a g f g e d e cis								%5
	d a' d c d bes a bes g f g e
	f d e f a g a bes c d e cis
	d d, d'~ d cis e d e f e f d
	c4*3/2 f,2*3/2 a4*3/2~
	a c2*3/2 d4*3/2~											%10
	d c2*3/2 bes4*3/2~
	bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2
	\clef treble c8 b c~ c d e d e f e f g
	f g a g a bes a g a~ a f d
	\clef bass bes a bes~ bes g' bes, a g a~ a f' a,			%15
	g f g~ g e' g, f e f~ f e d
	g8.*4/3 e16*2 c4*3/2 r c'~
	c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
	f e ees d
	des c~ c8.*4/3 f16*2 b,8 cis d~								%20
	d cis16 b cis8 \clef treble r bes'!16 a g f e f g f e d cis8 e g
	a, cis e r cis! d e f g~ g16 f e f g e
	f e d cis d8~ d cis b cis16 b a b c8~ c b! a
	b16 a g a bes8~ bes a gis a4.*4/3 r16*2 gis'
	a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~						%25
	g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~
	e a d, g4*3/2~~ g8.*4/3 a,16*2 f'4*3/2~
	f8.*4/3 g,16*2 e'4*3/2~ e8 d c d e f
	e a, r r16 bes' a g f e d4*3/2~ d16 f g f e d
	cis8 d e f16 e d e f8 g a bes~ bes a g						%30
	a16 g f e f8~ f g f e d e~ e d16 c bes a
	d8 cis d~ d e d cis! d e a, cis b
	cis16 d e f g e f g a8 cis,! d16 f e d cis! b a8 cis e
	a2*3/2~ a8 g f e4*3/2~
	e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 cis,8 e a			%35
	a,8.*4/3 d16*2 bes4*3/2~ bes8 a g a4*3/2~
	a8 e' c r \appoggiatura bes'16 a8 g \appoggiatura a16 f4*3/2~ f16 a g f e d
	c bes a bes c d e d e fis g e fis d e fis g a bes a g f e d
	c e g bes a g a g f e d c \clef bass bes c bes a g f g bes a g f e
	
	\bar "||"
	
	f d e f g a bes8 a g f g e d e cis							%40
	d16 e f g a bes c8 d bes a bes g f g e
	f16 a bes c d e f8 g e d cis d e f d
	cis b cis d e c bes2*3/2\prallprall
	a4*3/2 d,2*3/2 f4*3/2~
	f a2*3/2 bes4*3/2~											%45
	bes a2*3/2 g4*3/2~
	g f~ f8.*4/3 e16*2 f8.*4/3 g16*2
	a8 g a bes a g f g e d e cis
	d a' d c d bes a bes g f g e
	f d e f a g a bes c d e cis									%50
	d d, d'~ d cis e d e f e f d
	c4*3/2 f,2*3/2 a4*3/2~
	a c2*3/2 d4*3/2~
	d c2*3/2 bes4*3/2~
	bes a~ a8.*4/3 g16*2 a8.*4/3 b16*2							%55
	\clef treble c8 b c~ c d e d e f e f g
	f g a g a bes a g a~ a f d
	\clef bass bes a bes~ bes g' bes, a g a~ a f' a,
	g f g~ g e' g, f e f~ f e d
	g8.*4/3 e16*2 c4*3/2 r c'~									%60
	c8 bes16 a g f e'4*3/2~ e8.*4/3 c16*2 f4*3/2~
	f e ees d 
	des c~ c8.*4/3 f16*2 b,8 c d~
	d c16 b c8 \clef treble r bes'!16 a g f e f g f e d cis8 e g
	a, cis! e r cis d e f g~ g16 f e f g e						%65
	f e d cis d8~ d cis! b cis16 b a b c8~ c b a
	b16 a g a bes8~ bes a gis a4.*4/3 r16*2 gis'
	a8.*4/3 a,16*2 d4*3/2~ d8 cis d g4*3/2~
	g8 f16 e d cis bes'4*3/2~ bes8.*4/3 d,16*2 cis!8 d e~
	e a d, g4*3/2~ g8.*4/3 a,16*2 f'4*3/2~						%70
	f8.*4/3 g,16*2 e'4*3/2~ e8 d cis d e f
	e a, r r \appoggiatura bes'16 a g f e d4*3/2~ d16 f g f e d
	cis8 d e f16 e d e f8 g a bes~	bes a g
	a16 g f e f8~ f g f e d e~ e d16 cis b a
	d8 cis d~ d e d cis! d e a, cis b							%75
	cis16 d e f g e f g a8 cis, d16 f e d cis! b a8 cis e
	a2*3/2~ a8 g f e4*3/2~
	e8.*4/3 a16*2 d,4*3/2~ d8.*4/3 bes'16*2 cis,8 e a
	\clef bass a,8*3/2 d,4*3/2 f a [bes8*3/2~
	bes] a4*3/2 g f8*3/2~ f16*3/2 e f g							%80
	\override TextScript #'padding = #1 a2*3/2_\fermata^\markup{\small \bold Cadenza} a,
	d,1*3/2\fermata

	\bar "|."
	
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 12/8 \key d \minor}

\score{	\context PianoStaff <<
        \context Staff = "Upper" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef treble \right}
        \context Staff = "Lower" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef bass \left}
        >>
        \layout{}
		\midi{\tempo 4=110}
}



