\version "2.16.1"
\include "definitions.ily"

% LESSON XVIII. Ah vous dirai - je maman.

LessonXVIIIUpperB = \relative c''{
	\clef treble
	\key g \major
	\time 2/4
	\tempo 4 = 110
	\hideTempo
	\repeat volta 2{
	%LINE 1
		g4-1 g-1|
		d'-3 d-2|
		e8-3 fis-4 g-5 e-3|
		d2-2|
		c4-1 c-4|
		b-3 b-3|
		\grace b16-3 a8-2 g-1 a-2 b-3|
		g2-1|
	}
	\repeat volta 2{
		d'4-5 d-5|
		c-4 c-4|
		b-3 b-3|
		\grace c8-4 b4-3 a-2|
	%LINE 2	
		d-5 d-5|
		\grace d8-5 c4-4 c-4|
		b8-3 c-4 d-5 b-3|
		a2-2|
		g4-1 g-1|
		d'-3 d-2|
		e8-3 fis-4 g-5 e-3|
		d2-2|
		c4-1 c-4|
		b-3 b-3|
		\grace b16-3 a8-2 g-1 a-2 b-3|
		g2-1
	}
}
LessonXVIIILowerB = \relative c{
	\clef bass
	\key g \major
	\time 2/4
	\repeat volta 2{
	%LINE 1
		g4-5 g'-1|
		b-2 g-4|
		c-1 g-4|
		b-1 g-3|
		a-2 d,-5|
		g-3 d-5|
		<fis c'>-1-3 d-5|
		<g b>2-2-1|
	}
	\repeat volta 2{
		d4-5 b'-1|
		d,-5 a'-1|
		d,-5 g-2|
		d-5 fis-3|
	%LINE 2
		d-5 b'-1|
		d,-5 a'-1|
		d,-4 g-1|
		d-3 fis-2|
		g,-5 g'-1|
		b-2 g-4|
		c-1 g-3|
		b-1 g-2|
		e-4 fis-2|
		g-1 g,-5|
		d'-1 d,-5|
		g-1 g,-5|
	}
}
