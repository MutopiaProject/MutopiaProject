\version "2.16.1"
\include "definitions.ily"

% LESSON XXIX. Prelude in E minor.

LessonXXIXUpperPrel= \relative c''{
	\key e \minor
	\clef treble
	\time 4/4
	\stemDown
	r16 e-5 dis-4 e-5 b-2 e-5 a,-1 e'-5 g,-1 e'-5 fis,-2 e'-5 e,-1 e' fis,-2 e'|
	g,-1 e' fis,-2 e' g,-1 e' gis,-2 e' a,-1 e' gis,-2 e' a,-1 e' ais,-2 e'|
	b-1 e-3 dis-2 fis-4 e-1 g-3 fis-2 a-4 g-3 b-5 a g fis e dis-2 fis-4|
	\stemNeutral
	e-3 d-2 c-1 b-3 a-2 g-1 fis-2 e-1 r c'-5 b-4 a-3 g-1 fis-2 e-1 dis-2|
	e1-1|r\fermata \bar "|."
}

LessonXXIXLowerPrel=\relative c{
	\key e \minor
	\clef bass
	\time 4/4
	<e e,>1|\noBreak
	<c c,>|\break
	<b b,>|\noBreak
	<<{<g' e>2-5-3-1 <a fis dis>-3-2-1|\break}\\{b, b-5|\break}>>
	r16 e-1 dis-2 e-1 b-4 e c-3 e b-4 e a,-4 e' g,-4 e' fis,-4 e'|\noBreak
	\allowFingeringInStaff
	e,1-5\fermata
	\bar "|." \stopStaff
	\repeat unfold 64 {s32}|    %To avoid excessively streched last bars
}
