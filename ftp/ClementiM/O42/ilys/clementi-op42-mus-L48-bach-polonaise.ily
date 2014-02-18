\version "2.16.1"
\include "definitions.ily"

% LESSON XLVIII. Polonaise (E Maj) by Bach (BWV 817).

global = { \key e \major \time 3/4 }

%---------------------------DEFINITIONS
tempoLegend = \markup { \right-align "Andante" }
pieceLegend = #"Polonaise"
tenFive = \markup { \override #'( baseline-skip . 0 )  \column { \center-align{ \finger "  5"  \small "  ten" }}}
setTempo = { \tempo 4=100 \hideTempo }

angleBeamOne = \once \override Beam #'positions = #'( 0.0 . -0.3 )
angleBeamTwo = \once \override Beam #'positions = #'( -2.7 . -0.1 )
angleBeamThree = \once \override Beam #'positions = #'( -1.2 . -2.3 )
angleBeamFour = \once \override Beam #'positions = #'( 0.0 . -0.2 )
angleBeamFive = \once \override Beam #'positions = #'( -3.1 . -3.3 )
angleBeamSix = \once \override Beam #'positions = #'( -1.0 . -2.2 )
angleBeamSeven = \once \override Beam #'positions = #'( 0.9 . 0.8 )
angleBeamEight = \once \override Beam #'positions = #'( 2.5 . 2.9 )
angleBeamNine = \once \override Beam #'positions = #'( 0.6 . 1.4 )

nb = \noBreak

firstTrebleVolta = {
		gis8-3(^\tempoLegend a16-4 b-5 a4-4 gis)^\switchThreeFour\nb	| % 1
		fis8-3 dis-2 \preTrill e2\trill^\switchFourThree	 \nb	| % 2
		b8(-1 d)-3 d(-4 cis)-3 cis(-4 b)-3			 \nb	| % 3
		b16-5 a-4 gis fis gis4\trill e-1					| % 4
		gis'8-3 a16 b a4-4 gis^\switchThreeFive	\nb	| % 5
		ais,8-1^[ cis-2] fis2-5					\nb	| % 6
		
		fis,8-1 gis16-2 ais-3 b8-1 cis16-2 dis-3 e8 dis16 cis	\nb	| % 7
		fis16-5 e-4 dis cis  b2-1				\nb	| % 8
	}
	secondTrebleVolta = {
		dis8(-2 e16 fis e4 dis)		| % 9
		a'8-5( fis-2 \preTrill gis2)\trill^\switchFourThree	\nb	| %10
		bis,8(-1 fis')-3 fis(-4 e)-3 e(-4 dis)-3		\nb	| %11
		dis16-4 cis bis cis dis4-4 gis,-1			\nb	| %12
		d'16-3 cis-2 bis-1 cis
		d16 cis bis cis \lessTextScriptPriority b'!4^\tenFive		\nb	| %13
		d,16-3 cis bis cis
		d16 cis bis cis a'4^\tenFive			| %14
		gis,8-1 ais16-2  bis-1 cis8-3 dis16
		      e dis8-4 cis16 bis				\nb	| %15
		cis4\prallmordent^\locoFingering cis2-5				\nb	| %16
		gis8(-2 a!16 b a4\prall-3 gis)-2			\nb	| %17
		d'8-5 b-4 cis2-5 \stemUp 			\nb	| %18
		ais8-3 b16 cis b8 ais gis fis-1 \stemNeutral			| %19
		e'16-5 dis! cis e dis4-4 b-1 ~				\nb	| %20
		b16 cis-2 dis-3 e-4  fis-5 e dis e \stemDown a,4-1 ~		\nb	| %21
		a16-1 cis-2 dis-3 e-4 fis-5 e dis e \stemUp gis,4-1 ~			\nb	| %22
		gis8 ais16-2 b-3  cis-4 b ais b
		      \angleBeamEight fis8-1 dis'-4 \stemNeutral	\nb	| %23
		dis16-2 e fis dis  \grace { dis4 }  e2\prallmordent		| %24
	}
%--------------------------- TYPESET

LessonXLVIIIUpper = \relative c'''{
	\clef treble
	\setTempo
	\repeat volta 2 {
	\firstTrebleVolta
	}
	\repeat volta 2 {
	\secondTrebleVolta
	}
}

LessonXLVIIILower = \relative c' {
	\clef bass
	
	\repeat volta 2 {
	e8-1 dis-2 cis-3 e-1 b-3 e-1			| % 1
	a,8-3 b-2 gis-4 b-2 fis-5 b-2				| % 2
	gis8-4 e'-1 a,-3 e'-1 gis,-4 e'-1			| % 3
	fis,8-5[ dis'-2] e-1 e,-5 gis-3 b-2			| % 4
	e8-1 dis-2 cis-3 e b-3 e			| % 5
	cis8-2 e b-3 e ais, e'-1					| % 6
	b8-2[ dis-1] dis,-5 b'-1 fis-4 ais-2			| % 7
	b8-1 fis-2 dis-3 fis-2 b,4-5					| % 8
	}
	
	\repeat volta 2 {
	b'8-1 a!-2 gis-3 b fis-4 a-2				| % 9
	bis8-1[ cis-2] dis-1 fis,-4 cis'-1 e,-2		| %10
	dis8-3 cis-4 bis-5 gis'-1 cis,-4 gis'-1				| %11
	\stemUp \angleBeamOne gis,8-5[ \stemDown a']-1
	     gis-2 a16 gis fis8-3 gis16 fis	| %12
	eis8-4 gis-2 cis,-5 gis'-2 eis-4 gis-2			| %13
	fis8-3 a-1 e!-4 gis-2 dis!-4 fis-2			| %14
	\stemDown \angleBeamTwo e8-3 dis-4 e-3 fis-2 gis-1 \stemUp gis,-5	\stemNeutral		| %15
	cis8-1[ gis-2] cis, gis' cis-1 dis-2	| %16
	e8-1[ b-2] \stemUp \angleBeamThree e, \stemDown e' dis e					| %17
	\stemUp \angleBeamOne a,8-5[ \stemDown a'-1] e-2 cis-3 e-2 g-1 \stemDown		| %18
	\angleBeamFive fis8^\switchTwoOne[ cis-2] \angleBeamSix \stemUp fis,-5 \stemDown fis' eis fis		| %19
	\stemUp \angleBeamSeven b,8[ \stemDown b'] fis-2 dis-3 fis a				| %20
	b8-2 b,-5 a'-1 cis,-5 b'-1 dis,-5			| %21
	cis'8-2 e,-5 dis'-1 fis,-5 e'-1[ dis-2]			| %22
	cis8-3 b-1 ais-2 fis-3 \angleBeamNine b-1[ \stemUp b,-5]		| %23
	e8-1 b e, b' \stemNeutral e4						| %24
	}	
}
