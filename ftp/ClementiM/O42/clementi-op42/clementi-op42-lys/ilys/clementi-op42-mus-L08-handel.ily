\version "2.16.1"
\include "definitions.ily"

% LESSON VIII: Air, in Judas Maccabeus, by Handel

LessonVIIIUpper= \relative c'' {
	\time 2/4
	\clef treble
	\key f \major
	\repeat volta 2{
		c4-5 a8.-3 bes16-4|
		\grace {a16-3[ bes-4]} c4-5 f,-1|
		g16-2 a-3 bes-4 c-5 bes8-4 a-3|
		a4-2 g-1|
		a16-2 bes-3 c-4 d-5 c8-3 c-2|
		f4-5 c-2|
		\grace c16-5 bes8-4 a16-3 bes-4 \preTrill g4\trill^\trillThree |
		f2-1|
	}
	\repeat volta 2{
		a16-3 g-2 a-3 bes-4 a8-3 a-3|
		g4-2 f-1|
		bes8-4 a-3 g-2 f-1|
		\preTrill f4\trill^\trillThree e-1|
		d'16-3 cis-2 d-3 e-4 d8-3 e-4|
		f4-5 d-3|
		\grace f16-5 e8-4 d16-3 c-2 d8-3 b-1|
		\preTrill c2\mordent^\trillThree|
		c4-5 a8.-3 bes16-4|
		c4 f,|
		g16 a bes c bes8 a|
		a4 g|
		a16 bes c d c8 c|
		f4 c|
		\grace c16 bes8 a16 bes g4\trill|
		f2| 
	}
}
LessonVIIILower = \relative c {
	\time 2/4
	\clef bass
	\key f \major
	\repeat volta 2 {
		f2-5|a-3|c4.-1 f,8-5|c'2-1|f,-5|a8-3 g-4 a-3 f-5|g-4 f-5 c'-1 c-1|f,2-5|
	}
	\repeat volta 2{
		f4.-3 f8-3|e4-4 d-5|g8-2 f-3 e-4 d-5|a'4.-1 g8-2|f4.-3 e8-4|d4-5 g-3|
		c8-1 a-3 f-5 g-4|c4-1 c16-1 bes-2 a-3 g-4|f2-5|a|c4. f,8|c'2|f,|
		a8 g a f|g f c' c|f,2|
	}
}
