\version "2.16.1"
\include "definitions.ily"

% LESSON VII: Gavotta by Corelli

LessonVIIUpper= \relative c''{
	\clef treble
	\time 2/2
	\key c \major
	\tempo "Allegro" 2=110
	\hideTempo
	\repeat volta 2 {
		a4-1 <b gis>-2-3 <a c>-1-4 r4|
		<a c>-1-3 <b d>-2-4 <c e>-3-5 r|
		<e g>-2-4 <e a>-2-5 <f a,>-1-3 r|
		<a, c>-2-4 <b d>-3-5 <gis e'>2|
	}
	\repeat volta 2 {
		<gis b>4-2-3 <b e>-3-5 <c e,>-1-4 r|
		a-3 <a d>-3-5 <b d,>-1-4 r|
		<<{g'4-4 e-2 a8-5 g-4 f-3 e-2|}\\
		{c4-1 g'-4 c,2-1|}>>
		\preTrill d2\trill^\trillThree c-1|
		<<{e4-2-3 a-5 fis2-1-4|fis4-2-3 b-5 gis2-1-4|a4-3-5 e-1-4 f8-1-5 e-4 d-3 c-2|}\\
		{cis2\p d|dis2 e|e4\f a, a2|}>>
		\preTrill b2\trill^\trillThree a-1|
	}
}
	
LessonVIILower= \relative c'{
	\clef bass
	\time 2/2
	\key c \major
	\repeat volta 2 {
		r2 a4-1 e-2|a,2-5 c'4-1 g-2|c,2-5 d4-4 e-3|f2-2 e-3|
	}
	\repeat volta 2 {
		r2 a4-1 g-2|fis2-3 g4-1 f-2|e2-3 f4-2 c-5|g'-1 a,-5 c-3 b-4|
		a2-5 d4-2 c-3|b2-5 e4-2 d-3|c2-5 d4-4 a'-1|
		<<{gis2-3-2 a-5-1|}\\{e4 e-3 a,2|}>>
	}
}
