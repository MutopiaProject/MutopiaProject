\version "2.16.1"
\include "definitions.ily"

% LESSON VIII: Prelude in F Major

LessonVIIIUpperPrel= \relative c'{
	\clef treble
	\key f \major
	\time 2/4
	r16 f-1 g-2 a-3 bes-4 c-1 d-2 e-3|
	f-1 g-2 a-3 g-2 f-1 e-3 d-2 c-1|
	<bes g>4-2-4 <f a>-1-3|
	r16 d-1 g-2 bes-3 d-5 bes-3 g-1 d-1|
	r16 g,-1 bes-2 c-3 e-5 c-3 bes-2 g-1|
	s4 f'-5|
	\bar "|."
}
LessonVIIILowerPrel=\relative c'{
	\time 2/4
	\clef bass
	\key f \major
	<c a f>2~-5-2-1|
	<c a f>|
	<e, g c>4-5-3-1 <f a c>-3-2-1|
	<bes, bes,>2-5-1|
	<c c,>|
	<<{r16 f-1 a-2 c-3 s4|}\\{<f,, f,>2|}>>
	\bar "|."
}
