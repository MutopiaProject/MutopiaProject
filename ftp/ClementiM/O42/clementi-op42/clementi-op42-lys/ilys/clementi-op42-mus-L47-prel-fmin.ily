\version "2.16.1"
\include "definitions.ily"

% LESSON XLVII. Prelude in F minor.

global = { \key f \minor \time 4/4 }

tempoLegend = \markup { \right-align "Moder.e sempre legato" }

LessonXLVIIUpperPrel= \relative c''{
	\clef treble
	\tempo 4=66 \hideTempo
	
	c8(-5 aes-3 g-2 bes-4 aes-3 f-2 e-1 g-3)_\tempoLegend 	| %1
	f4.(-2 g8-3 e-1 bes'-4 aes-3 g-2)			| %2
	f-1 d'-5 c bes  aes g-1 f-3 e-2 			| %3
	f4.-5 bes,8-3 \staffDown \stemUp aes-2 g-1 f-3 e-2	| %4
	f8-5 c-3 aes4-2 f'2\rest\fermata			| %5
	\bar "|."
}

LessonXLVIILowerPrel=\relative c,{
	\clef bass
	r2 f8(-5 aes-3 bes-2 g-4			| %1
	aes-3 c-1 des-2 bes-3) c4.(-1 bes8)-3		| %2
	des-2 g,-5 aes-2 bes-2 c-1 e,-5 f-3 g-1		| %3
	aes-3 bes-2 c-1 des-2 \stemDown <c_1>4. 
	    \once \override Voice.Fingering #'extra-offset = #'(0.0 . -5.3 )
	    <aes,-5>8					| %4
	<f'_1>4. \stemUp f,8 \stemDown f'2		| %5	
}
