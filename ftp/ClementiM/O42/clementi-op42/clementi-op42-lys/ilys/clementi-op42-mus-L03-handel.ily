\version "2.16.1"
\include "definitions.ily"

%LESSON III. Air del'Opera Atalante de HANDEL

LessonIIIUpper = \relative c''{
	\key c \major
	\clef treble
	\time 4/4
	\tempo 4 = 80 \hideTempo
	\repeat volta 2 {
	\set Score.measurePosition = #(ly:make-moment 1 2)
	e4-3-\tweak #'stencil ##f \mf f8-4 e-3|
	d4-2 g-5 c,-1 d8-2 e-3|
	d2-2 f4-4 g8-5 f-4|
	\grace f8-4 e4-3 d8-2 c-1 \preTrill d2^\trill^\trillThree|
	\set Score.measurePosition = #(ly:make-moment 1 2) c2-1|
	}
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 1 2) 
		e4-2\<	f8-3 g-4\!|
		a4-5 a-5 \grace a8-5 g4-4 f-3|
		e2-2 e4-2 e8-2 f-3| g4-4 a8-5 g-4 f4-3 e-2| d2-1 e4-3 f8-4 e-3|
		d4-2 g-5 c,-1 d8-2 e-3| d2-2 f4-4 g8-5 f-4| 
		\grace f8-4 e4-3 d8-2 c-1 \preTrill d2^\trill^\trillThree|
		\set Score.measurePosition = #(ly:make-moment 1 2) c2-1|
	}	
}

LessonIIILower = \relative c'{
	\key c \major
	\clef bass
	\time 4/4
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 1 2) c2-2
		b-3 c-2
		g-5 d'4-1 b-3
		c-2 a-4 g-5 g-5
		\set Score.measurePosition = #(ly:make-moment 1 2) c2-2
	}
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 1 2) c4-4
		d8-3 e-2    f4-1 f-1 e-2 d-3
		c2-4 c4-4 c8-4 d-3     e4-2 f8-1 e-2 d4-1 c-2     g2-5 c-2
		b-3 c-2    g-5 d'4-1 b-3     c-2 a-4 g-5 g-5
		\set Score.measurePosition = #(ly:make-moment 1 2) c2-2
	}
}
