\version "2.16.1"
\include "definitions.ily"

% LESSON IV: Air in Saul de Handel.

LessonIVUpper = \relative c''{
	\clef treble
	\time 3/4
	\tempo 4 =65 \hideTempo  % published score tempo: "Andante Larghetto"
	\key c \major
	\repeat volta 2 {
		g2.-3|e-3|a4-3 g-1 c-3|b-1 e-3 d-1|f-3 e-2 a-5|g-4 f8-3 e-2 d-1 c-2|
		b-1 c-2 \preTrill c4.\trill^\trillThree b16-1 c-2| d2.-3|g-5|
		\preTrill e4.\trill^\trillFour d8-2 e4-1|a-3 g-2 c-5|b-4 a-3 g-2|
		f-1 e-4 d-3|g,4.-1 a16-2 b-3 c4-1|f-4 \preTrill d4.\trill^\trillThree c8-1|
	}
	\alternative {{c2.-4|} {c2.-2|}}
	\repeat volta 2 {
	e,4-1 fis-2 gis-3|a8-1 b-2 \preTrill b4.\trill^\trillThree a16-1 b-2|c4-3 cis2-4|
	d8-1 e-3 \preTrill e4.\trill^\trillFour d16-2 e-3| f4-4 f-5 e-4|d2-3 c4-2|
	b-1 a8-3 [gis-2 a-3 b-4]|gis2.-2|e'-5|
	
	c-1|g'-3|e-1|e-5|a4-3 gis-2 a-1|b-3 d8-5 c-4 b-3 a-1|
	gis4.-2 a8-3 \grace b16-4 a8-3 g16-2 a-3|b4-4 e,-1 d-2|\grace c8-1 c'4-5 b8-4 c-5 a4-3|
	b-4 gis4.-2 a8-3|
	\pageBreak
	a2.-5|g2.-4|
	e^\switchTwoFive |
	a,4-2 g-1 c-3|b-1 e-3 d-1|f-3 e-2 a-5|
	g-4 f8-3 e-2 d-1 c-3|b-2 c-3 \preTrill c4.\trill^\trillFour b16-2 c-3|d2-4 r4|g,2.-2|e-1|
	a'4-3 g-2 c-5|\grace c8-5 b4-4 a8-3 b-4 g4-2|f-1 e-4 d-3|g,4.-1 a16-2 b-3 c4-1|f-5 e-4 d-3|
	g,4.-1 a16-2 b-3 c4-1|f-3 e-2 d-1|c'-5 b8-4 a-3 g-2 f-1|e4-3 f-4 d-2|c2.-1
	}
}
	
LessonIVLower =  \relative c{
	\clef bass
	\time 3/4
	\key c \major
	\repeat volta 2 {
		c4-2 b-3 g-5| c-2 e-1 c-5|f-2 e-3 c-5|g'-2 c-1 b-2|a-3 g-1 f-2|e-3 c-5 f-2|
		g-1 e-3 c-5|g'-1 b-2 a-3|b-2 g-2 b-2|c-1 g-2 c,-5|f-2 e-3 c-5|g'-2 c-1 b-2|
		a-3 g-1 f-2|e-3 c-5 a'-1|f-2 g-1 g,-5|
	}
	\alternative{
		{c4-3 g'8-1 f-2 e-3 d-1|}
		{c4-3 g'8-1 f-2 e-3 d-4|}
	}
	\repeat volta 2 {
	c4-5 c'-1 b-2|a-1 gis-2 e-4|a-1 e-4 g-2|f-1 cis-3 a-5|d2-2 c4-1|b-2 gis-4 a-3|
	d-1 e-3 f-2|e-4 b'-1 a-2|gis-3 fis-4 e-5|a-2 c-1 a-2|b-1 g-3 b-1|c,-5 c'-1 b-2|
	a-3 a-3 g-4|f-5 f'-5 e-2| d-3 b-5 d-2|e-1 e,-5 fis-3|gis-1 gis,-5 gis'-1|a-1 b-4 c-3|
	d-2 e-1 e,-5|a-3 c-1 a-3|b-2 g-4 b-2|c-1 g-2 c,-5|f-2 e-3 c-5|g'-2 c-1 b-2|a-3 g-1 f-2|
	e-3 c-5 f-2|g-1 e-3 c-5|g'-1 g,-5 a-4|b-3 g-5 b-3|c-2 e-1 c-4|f-1 e-3 c-5|g'-1 f-3 e-4|
	a-1 g-2 f-3|e-4 g-2 a-1|d,-5 g-2 f-3|e-4 g-2 a-1|d,-5 g-2 f-3|e-4 a-1 b-2|c-1 f,-3 g-2|c,2.-5|
	}
}
