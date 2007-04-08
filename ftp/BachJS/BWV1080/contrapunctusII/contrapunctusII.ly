\version "2.8.0"

% A4 version %%%%%%%%%%%%%%%%%%%%%%%

%#(set-default-paper-size "a4")
#(set-global-staff-size 16)

% Letter version %%%%%%%%%%%%%%%%%%

%#(set-default-paper-size "letter")
%#(set-global-staff-size 16)

\header{
title="Die Kunst der Fuge"
piece=\markup{\hspace #10 \bold \huge "Contrapunctus II"}
opus="BWV 1080"
composer="Johann Sebastian BACH (1685 - 1750)"

mutopiatitle = "Die Kunst der Fuge, Contrapunctus II"
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
lastupdated = "2006/Apr/02"

footer = "Mutopia-2006/04/02-719"
tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Voices %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano = \relative c''{

	R1*12										%1 to 12
	a2 d										
	c a											
	gis a4 b									%15
	c2~ c8. d16 c8. b16							
	a1~											
	a											
	d,~											
	d~											%20
	d8. cis16( d8. f16) e8. d16( gis8. a16)
	b8. c16 d8. f,16~ f8. e32 d cis8. d16
	cis4 r4 r2
	R1*2										%25
	a'2 d
	c a
	gis a4 b
	c2~ c8. d16 c8. b16
	c4 a'~ a8. g16 f8. e16~ 					%30
	e8. f16 e8. d16~ d8. e16 d8. cis16
	d2 r2
	R1
	r8 r16 a' gis8. a16 d,4 g~
	g8. f16 e8. d16 e4 a						%35
	d, e e, f
	e e'~ e8. d16 c8. b16
	c8. d16 e4~ e8. f16 e8. d16
	a'4 r4 r2
	R1											%40
	r8 r16 e dis8. e16 a,4 d~
	d8. c16 bes8. a16 bes2~
	bes8. a16 g8. f16 g2~
	g8. f16 g8. a16 bes8. c16 d8. e16
	f2 c'										%45
	a f
	e f4 g
	a2~ a8. bes16 a8. g16
	fis2 g4 a~
	a8. d,16 g8. f16 ees8. d16 c8. bes16		%50
	a2 r
	R1*3
	r8 r16 g' f8. ees16 d8. c16 bes8. a16		%55
	bes2 ees~
	ees8. d16 cis8. d16 g,4 c~
	c bes a2~
	a8. f'16 g8. f16 e8. d16 cis8. d16
	cis8. a'16 bes8. a16 g8. f16 e8. f16		%60
	g8. f16 e8. d16~ d8. e16 d8. cis16
	d4 r r bes~
	bes8. bes16 a8. g16 f8. e16 d8. cis16
	d8. d'16 e8. f16 g2~
	g4 f8. e16 f4 a								%65
	d,2 e4 fis
	g2. d4~
	d8. e16 d8. c16~ c8. d16 c8. bes16~
	bes8. bes16 a8. g16 f8. c'16 bes8. a16
	gis4. r16 gis a4. r16 a						%70
	d8. e16 f4 e2~
	e8. a16 gis8. a16 e8. fis16 g4~
	g f2 e8. d16
	cis4 e a,2~
	a4 d,2 g4~									%75
	g8. bes16 a8. g16~ g8. a16 g8. f16~
	f8. g16 f8. e16~ e8. f16 e8. d16~
	d8. b16 cis8. e16 a,8. g'16 f8. e16
	d2 a'
	f d											%80
	cis d4 e
	f2~ f8. g16 f8. e16
	d1~
	d\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

alto = \relative c'{

	R1*8										%1 to 8
	d2 a'										
	f d											%10
	cis d4 e								
	f2~ f8. g16 f8. e16							
	d8.( e16 f8. g16) a2~						
	a8. g16 f8. e16~ e8. f16 e8. d16~			
	d8. d16 e8. f16 e4 d						%15
	c e f e~									
	e8. cis16 d8. e16 f4 e~						
	e8. e16 d8. cis16 d4 c~						
	c bes8. a16 bes4 a~							
	a8. fis16 g8. a16 bes4 a					%20
	gis r4 r2
	r b
	a8.[] e'16 f8. g16 a2
	f d
	cis d4 e									%25
	f2~ f8. a16 gis8. fis16
	e2~ e8. a,16 d8. c16
	b2 r8 r16 e fis8. gis16
	a2. gis4
	a8. g!16 f8. e16 d4 g						%30
	f2 e
	d r
	r8 r16 bes' a8. g16 f8. e16 d8. cis16
	d4 d' b cis
	d r r c~									%35
	c8. bes16 a8. g16 a2
	gis4 c fis, gis
	a8. bes!16 a8. g16 f8. a16 g8. f16~
	f8. e16 fis8. gis16 a8. b16 c8. a16
	b2~ b8. a16 gis8. a16						%40
	dis,8. a16 a'2 e4~
	e f d g
	c,8. f16 e8. d16~ d8. e16 d8. cis16 
	d2. g4
	c,2~ c8. bes16 a8. g16						%45
	f8. f'16 g8. a16 bes8. c16 d8. bes16
	c4 g c2~
	c d4 c8. bes16
	a2 d
	bes g										%50
	fis g4 a
	bes2~ bes8. c16 bes8. a16
	g4 bes a c~
	c8. f,16 g8. a16 bes8. c16 d8. bes16
	c2 f,~										%55
	f8. aes16 g8. f16 g4 a
	bes2 r
	r8 r16 g fis8. g16 e4 f~
	f8. d16 cis8. d16 g2~
	g4 f e a~									%60
	a r r2
	r8 r16 bes a8. g16~ g8. a16 g8. f16
	e4 a, bes2
	a4 a' b cis
	d r r2										%65
	r8 r16 g, a8. bes16 c2~
	c4 bes8. a16 bes4 a
	g2 f
	e d4 f~
	f8. f16 e4~ e8. e16 d4						%70
	r r8 r16 d' c8. b16 a8. gis16
	a2 r4 e'~
	e8. a,16 d8. c16 bes8. a16 g8. f16
	e2~ e8. g16 f8. e16
	d8. c16 bes8. a16 bes2						%75
	a2. b4
	cis2 gis
	a r4 cis
	d8. f16 e8. d16 cis8. a16 b8. cis16
	d4 c2 bes4~									%80
	bes8. bes16 a8. g16 f4 bes
	a2 bes4 a~
	a8. fis16 g8. a16 bes2~
	bes8. a16 bes8. g16 a2\fermata
	
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tenor = \relative c'{

	R1*4										%1 to 4
	a2 d										%5
	c a											
	gis a4 b									
	c2~ c8. d16 c8. bes16						
	a2~ a8. g'16( f8. e16)						
	d8.( c16 bes8. a16) bes8.( a16 g8. f16)		%10
	e2 a8\rest a16\rest a b8. cis16				
	d2. cis4								
	d4. e16\rest e f2							
	e4 c2 a4									
	b2 a8\rest a16\rest e fis!8. gis16			%15
	a2. gis4									
	a b8. cis16 d4 g,~							
	g8. g16 f8. e16 f4 fis~						
	fis8. d16 e8. fis16 g4 c,~					
	c8. a16 bes8. c16 d8. cis16 d4				%20
	e r r2
	r gis
	e4 r r8 r16 a b8. cis16
	d4 c2 bes4~
	bes8. g16 f8. e16 a2~						%25
	a8. d16 cis8. d16 gis,4 b~
	b8. e,16 a8. g16 f2~
	f4 e r2
	r8 r16 g' f8. e16 dis4 e
	a,2 b4 cis									%30
	d2 r
	r8 r16 a b8. cis16 d8. e16 f8. d16
	e4 e, f g 
	a r r2
	r4 d~ d8. c16 bes8. a16						%35
	bes4 b cis d~
	d8. c!16 b8. a16 b4 e
	a,2 d
	c a
	gis a4 b									%40
	c2~ c8. d16 c8. b16
	a2~ a8. g16 f8. e16
	f4 bes e, a
	d, e8. f16 g8. a16 bes4~
	bes8. a16 g8. f16 e2						%45
	f4 r r bes~
	bes8. d16 c8. bes16 a8. g16 f8. e16
	f8. f'16 e8. f16 bes,4 ees~
	ees8. ees16 d8. c16 bes8. a16 g8. fis16
	g8. a16 bes2 a8. bes16						%50
	c4 ees d2~
	d4 d e! f~
	f8. f16 ees8. d16 c8. bes16 a8. g16
	f4 r r2
	r4 c d ees									%55
	f bes2 ees4
	f2 r8 r16 c bes8. a16
	g4 ees' cis d~
	d8 r r4 r2
	r4 d2 cis4									%60
	d2 e
	a,4 b8. cis16 d4 r
	r e, f g
	a2 r
	r8 r16 a b8. cis16 d4 fis,					%65
	g r r2
	R1*2
	r4 a2 d4~
	d c2 a4~									%70
	a gis a b
	c2~ c8. d16 cis8. b16
	a2 bes!~
	bes8. bes16 a8. g16 f8. e16 d8. cis16
	d4 e8. fis16 g8. f16 e8. d16				%75
	cis2 d
	e f
	e r4 a
	a2 r
	r8 r16 d, e8. f16 g8. a16 g8. f16			%80
	e8. g16 f8. e16 d2
	cis4 d2 cis4
	d4 e8. fis16 g2~
	g8. fis16 g8. e16 fis2\fermata
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bass = \relative c{

	d2 a'										%1
	f d										
	cis d4 e									
	f2~ f8. g16( f8. e16)						
	d8.( e16 d8.) c16~ c8.( d16 c8.) b16~		%5
	b8.( a16 b8. c16) d8.( e16 f8. d16)			
	e8.( f16 e8. d16) c8.( b16 a8. gis16)		
	a8.( a'16 gis8. a16) d,4 g~					
	g8.( f16 e8. d16) cis2						
	d4 d, g8. a16 bes4~							%10
	bes8. bes16( a8. g16) f4 e						
	d8. d'16( e8. f16) g8.( bes16 a8. g16)		
	f8.( g16 f8. e16) d8.( e16 f8. g16)			
	a2 f~										
	f8. f16 e8. d16 c4 b						%15
	d8\rest d16\rest a b8. c16 d4 e				
	f2~ f8. e16 d8. cis16						
	d2~ d8. c16 bes8. a16						
	bes2~ bes8. a16 g8. fis16
	g2.~ g8. f16								%20
	e1~
	e2 e' 
	a,4 r r2
	r8 r16 d e8. f16 g8. a16 g8. f16
	e8. bes'16 a8. g16 f8. e16 d8. cis16		%25
	d4 f b, e							
	a,2 d~
	d8. b16 e8. d16 c4 b
	a r r2
	R1											%30
	d2 a'										
	f d 
	cis d4 e 
	f2~ f8. g16 f8. e16
	d4 r r2										%35
	r4 g~ g8. f16 e8. d16						
	e2 r									
	R1*2
	r8 r16 f e8. d16 c4 f~						%40
	f fis2 gis4
	a2 r
	R1*8
	r8 r16 ees d8. c16 bes8. a16 g8. fis16		%51
	g8. g'16 fis8. g16 c,2~
	c f
	d bes
	a bes4 c									%55
	d2~ d8. ees16 d8. c16
	bes8. bes'16 a8. bes16 e,4 fis
	g2~ g8. f!16 e8. d16
	bes'1
	a4 r r2										%60
	d, a'
	f d
	cis d4 e
	f2~ f8. g16 f8. e16
	d2~ d8. ees16 d8. c16						%65
	bes2~ bes8. c16 bes8. a16
	g8. d'16 e8. fis16 g8. a16 g8. f16
	e4 a d, g
	cis,2 d
	e f											%70
	b, c~
	c4 d e2
	f4 d g2~
	g4 cis, d a
	bes2. g4									%75
	a1~
	a~
	a2~ a8. bes16 a8. g16~
	g8. a16 g8. f16~ f8. g16 f8. e16
	d4 r r8 r16 e f8. g16						%80
	a2 r8 r16 bes a8. g16
	a8. f16 e8. d16 g4 a
	bes8. c16 bes8. a16 g8. a16 bes8. g16
	d'2 d,\fermata
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
	\new Staff <<\global \clef tenor \tenor>>
	\new Staff <<\global \clef bass \bass>>
    >>
  \midi {\tempo 4=115}
  \layout{}
}

