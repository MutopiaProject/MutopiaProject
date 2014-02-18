\version "2.16.1"
\include "definitions.ily"

%LESSON II: Aria

LessonIIAriaUpper = \relative c'' {
	\clef treble
	\tempo 4 = 110 \hideTempo
	\time 2/4
	\key c \major
	\repeat volta 2 {
		c4-1 c-1 |
		g'-4 g-4 |
		a-5 a-5 |
		g2-4 |
		f4-3 f-3|
		e-2 e-2| 
		d-1 d8-2 e-3|
		c2-1|
	}
	\repeat volta 2 {
		g'4-5\p g-5|
		f-4 f-4|
		e-3 e|
		d-2 d|
		g-5 g|
		f-4 f|
		e-3 e8-3 f-4|
		d2-2|
		c4-1\f c-1|
		g'-4 g|
		a-5 a|
		g2-4|
		f4-3 f-3|
		e-2 e-2|
		d-1 d8-2 e-3|
		c2-1
	}
}
LessonIIAriaLower = \relative c {
	\clef bass
	\time 2/4
	\key c \major
	\repeat volta 2 {
		c2-5|
		e-3|
		f-2|
		e4-3 c-5|
		g'2-1|
		c,-5|
		g'-1|
		c,-5|
	}
	\repeat volta 2 {
		e'4-1-\hidePiano g,-5|
		d'-1 g,-5|
		c-2 g-5|
		b-3 g-5|
		e'4-1 g,-5|
		d'-1 g,-5|
		c-2 g-5|
		b-3 g-5|
		c-1-\hideForte g-2|
		e-4 c-5|
		f2-2|
		e4-3 c-5|
		g'2-1|
		c,-5|
		g'4-1 g,-5|
		c2-3|
	}
}
