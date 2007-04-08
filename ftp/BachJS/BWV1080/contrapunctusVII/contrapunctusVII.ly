\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 17)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus VII"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus VII"
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
lastupdated = "2006/Apr/13"

 footer = "Mutopia-2006/04/13-736"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c'''{

	R1												%1
	a2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8 e f g									%5
	a4~ a16 g f e d4~ d16 d e f
	e d c b \stemDown a8[] \stemNeutral r r16 e'[ a g] f e d c
	b4 r r16 d e f g4~
	g16 g f e f4~ f16 g f e d4~
	d16 f e d cis4~ cis16 cis d e f4~				%10
	f16 e f g a4 g~ g16 bes a g 
	fis4~ fis16 fis g a d,4 ees
	d r a d8. c16
	bes8. a16 g4 fis g8. a16
	bes4~ bes16 c bes a g4~ g16 aes g f				%15
	ees g a! bes c4~ c16[ c bes a] bes c d ees
	f ees d c bes4~ bes16[ a g f] e! g f e 
	f4. bes8~ bes16[ bes a g] a8 b16 c
	d[ b c d] g,8 ees' d4. e8
	f2~ f8. ees16 d4~								%20
	d16[ a d8~] d16 c d ees f4~ f16 g f ees!
	d4~ d16 d c bes a ees' d8 c4~
	c16[ bes a g] a g f8 c'4~ c16 b c d
	g,4 r c f,8. g16
	a8. bes16 c4 d c8. bes16						%25
	a4~ a16 g a bes c4~ c16 d c b
	c d e f g4~ g16 f e d cis4
	d r16 a b cis d e f4 e8~
	e16[ e a g] f e d cis d[ bes a g] f e d cis
	d[ a' d8~] d16 f e d e[ a8 a,16] bes d g g,		%30
	a[ c f e] d8. e16 a,8[ d~] d16 e d c
	f8[ bes,!~] bes16 c bes a g8[ g'~] g16 bes a g
	fis8[ f~] f16 a g fis e8[ ees~] ees16 g f ees
	d4 cis8 c~ c8[ bes16 a] g f' e d
	cis8. d16 e8. cis16 d[ f e d] cis e a, g		%35
	f[ g f e] d f bes a g[ f e f] g bes d cis
	d4 r16 d c bes a4 r16 cis d e
	f g f e d4 a'4. g8
	f4. e8 d2
	cis d4 e										%40
	f2~ f8 g f e
	d16[ a d8~] d16 e d cis d8[] a'[] d,8. e16
	f8. g16 a4 bes a8. g16
	f4~ f16 e f g a f e d c8[] r
	R1*5
	d1												%50
	a'2. g4
	f2. e4
	d1
	cis
	d2. e4											%55
	\stemUp \tieUp<<
	{f1~											%56
	f4 g f e
	d2~ d16[ e d cis] d e f e
	g[ f e d] e cis d8~ d4 cis
	d4. d8 cis[ c~] c16 ees d cis					%60
	bes[ a g bes~] bes bes a g fis2\fermata}
	\new Voice {\stemDown \tieDown 
	r16 d' c bes a4~ a16[ bes a g] f8 g16 a			%%56
	bes8 d cis e~ e d4 cis8
	d16[ bes a g] f a8 gis16 b8 r r4
	r r8 f~ f16[ d e f] g a bes g
	fis a g fis g4~ g8  bes a4						%%60
	d, cis d2}
	>>
	
	\bar"|."
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c''{

	R1*2											%1 to 2
	d4 a8. b16 c8. d16 e4
	f e8. d16 cis4~ cis16 a b cis
	d bes! a g f4~ f16 a b cis d4~					%5
	d16 d c! b c4~ c16 c b a gis4
	a e'8. d16 c8. b16 a4
	gis a8. b16 c4~ c16 d c bes
	a4~ a16 a b cis d4~ d16 c bes a
	g4~ g16 e f g a4~ a16 g a b						%10
	c8 d16 e f4~ f16 f ees d ees4~
	ees16 d c bes c4~ c16[ c bes a] g8 c
	fis,16 d e fis g4~ g16 g fis e fis!4
	g8. f!16 ees4 d2
	g,4. a8 bes8. c16 d4							%15
	ees2 d4. c8
	bes2~ bes8 a bes c
	d4 r r r8 aes'
	g r r c~ c16 c bes a bes4~
	bes16[ bes a g] a bes c8~ c16[ bes a8~] a16 d, g8~	%20
	g f16 g a4~ a16 bes c a bes4~
	bes16 bes a g f2~ f16 g f e
	f4 c'8. bes16 a8. g16 f4
	e f8. g16 a4~ a16 bes a g
	f4~ f16 g f ees d[ e f8~] f16 f e8~				%25
	e16 e d cis d4 c16 e f g a4
	g8.[ a16] bes d, cis b cis4 r16 bes'! a g
	a g f e \stemDown d8[] \stemNeutral r r16 a'[ d c] bes a bes g
	e8 r r4 d a'8. g16 
	f8. e16 d4 cis d8. e16							%30
	f4~ f16 g f e d4 r
	R1*3
	a'1												%35
	d,2. e4
	f2. g4
	a1
	bes
	a2. g4											%40
	f1~
	f4 e f g
	a d,8. e16 f8. g16 a4
	bes a8. g16 f4~ f16 e f g
	a4 d8. c16 bes8. a16 g4							%45
	fis g8. a16 bes4~ bes16 c bes a
	g4~ g16 fis g a bes[ c bes a] g f e d
	e4~ e16 e f g a8 d,4 c16 bes
	a[ c d e] f g a bes c8[ ees,~] ees16 g f ees
	d4 r r16 a'[ bes c] bes a g f					%50
	\stemDown e8[] e'[] \stemNeutral a,8. b16 cis8. d16 e4
	f e8. d16 cis4~ cis16 a b cis
	d4 a~ a8[ g16 a] bes8 g~
	g16[ a g f] e d e f g8 bes e,4
	a8. g16 f8. e16 d4 cis							%55
	d8. e16 f4~ f16 g f e d4~
	d8 bes'4 a16 g a8 f g e
	f r r d~ d r r4
	r r8 gis, a2
	bes4~ bes16 c bes a g fis e a fis4				%60
	g2 a\fermata
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	d4 a'8. g16 f8. e16 d4							%1
	cis d8. e16 f4~ f16 g f e
	d[ cis d8~] d16 d c b] a[ gis a8~ ]a16 a b cis
	d[ c! bes! a] g fis g8~ g16[ bes a g] f8. e16
	d4~ d16 a' b cis d4~ d16 a g f					%5
	e4 a8. g16 f8. e16 d4
	c16[ d e8~] e16 e fis gis a4 r
	r16 b[ e d] c b a gis a8 r r4
	a4 d,8. e16 f8. g16 a4
	bes a8. g16 f4~ f16 e f g						%10
	a4~ a16 g a bes c8.[ g16] c8. bes16
	a4~ a16 d, e fis g4~ g16 fis g a
	bes4~ bes16 a bes c d4~ d16 c bes a
	g4~ g16 g a bes a4 r
	R1*2
	bes4 f'8. ees16 d8. c16 bes4					%17
	a bes8. c16 d4~ d16 ees d c
	b d ees f g4~ g8[ d~] d16 d c bes
	c4 f8. ees16 d8. c16 bes4						%20
	a4. bes16 c d4~ d16 ees d c
	bes4~ bes16 bes a g f8[ bes~] bes16 bes a g
	a g f e f4~ f2
	c'2. bes4
	a2. g4											%25
	f1
	e
	f2. g4
	a1~
	a4 bes a g										%30
	f r8 g~ g16[ a g f] e8 a~
	a16[ bes a g] f a d c bes8 b c cis
	d16[ c! b a] b8 bes~ bes16[ d c bes] a8 a'~
	a16[ a g f] e8 ees d cis d g~
	g16[ f e d] cis8 e a, r r cis,					%35
	d r r4 d2
	a'4. g8 f4. e8
	d2 cis
	d4. e8 f2~
	f8 g f e d2~									%40
	d4 r8 cis~ cis16[ e d cis] d e f g
	a g f g a4 r16 ees'[ d c] bes a g8
	d'4 r8 d~ d16[ cis d e] f g f e
	d4 c~ c2~
	c16[ ees d c] bes8. a16 g4 r8 ees'				%45
	a, r d4 g,8. a16 bes8. c16
	d4 ees d8. c16 bes4~
	bes16 g a bes c4~ c16[ c bes a] g f e d
	c4 r r16 d' c bes a4~
	a16[ d, e fis] g8 r r4 r16 f'! d e				%50
	cis4~ cis16 a d8 e16[ f e d] cis8 r
	r16 a[ b cis] d8 r r16 b[ cis d] e f g a
	f4 r r16 d,[ e fis] g a bes g
	a8 e r4 bes'8 g r4
	a4 d8. c16 bes8. a16 g4							%55
	f~ f16 f g a bes4~ bes16 c bes a
	g8 r r4 r16 b,[ cis d] e f g e
	a8 r r f~ f r r4
	r r8 d16 e f4 e
	d r8 d' e g d a									%60
	bes4 e, d2\fermata

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	R1*4
	d1												%5
	a2. b4
	c2. d4
	e1
	f
	e2. d4											%10
	c1~
	c4 a bes c
	d2 r
	r16 g, a bes c4~ c16[ a d c] bes a g fis
	g bes c d ees4~ ees16[ ees d c] b8.\trill a32 b	%15
	c4~ c16 d ees f g4 f8. ees16
	d4~ d16 ees d c bes8 d g,4
	f16[ a bes c] d c d ees f2~
	f4~ f16 ees d c g'2
	f4 r f bes,8. c16								%20
	d8. ees16 f2 g4~
	g8 f16 ees d4~ d16 c d e f4~
	f r16 bes,[ a g] f a bes c d4
	r16 c,[ c' bes] a g f e f c' f e d4~
	d16[ d c bes] a8. a16 bes8.[ b16] c8. cis16		%25
	d8. e16 f8. g16 a8. bes16 c8. d16
	g,8 r r4 r2
	d4 a'8. g16 f8. e16 d4
	cis d8. e16 f4~ f16 g f e
	d4 r8 g~ g f4 e8~								%30
	e[ d16 c] b8. cis16 d8 bes g a
	d e f4~ f16[ a g f] e8 a
	d, r g r c, r f r
	bes,[ bes'~] bes16 a g fis g8 a bes g
	a4~ a16 bes a g f8.[ g16] a8 r					%35
	r16 bes,[ a g] f e d cis d4 r16 g' f e
	d cis d e f4 r16 f,[ g a] bes8 g
	d'16[ d, d' e] f a g f e[ d e f] e f d e
	f[ e f g] f e d cis d[ c bes a] g a bes g
	a[ g a bes] a a' g a f[ a d c] bes a g bes		%40
	a[ g f e] d c bes a bes4 a~
	a r r2
	r16 bes'[ a g] f e d8 r2
	r16 g[ a bes] c8 c, f g a g
	fis4 r16 d e fis g[ d g f] ees d c bes			%45
	c[ ees d c] bes a g fis g[ d' g8~] g16 fis g a
	bes[ g a bes] c8 c,	 g'4 r8 g,
	c8. bes16 a8. g16 f4 e
	f8. g16 a4~ a16[ bes a g] f ees' d c
	bes4 r16 bes' a g fis8 d g4~					%50
	g16[ g f! e] f8. d16 a'4 r16 a, b cis
	d4 r16 e f g a2
	r16 bes[ a g] f e d f bes,2
	a4 r16 a' g f e[ d e f] g bes a g
	f[ g f e] d e f8~ f16[ a g f] e a g a			%55
	d,4 r r2
	r16 a'[ g f] e d cis e a,2~
	a16[ g' f e] d c bes d gis,4 r
	r r8 bes a2
	d1~												%60
	d2 d,\fermata
	
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
  \midi {\tempo 4=65}
  \layout{}
}

