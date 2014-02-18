\version "2.16.1"
\include "definitions.ily"

% LESSON XLVIII. Prelude in F minor.

global = { \key e \major \time 2/4 }

%---------------------------DEFINITIONS
tempoLegend = \markup { \right-align "Moderato" }
trillTurnThreeTwo = \markup {  \override #'( baseline-skip . 1.0 ) \column {  {\up-tied-lyric \finger 3 \finger 2 } \left-align{ \musicglyph #"scripts.turn" \musicglyph #"scripts.trill" } } }
allowFingeringInStaffAlways = \override Fingering #'staff-padding = #'()
raiseFingeringABit = \override Fingering #'extra-offset = #'(0.0 . 0.1 )
alignBeamOne = \once \override Beam #'positions = #'( -1.3 . -1 )
alignBeamTwo = \once \override Beam #'positions = #'( -5.6 . -3.2 )
alignBeamThree = \once \override Beam #'positions = #'( 4.1 . 6.5 )
trillTurnTwoThree = \markup{ \left-align \override #'( baseline-skip . 1.2 ) \column { \musicglyph #"scripts.trill" \musicglyph #"scripts.turn" \center-align { \finger \concat { "2" \hspace #0.4 "3 "} \raise #-1 \rotate #-180 \char ##x2040 } } }
raiseRest = \override MultiMeasureRest #'staff-position = #4
shapeSlur = \once \override Slur #'control-points = #'( ( 1.4944 . -0.4981) ( 4.4832 . 0.249) ( 8.3022 . 0.166) ( 12.287 . -1.0792) )
shapeSlurTwo = \once \override Slur #'control-points = #'( ( 1.594 . 1.394) ( 6.7746 . 1.892) ( 10.361 . 0.797) ( 12.951 . -0.4981) )
nb = \noBreak
%---------------------------

LessonXLVIIIUpperPrel= \relative c''{
	\clef treble
	\tempo 4=66 \hideTempo
	\showTupletBracket
	
	\partial 8
	\times 2/3 {b16-2 cis-3 dis-4}	\nb	| %partial
	e8([-5 b-2 cis-3 a)]-1		\nb	| %1
	gis4.-2 \times 2/3
	{ a16-3 gis-2 a-3 } 		\nb	| %2
	b8([-5 fis-2 gis-3 e)]-1	\nb	| %3
	dis4.-2 \hideTuplet \hideTupletBracket 
	\times 2/3
	{ e16(-3 dis-2 e)-3 }		\nb	| %4
	fis8^(^[-4 cis-2 \staffDown 
	b-1 ais])-2				| %5
	\stemUp a4^(-1 gis8[-2 cis)]-5	\nb	| %6
	\alignBeamThree
	\times 4/6 {
	fis,16-2 gis-3 a-1 b-2 cis-3 dis-4 }
	e8-5 e,-1			\nb	| %7
	b'8^([-5 a-4 gis-3 a)]-4	\nb	| %8
	\preTrill
	fis4^\trillTurnThreeTwo e-1	\nb	| %9 
	\raiseRest R2				| %10
	\bar "|."
}

LessonXLVIIILowerPrel= \relative c' {
	\clef bass
	\showTupletBracket
	
	\partial 8
	r8					| %partial
	r4 r8 \times 2/3 { b16(-4 cis-3 dis)-2 }| %1
	e8([-1 b-3 cis-2 a-3]) 			| %2
	gis4.^\switchFourThree \times 2/3 
		{ a16(-2 gis-3 a)-2 }		| %3
	b8([-1 fis-3 gis-2 e-3)]		| %4
	\hideTuplet \hideTupletBracket \pushFingeringDown
	dis4.^\switchFourThree \times 2/3
	{  <e_2>16( <dis_3> <e_2>) }		| %5
	\forceFingeringToStem
	\revertFingeringOffset
	\shapeSlurTwo
	<fis_1>8(_[ <cis_2> <b_3> <ais_4>)]	| %6
	\stemDown
	a!4(_\switchInvertedFiveThree
	\setFingeringLeft
	<gis-4>8) \setFingeringRight
	<cis-2>					| %7
	\hideTuplet \hideTupletBracket
	\allowFingeringInStaffAlways
	\raiseFingeringABit \alignBeamTwo
	\times 4/6 {fis,16-5 gis-4 a-3 b-1 cis-3 dis-2}
	\stemDown \alignBeamOne 
	\setFingeringLeft
	<e-1>8 
	\stemUp \setFingeringRight
	\ignoreClashNoteOnce
	<e,-5>					| %8
	\revertFingeringPadding
	\revertFingeringOffset
	\forceFingeringToStem
	\stemDown \shapeSlur
	<b'_1>8([ <a_2> <gis_3> <a_1>)]		| %9
	\stemUp
	fis4_\trillTurnTwoThree <e-4>		| %10	
}
