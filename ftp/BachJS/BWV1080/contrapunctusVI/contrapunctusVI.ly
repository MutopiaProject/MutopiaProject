\version "2.8.0"

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")
#(set-global-staff-size 17)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus VI"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus VI"
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
lastupdated = "2006/Apr/09"

 footer = "Mutopia-2006/04/09-734"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c'''{

	R1													%1
	a4 d,8. e16 f8. g16 a4
	bes a8. g16 f4~ f16 e f g
	a8.[ g16] f e d c bes4\trill a~
	a8. b16 c4~ c8. b16 cis8. d16						%5
	e4~ e16 f e d cis4 d8. e16
	f8. e16 f8. d16 e2~
	e8. d16 c8. b16 a8. a'16 g8. f16
	e4 r r2
	r a,4 e'8. d16										%10
	c8. b16 a4 gis a8. b16
	c4~ c16 d c b a2~
	a4.~ a32 a bes c d2~
	d4.~ d32 d e f g2~
	g8.[ f32 e] f8.[ g16] a8.[ g32 f] e8. fis16			%15
	g4 r a d,8. e16
	f8. g16 a4 bes a8. g16
	f4~ f16 e f g a4 r
	R1*2
	r2 r8 r16 \stemDown d,[] \stemNeutral c8. bes16		%21
	a8. bes16 c4~ c8~ c32 f, g a bes8.[ bes16]
	bes8.[ a32 g] a8. bes16 c8. c16 d8. e16
	f8. e16 f8. g16 e8. d16 e4~
	e8.[ d32 cis] d8~ d32 c bes a g8. bes16 a8. g16		%25
	f4~ f16 e d cis d4 r8 r16 d'
	g,4~ g16 bes a g f a b cis d4
	r16 c! d e f8.[ e32 d] c2~
	c8. a16 d8. c16 bes2~
	bes8. g16 c8. bes16 a2~								%30
	a8.[ g32 f] g8.[ e16] f8.[ g16] e4~
	e8.[ d32 cis] d4~ d8. e16 f8. d16
	g8~[ g32 e' f g] f8.[ e16] d8.[ c16] bes4
	a8 r r4 r2
	d2 g,4. a8											%35
	bes4. c8 d2
	ees d4. c8
	bes2~ bes8. a16 bes8. c16
	d4~ d16 ees d c bes d ees f g4~
	g16[ aes g f] ees d c bes a!8.\trill[ g32 f] bes4~	%40
	bes16[ a g a] bes c d e! f8.[ ees16] d c bes a
	bes8.[ c32 d] g,8. g'16 bes,8~[ bes32 a g a] a8. bes16
	bes4 r8 r16 c f,8~[ f32 g f e] f8. g16
	a4~ a16 g a b c8. g16 c4~
	c b16 a b cis d8. e16 f4~							%45
	f8. f16 e8. d16 cis8. a16 d4~
	d8.[ c!32 b] c4~ c8.[ bes32 a] bes4~
	bes16 bes a g f4~ f8. g16 a8. bes16
	g8.[ e'32 f] g8.[ cis,16] d8. e16 cis8.\prall d16
	d8. e16 f8. g16 a4~ a8~[ a32 a g f]					%50
	e2~ e8. d16 e8. f16
	g4~ g8~[ g32 g f e] d2~
	d8. cis16 d8. e16 f4~ f8~[ f32 f e d]
	c2~ c8. c16 f8. e16
	d8. c16 bes4~ bes8. e,16 a8. g16					%55
	f8. fis16 g8. a16 bes8. b16 cis8. d16
	e4 a8.[ g16] f8. e16 d4
	cis d8. e16 f4~ f16 g f e
	d4 r r2
	R1*4
	r2 a2												%64
	d,4. e8 f4. g8										%65
	a2 bes
	a4. g8 f2~
	f8. e16 f8. g16 a2~
	a8~[ a32 d, e f] g2.~
	g8~[ g32 c, d e] f4~ f8. d16 g8. f16				%70
	e8. g16 c8. bes16 a8. c16 f8. ees16
	d4. r16 d cis4. r16 e
	a,4\fermata r8 e'32[ f g16] f e d cis d4~
	d8. e16 cis8. d16 d4 r
	r2 d												%75
	<<
	{g,4. a8 bes4. c8
	d2 ees
	d4. c8 \tieDown bes2~
	bes8. a16 bes8. cis16 d2}
	\new Voice{\stemUp \tieUp
	g2\rest g8\rest g16\rest d[] g8. fis16
	g8. a16 bes8. g16 a8.[ bes32 c] bes16 a g fis 
	g1~
	g8. fis16 g8. e16 fis!2\fermata}	
	>>
	
	\bar "|."

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	R1*2												%1 to 2
	r2 d4 a'8. g16
	f8. e16 d4 cis d8. e16
	f4~ f16 g f e d4 e8. f16							%5
	g4 f~ f8. e16 f8. g16
	a2~ a8.[ b16] c8~[ c32 b a gis]
	a2 e'4. d8
	c4. b8 a2
	gis a4. b8											%10
	c2~ c8. d16 c8. b16
	a4~ a8. gis16 a4.~ a32 g f e
	f2~ f4.~ f32 f g a
	bes2~ bes8.[ b16] d8[ cis32 b cis d]
	e4~ e8.~[ d32 cis] d4~ d8. c16						%15
	bes8. g16 f8. e16 d8. cis'16 d4~
	d8. b16 cis8. a16 f8. e16 f8. g16
	a4~ a8. bes16 \stemDown a8.[] \clef soprano g'16[] \stemNeutral f e d cis
	d4~ d16 c b a b8. g16 c4~
	c8.[ b32 a] b8.\trill c16 c8. bes16 a8.[\trill g32 a]	%20
	bes8. d16 c8. bes16 a4~ a8. g16
	\clef alto f8. g16 f8. ees16 d4 g~
	g8. e16 f4~ f8. e16 f8. g16
	a4 d g, r
	f2 c'4. bes8										%25
	a4. g8 f2
	e f4. g8
	a2~ a8. bes16 a8. g16
	f2~ f8. d16 g8. f16
	e2~ e8. c16 f8. e16									%30
	d2. cis4
	a'4 d,8.[ e16] f8.[ g16] a4
	bes a8. g16 f4~ f16 e f g
	a8. bes16 c8. d16 g,8. ees'16 a,8.[ bes32 c]
	fis,8. a16 d,4~ d8. d16 e8. fis16					%35
	g8. fis16 g8. a16 bes8.[ c32 d] c16 bes a g
	c8.[ bes32 a] bes8.[ fis16] g8.[ a32 bes] e,8. fis16
	g4 r r2
	R1*3
	f4 bes,8.[ c16] d8. ees16 f4						%42
	g f8. ees16 d4~ d16 c d e
	f8. c16 f2 e16 d e fis
	g8. d16 g2 f8~[ f32 a bes c]						%45
	d4 g,2 f8. d16
	e4 a8.[ g16] f8. e16 d8. cis16
	d2~ d8. e16 f8. g16
	e4 r8 r16 \stemDown g[] \stemNeutral f8. g16 a4~
	a r r8 r32 e' d cis d4~								%50
	d~ d8~[ d32 d c b] c4 r
	r8 r32 d c b c2~ c8~[ c32 c bes a]
	bes4 r r8 r32 c bes a bes4~
	bes~ bes8~[ bes32 bes a g] a2~
	a8. d,16 g8. f16 e8. d16 cis4						%55
	d2~ d16[ d e f] e d cis b
	cis4~ cis16 a b cis d8. e16 f8. g16 a2 d,4. e8
	f4. g8 a2
	bes a4. g8											%60
	f2~ f8. e16 f8. g16
	a4~ a16 c, d e f[ g f e] d f g a
	bes[ c bes a] g g, a bes c[ d c bes] a bes a g
	f8~ f32 a b cis] d4~ d8. cis16 d8. e16
	f4 r d a'8. g16										%65
	f8. e16 d4 cis d8. e16
	f4~ f16 g f e d8. a16 bes8. c16
	d2~ d8. a16 d8. c16
	bes8. a16 bes4~ bes8. g16 c8. bes16
	a8. g16 a2 g8. d'16									%70
	c8. e16 f8. g16 f8. g16 a4~
	a8. fis16 g8. a16 bes4. r16 bes 
	e,4\fermata r8 cis' d r r r16 e,
	f8. g16 e8. g16 g8~[ g32 g fis e] fis8. a16
	d,8. c16 bes8. ees16 a,8~[ a32 a' bes c] bes16 a g fis	%75
	g8. d16 e8. fis16 g4 d'8. c16
	bes8. a16 g4 fis g8. a16
	bes4~ bes16 c bes a g4~ g16 a g fis
	e8 r r r16 g a2\fermata
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	R1*6												%1 to 6
	d4 a8. b16 c8. d16 e4
	f e8. d16 c4~ c16 b c d
	e2. d4~
	d8. b16 e8. d16 c8. d16 c8. b16					%10
	a8. e'16~ e8. dis16 e8. b16 c8. gis16
	a8. e16 f4~ f16 g f e d4~
	d8~[ d32 a' bes c] d8.[ c16] bes8. c16 bes8. a16
	g8~[ g32 d' e f] g8.[ f16] e8.[ f16] e8.[ d16]
	cis4 a~ a r											%15
	d2 a'4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8. g16 f8. e16
	d4 r c2												%20
	f,4. g8 a4. bes8
	c2 d
	c4. bes8 a2~
	a8. g16 a8. b16 c4 r
	R1													%25
	c4 f,8.[ g16] a8.[ bes16] c4
	des c8. bes16 a4~ a16 g a bes
	c4~ c16 b c d e4 r
	R1*2												%30
	d,2 a'4. g8
	f4. e8 d2
	cis d4. e8
	f2~ f8. g16 f8. ees16
	d8. fis16 g8. a16 bes4 c							%35
	d~ d16 c bes a g4 r
	r2 d'4 g,8. a16 
	bes8. c16 d4 ees d8. c16
	bes4~ bes16 a bes c d4~ d16 g, a b
	c4 r r2												%40
	R1*7
	d,4 a'8. g16 f8. e16 d4
	cis d8. e16 f4~ f16 g f e
	d8. cis16 d8. e16 f8 r r4							%50
	r8 r32 e fis gis a4~ a8 r r4
	r2 r8 r32 d, e fis g4~
	g8 r r4 r2
	r8 r32 c, d e f4~ f16[ g f e] d f g a
	bes[ c bes a] g f e d cis[ g' a bes] a g f e		%55
	d[ a' bes c] bes a g fis g2~
	g16 bes a g f2 bes4
	a r d a'8. g16
	f8. e16 d4 cis d8. e16
	f4~ f16 a g f e f e d cis4							%60
	d8. a16 d8~[ d32 c bes a] bes8. g16 c4~
	c r r2
	r f,4 c'8. bes16
	a8. g16 f4 e f8. g16
	a4~ a16 bes a g f[ g f e] d8. a'16					%65
	d8. c16 bes8. a16 g8 r r4
	r16 e f g a4~ a16 bes a g f4~
	f16 e d cis d2 r8 r16 d
	g8. f16 e8. d16 e4~ e8. c16
	f8. e16 d8. cis16 d4~ d8. g16~						%70
	g4 r8 r16 e[] a8. g16 f8. c'16
	d8. c16 bes8. a16 g4. r16 g
	g4\fermata r8 a a r r r16 bes
	a8.[ bes16] a8 r a4 d8. c16
	bes8. a16 g4 fis g8. a16							%75
	bes4~ bes16 c bes a g4. a8
	bes8. c16 d8. bes16 c8. a16 bes8. c16
	d8~[ d32 d, e fis] g8. a16[ bes8.] c16 d c bes a
	\stemUp
	<<{g8 r r r16 <bes e> <a d>2\fermata}
	\new Voice {\stemDown s4. s16 g fis2}>>

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	d2 a'4. g8												%1 
	f4. e8 d2 
	cis d4. e8 
	f2~ f8. g16 f8. e16
	d8. d,16 e8. f16 g8. a16 g8. f16						%5
	e8. e'16 f8. g16 a8. bes16 a8. g16
	f4 d a'2~
	a1~
	a8. e16 a8. g16 f8. e16 f8. d16
	e4. e8 f8. e16 fis8. gis16								%10
	a8. g!16 f4 e2
	R1*3
	a4 d,8. e16 f8. g16 a4									%15
	bes a8. g16 f4~ f16 e f g
	a2 r4 r8 bes
	a8. g16 f4~ f8~[ f32 g f e] d4
	r8 r32 d e f g4~ g8~[ g32 e f g] a8. g16
	f8. d16 g8. f16 e8~[ e32 c d e] f8. ees16				%20
	d8. c16 d8. e!16 f8. e16 f8. g16
	a4~ a8~[ a32 f g a] bes8. a16 g8. f16
	e8. c16 f4~ f8. g16 f8. e16
	d2 c8~[ c32 g' a bes] c8. bes16
	a8. f16 bes8. d16 e,4~ e8~[ e32 c d e] 					%25
	f8. e16 d4~ d16[ d c bes] a f g a
	bes[ g a bes] c8. cis16 d cis d e f4~
	f16 e f g a4~ a8. g16 f8. e16
	d4~ d8~[ d32 d, e f] g4~ g8~[ g32 f e d]
	c4~ c8~[ c32 c' d e] f4~ f8~[ f32 e d c]				%30
	bes2 a~
	a1~
	a4. a8 bes8. a16 g4
	f8. g16 a8. bes16 c2~
	c4. c8 bes4. a8											%35
	g4 d'8. c16 bes8. a16 g4
	fis g8. a16 bes4~ bes16 c bes a
	g8 g'~ g~[ g32 f ees d] c8. f16 g8. a16
	bes8. a16 g4~ g8. f16 ees4~
	ees8. d16 c8. d16 ees[ g f ees] d c bes a				%40
	g8. f16 g8. bes16 a[ f g a] bes c d ees
	d4 ees f2~
	f16[ ees32 d ees16 c] a8.\trill[ g32 a] bes8. bes'16 a8. g16
	f8. f,16 ees8. d16 c8. c'16 bes8. a16
	g8. g'16 f8. e16 d8~[ d32 a' b cis] d8. c16				%45
	bes8. a16 bes8. g16 a4 r
	a,2 d,4. e8
	f4. g8 a2
	bes a4. g8
	f2~ f8. e16 f8. g16										%50
	a2~ a8~[ a32 c b a] g8~[ g32 a g f]
	e8. d16 e8. f16 g2~
	g8~[ g32 bes a g] f8~[ f32 g f e] d8. c16 d8. e16
	f2~ f8 r r4
	R1*3
	r8 r16 a[] b8. cis16 d8. e16 f4~						%58
	f8~[ f32 f g a] bes8. bes,16 a[ bes' a g] f e d cis
	d[ c'! bes a] g f e d cis[ d' cis b] a g f e			%60
	d[ e d c] bes a g f g[ d' c bes] a g f e
	f[ c' d e] f g f e d[ f g a] bes c bes a
	g[ g, a bes] c d c bes a[ bes a g] f4~
	f~ f8~[ f32 e d g] a16[ bes' a g] f e d8~
	d16[ c bes a] bes g cis8 d16[ bes a g] f g f e			%65
	d[ a' bes c] d e f8 r16 e[ f g] f e d cis
	d2.~ d16 ees d c
	bes4~ bes16 bes a g fis4 r
	r r8 r16 g[] c8~[ c32 d c bes] a4
	r r8 r16 f[] bes8~[ bes32 c bes a] bes8. b16			%70
	c8. bes!16 a8. c16 f8. ees16 d8. f16
	bes8. a16 g8. f16 e8. f16 e8. d16
	cis4\fermata r8 a[] d8. e16 f8. g16
	a8. g16 a8. a,16 d2~
	d1~														%75
	d~
	d~
	d~
	d\fermata

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
  \midi {\tempo 4=90}
  \layout{}
}

