\version "2.16.1"
\include "definitions.ily"

%LESSON I MODERATO DE MOZART

LessonIModeratoUpper = \relative c'''{
	\clef treble
	\time 4/4
	\key c \major
	\tempo "Moderato" 4 = 100 
	\hideTempo
	\repeat volta 2 {
	\set Score.measurePosition = #(ly:make-moment 3 4)
	g8-4\p f-3|
	e4-2 e-2 e-2 e-2 |
	g8-4 f-3 f4-3 r4 f8-3 e-2 |
	d4-1 d-1 d-1 d-1 |
	f-3 e-2 r e8-2\f f-3 |
	g4-4 g-4 g-4 g-4 |
	f4.-3 g8-4 a4-5 f-4|
	e8-3 e-3 e4-3 d8-2 d-2 d4-2 |
	\set Score.measurePosition = #(ly:make-moment 1 4) c-1 e-3 c-1| 
	}
	\repeat volta 2 {
	\set Score.measurePosition = #(ly:make-moment 3 4)
	f8-3\p e-2 |
	d4-1 d d d |
	f-3 e-2 r e-2 |
	f-3 f f f |
	f-3 e-2 r e8-2\f f-3|
	g4-4 g g g |
	f4.-3 g8-4 a4-5 f-4|
	e8-3 e-3 e4-3 d8-2 d-2 d4-2 |
	\set Score.measurePosition = #(ly:make-moment 1 4) c-1 e-3 c-1 |
	}
}
LessonIModeratoLower =  \relative c'{
	\clef bass
	\time 4/4
	\key c \major
	\repeat volta 2 {
	\set Score.measurePosition = #(ly:make-moment 3 4) r4-\hidePiano
	c2-1 c-1   g-4 g-4   b-2 b-2
	c-1 c   e,-5-\hideForte e   f-4 f  g-3 g
	\set Score.measurePosition = #(ly:make-moment 1 4)
	c2-1 c4}
	\repeat volta 2{
	\set Score.measurePosition = #(ly:make-moment 3 4)
	r4-\hidePiano   <g b>2-4-2 <g b>
	<g c>-4-1 <g c>    <g b>2-4-2 <g b>   c-1 c-1
	e,-5-\hideForte e     f-4 f    g-3 g
	\set Score.measurePosition = #(ly:make-moment 1 4)
	c2-1 c4}
}
