\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus XII - Canon alla Ottava"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XII - Canon alla Ottava"
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
lastupdated = "2006/Apr/28"

 footer = "Mutopia-2006/04/28-746"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Some macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

autoBeam = {#(override-auto-beam-setting '(end * * * *) 3 16)
			#(override-auto-beam-setting '(end * * * *) 6 16)}

higher = \override Script #'padding = #1
			
% Right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

right = \relative c''{

	\autoBeam

	a8. d,16 cis d e d e						%1
	f e f g f g a g a
	bes8-. r16 a8-. r16 g8-. r16
	\appoggiatura g8 f8.~ f8 e16 f8 g16
	
	\repeat volta 2{
	
	a8 g'16 f8 a,16 g8 e'16						%5
	d8 f,16 e8 d'16 cis8 e,16
	e d cis d e f g a bes
	bes a g a b cis d e f
	f d e e cis d d b c
	c a bes! bes g a a f g						%10
	\appoggiatura g8 f8.~ f16 g a bes a g
	\appoggiatura d'8 cis8.~ cis16 d e f e d
	\higher gis4.~\downprall gis8.
	a8 r16 r8 cis,16 d8 e16
	a, b cis d e f g,8.~						%15
	g16 g' f e d cis d8.~
	d16 b cis d e f e f d
	cis d e a,8.~ a16 bes g 
	f g e f a d c bes a
	bes d g cis, e a, bes a g					%20
	f g e f8 d'16 g,8 f16
	e a g f e d cis8.\prallprall
	d8 r16 r8. r8.
	R1*9/16
	d'8. a16 gis a b a b						%25
	c b cis d cis d e d e
	f8-. r16 e8-. r16 d8-. r16
	\appoggiatura d8 cis8.~ cis8 a16 b8 cis16
	d c! b c8 a'16 gis8 d16
	e8 g!16 f e d cis8 bes'16					%30
	a f d d g c, c f bes,
	bes a g a cis e g f e
	f e d e d c d c b
	c d e d e f e f g
	f d a' bes, e g a, d f						%35
	g, cis e f, a g bes a cis!
	d e f gis,4.\lineprall
	a8 r16 r8 b16 c8 a16
	d8 f16 f e d c d b
	e8.[ a,8.] r8.								%40
	a e'16 f e d e d
	c d c b c b a b a
	gis8-. r16 a8-. r16 b8-. r16
	\appoggiatura b8 c8.~ c8 d16 c8 b!16
	a e a c a c e8 gis,16						%45
	a8 f'16 g,!8 e'16 f,8 d'16
	e, b' d c b a gis d' f
	e d c b a gis a e b'
	c b a e'8.~ e16 b! d
	d( c) a' c,( b) g' b,( a) f'				%50
	a,( gis) b e,8 r16 r8.
	r d'~ d16 c d
	e d c b c d e fis gis
	a e c d g! b, c f a,
	b e d c b a b a gis							%55
	a gis fis gis e gis b e d
	c b a d8.~ d16 c b
	c8-. r16 f8-. r16 e8-. r16
	d8 gis,16 a8 c16 f,8.\prallmordent
	e8 r16 r8. r								%60
	r16 d e f g f e8.~
	e16 f g a bes a g a g
	f g f e f e d e d
	cis8-. r16 d8-. r16 e8-. r16
	f8.~ f8 a16 g8\prall f16					%65
	g f e cis'4.\downmordent
	d16 bes g' c,! a f' bes, g e'
	a, g e' a, f d' g, e cis'
	d a f d e f e f d
	e8.~ e16 f g f g e							%70
	f8-. r16 e8-. r16 d8-. r16
	cis8-. r16 d8-. r16 e8-. r16
	f e d bes' a g cis8 r16
	r g d cis d e a, b cis!
	d g, bes c! f, a bes e, g					%75
	a a' g f d' c bes a bes
	a8. d,16 cis d e d e
	f e f g f g a g a 
	bes8-. r16 a8-. r16 g8-. r16
	\appoggiatura g8 f8.~ f8 e16 f8 g16			%80
	
	}
	
	a8 g'16 f8 a,16 g8 e'16
	d8 f,16 e8 d'16 cis8 e,16
	e d cis d e f g a bes
	bes a g a b cis d e f
	f d e e cis d d b c							%85
	c a bes! bes g a a f g
	\appoggiatura g8 f8.~ f16 g a bes a g
	\appoggiatura d'8 cis8.~ cis16 d e f e d
	gis4.~\downprall gis8.
	a8 r16 r8 cis,16 d8 e16						%90
	a, b cis d e f g,8.~
	g16 g' f e d cis d8.~
	d16 b cis d e f e f d
	cis d e a,8.~ a16 bes g
	f g e f a d c bes a							%95
	bes d g cis, e a, bes a g
	f g e f8 d'16 g,8 f16
	e a g f e d cis8.\prallprall
	d8\fermata r16 r8 bes'16 a8 f'16
	g, a bes a cis e g f e						%100
	a8 cis,16 d e f bes, ees d
	cis d e! a,8 r16 \clef bass a,,8 r16
	d,4. r8.

	\bar "|."
	
}

% Left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

left = \relative c'{

	\autoBeam
	
	R1*9/16*4									%1 to 4
	
	\repeat volta 2{
	
	a8. d,16 cis d e d e						%5
	f e f g f g a g a
	bes8-. r16 a8-. r16 g8-. r16
	\appoggiatura g8 f8.~ f8 e16 f8 g16
	a8 g'16 f8 a,16 g8 e'16
	d8 f,16 e8 d'16 cis8 e,16					%10
	e d cis d e f g a bes
	bes a g a b cis d e f
	f d e e cis d d b c
	c a bes! bes g a a f g
	\appoggiatura g8 f8.~ f16 g a bes a g		%15
	\appoggiatura d'8 cis8.~ cis16 d e f e d
	\clef treble gis4.~\downprall gis8.
	a8 r16 r8 cis,16 d8 e16
	a, b cis d e f g,8.~
	g16 g' f e d cis d8.~						%20
	d16 b cis d e f e f d
	cis d e \clef bass a,8.~ a16 bes g
	f g e f a d c bes a
	bes d g cis, e a, bes a g
	f g e f8 d'16 g,8 f16						%25
	e a g f e d cis8.\prallprall
	d8 r16 r8. r
	R1*9/16
	d'8. a16 gis a b a b
	c b cis d cis! d e d e						%30
	f8-. r16 e8-. r16 d8-. r16
	\clef treble \appoggiatura d8 cis8.~ cis8 a16 b8 cis16
	d c! b c8 a'16 gis8 d16
	e8 g!16 f e d cis8 bes'16
	a f d d g c, c f bes,						%35
	bes a g a cis e g f e
	f e d e d c d c b
	c d e d e f e f g
	f d a' bes, e g a, d f
	g, cis e f, a g bes a cis!					%40
	d e f g,4.\lineprall
	a8 r16 r8 b16 c8 a16
	d8 f16 f e d c d b
	e8.[ a,] r
	a e'16 f e d e d							%45
	c d c b c b a b a
	gis8-. r16 \clef bass a8-. r16 b8-. r16
	c8.~ c8 d16 c8 b16
	a e a c a c e8 gis,16
	a8 f'16 g,!8 e'16 f,8 d'16					%50
	e, b' d c b a gis d' f
	e d c b a gis a e b'
	c b a \clef treble e'8.~ e16 b d
	d( c) a' c,( b) g' b,( a) f'
	a,( gis) b e,8 r16 r8.						%55
	r d'~ d16 c d
	e d c b c d e fis gis
	a e c d g! b, c f a, 
	\clef bass b e d c b a b a gis
	a gis fis gis e gis b e d					%60
	c b a d8.~ d16 c b
	c8-. r16 f8-. r16 e8-. r16
	d8 gis,16 a8 c16 f,8.\prallprall
	e8 r16 r8. r
	r16 d e f g f e8.~ 							%65
	e16 f g a bes a g a g
	f g f e f e d e d
	cis8-. r16 d8-. r16 e8-. r16
	f8.~ f8 a16 g8\prall f16
	g f e cis'4.\prallmordent					%70
	d16 bes g' c,! a f' bes, g e'
	a, g e' a, f d' g, e cis'
	d a f d e f e f d
	e8.~ e16 f g f g e
	f8-. r16 e8-. r16 d8-. r16					%75
	cis8-. r16 d8-. r16 e8-. r16 
	f e d bes' a g cis8 r16
	r g d cis d e a, b cis!
	d g, bes c! f, a bes e, g
	a a' g f d' c bes a bes						%80
	
	}

	a8. d,16 cis d e d e
	f e f g f g a g a
	bes8-. r16 a8-. r16 g8-. r16
	\appoggiatura g8 f8.~ f8 e16 f8 g16
	a8 g'16 f8 a,16 g8 e'16						%85
	d8 f,16 e8 d'16 cis8 e,16
	e d cis d e f g a bes
	bes a g a b cis d e f
	f d e e cis d d b c
	c a bes! bes g a a f g						%90
	\appoggiatura g8 f8.~ f16 g a bes a g
	\appoggiatura d'8 cis8.~ cis16 d e f e d
	\higher gis4.~\downprall gis8.
	a8 r16 r8 cis,16 d8 e16
	a, b cis d e f g,8.~						%95
	g16 g' f e d cis d8.~
	d16 b cis d e f e f d
	cis d e a,8.~ a16 bes g
	f g e f a d c bes a
	bes d g cis, e a, bes a g					%100
	f g e f8 d'16 g,8 f16
	e a g f e d cis8.\prallprall
	d4. r8.
	
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 9/16 \key d \minor}

\score{	\context PianoStaff <<
        \context Staff = "Upper" {\global \clef treble \right}
        \context Staff = "Lower" {\global \clef bass \left}
        >>
        \layout{}
}

\score{	\unfoldRepeats
		\context PianoStaff <<
        \context Staff = "Upper" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef treble \right}
        \context Staff = "Lower" {
			%\set Staff.midiInstrument=harpsichord
			\global \clef bass \left}
        >>
		\midi{\tempo 4=90}
}


