\version "2.8.0"

#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 18)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus XIII - Canon alla Duodecima"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus XIII - Canon alla Duodecima"
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

 footer = "Mutopia-2006/04/28-748"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

right = \relative c''{

	R1*8										%1 to 8
	
	\repeat volta 2{
	
	\times 4/6{a8 b a gis a b} \times 4/6{ c d c b c d}
	e2~ e8 d( c b)								%10
	c2~ c8 b( a gis)
	a4 b8( c d e) f4
	f( gis,) r8 e fis gis
	a( gis fis e) b'( gis fis e) 
	c'( b a4) r8 f'( e dis)						%15
	e( c b a) c( b a gis)
	a4 r \times 4/6{ e8 f e d e f}
	g e f g a b cis d
	e d cis b a4. bes8
	c bes a g f g a f							%20
	d e f bes, bes' g a bes
	c, e a4-. d,8 f bes4-.
	e,8 g a bes c a g f
	g4 c a b
	\times 4/6{c8 d c b c d} e4. d16 c			%25
	b8 g a b c4. b16 a
	gis4 e r8 a g f
	e4 c8 e a4 cis,
	d a r8 b cis d
	e d cis e f e d f							%30
	g f e d e c' bes a
	bes g e g cis, e d f
	e4 r \times 4/6{b'8 c b a b cis}
	\times 4/6{d e d cis d e} \times 4/6{f g f e f g}
	a2~ a8 g f e								%35
	f2~ f8 e d cis
	d4 e8( f g a) bes4
	bes( cis,) r8 a( b cis)
	d( cis b a) e'( cis b a)
	f'( e d4) r8 bes'( a gis)					%40
	a( f e d) f( e d cis)
	d4 r \times 4/6{a8 b a gis a b}
	cis a b cis d e f g
	a g f e d4. e8
	f e d c bes c d bes							%45
	g a bes e, e' cis d e
	f, a d4 g,8 bes e4
	a,8( cis d e) f( d cis! b)
	cis4 f d e
	\times 4/6{f8 g f e f g} a4. g16 f			%50
	e8 cis d e f4. e16 d
	cis4 a r8 d c bes
	a4 f8 a d4 fis,
	g d r8 e f g
	a g f a bes a g bes							%55
	c bes a g a f' e d
	e c a c f, a g bes
	a4 r \times 4/6{e'8 f e d e f}
	g4~ g16 f e d \times 4/6{c8 d c b c d}
	e d cis b a4. bes8							%60
	c bes a g f g a f
	bes g f e d4 r
	r a' d,8 f bes4
	e,8 g c4 r8 a g fis
	g4 a2 bes4									%65
	cis,8 d e f \times 4/6{g a g f g a}
	bes4 g \times 4/6{d'8 e d cis d e}
	f4 d \times 4/6{a8 b a gis a b}
	\times 4/6{cis d cis b cis d} e a, a'4~
	a8 g f e f2~								%70
	f8 e d c bes c d bes
	g a bes e, e' cis d e
	f, a d4-. g,8 bes e4-.
	a,8 cis d e f d cis! b
	cis4 f d e									%75
	
	}

	f8 e d4 r8 bes' a gis
	a( f e d) f( e d cis)
	d1\fermata
	
}

% Left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

left = \relative c{

	\times 4/6{d8 e d cis d e} \times 4/6{f g f e f g}	%1
	a2~ a8 g( f e)
	f2~ f8 e( d cis) 
	d4 e8( f) g( a) bes4
	bes( cis,) r8 a b cis						%5
	d( cis b a) e'( cis b a)
	f'( e) d4 r8 bes'( a gis)
	a( f e d) f( e d cis)

	\repeat volta 2{
	
	d4 r \times 4/6{a8 b a gis a b}
	c a b c d e fis gis							%10
	a g f e d4. e8 
	f e d c b c d b
	gis a b e, e' c d e
	fis, a d4-. gis,8 b e4-.
	a,8 c d e f d c b							%15
	c4 f d e
	\times 4/6{f8 g f e f g} a4. g16 f
	e8 c d e f4. e16 d
	cis4 a r8 d c bes
	a4 f8 a d4 f,								%20
	g d r8 e f g
	a g f a bes a g bes
	c bes a g a f' e d
	e c a c fis, a gis b
	a4 r \times 4/6{e'8 f e d e f}				%25
	g4~ g16 f e d \times 4/6{c8 d c b c d}
	e d c b a4. b8
	c bes! a g f g a f
	bes g f e d4 r
	r a' d,8 f bes4								%30
	e,8 g c4 r8 a g fis
	g4 a2 bes4
	cis,8 d e f \times 4/6{g a g f g a}
	bes4 g \times 4/6{d'8 e d cis d e}
	\times 4/6{f g f e f g} a d, d'4~			%35
	d8 c bes a bes2~
	bes8 a g f e f g e
	cis d e a, a' f g a
	b, d g4-. cis,8 e a4-.
	d,8 f g a bes g f e							%40
	f4 bes g a
	\times 4/6{d,8 e d cis d e} \times 4/6{f g f e f g}
	a2~ a8 g f e
	f2~ f8 e d cis
	d4 e8( f g a) bes4							%45
	bes( cis,) r8 a( b cis!)
	d( cis b a) e'( cis! b a)
	f'( e d4) r8 bes'( a gis)
	a( f e d) f( e d cis)
	d4 r \times 4/6{a8 bes a g a b}				%50
	cis a b cis d e f g
	a g f e d4. e8
	f e d c bes c d bes
	g a bes e, e' cis d e
	f, a d4-. g,8 bes e4-.						%55
	a,8 c d e f d c b
	c4 f d e
	\times 4/6{f8 g f e f g} a4. g16 f
	e8 c d e f4. e16 d
	cis4 a r8 d c bes							%60
	a4 f8 a d4 f,
	g d r8 e f g
	a g f a bes a g bes
	c bes a g a f' ees d
	ees c a c fis, a g bes						%65
	a4 r \times 4/6{e'8 f e d e f}
	\times 4/6{g a g f g a} bes4 g
	\times 4/6{d8 e d cis d e} \times 4/6{f g f e f g}
	a2~ a8 g f e
	f2~ f8 e d cis								%70
	d4 e8( f g a) bes4
	bes( cis,) r8 a( b cis!)
	d( cis b a) e'( cis b a)
	f' e d4 r8 bes'!( a gis)
	a( f e d) f( e d cis)						%75
	
	}
	
	d^\markup{\small Finale} f, g a bes g f e
	f4 bes g a
	d,1\fermata

	\bar "|."
	
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {\time 2/2 \key d \minor}

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
		\midi{\tempo 2=75}
}


