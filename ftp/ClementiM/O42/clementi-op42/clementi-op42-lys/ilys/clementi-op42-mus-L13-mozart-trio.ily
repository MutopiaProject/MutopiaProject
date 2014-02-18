\version "2.16.1"
\include "definitions.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  TRIO

LessonXIIIUpperB= \relative c'' {
		\time 3/4
		\key f \major 
		\clef treble
		\tempo 4=100 \hideTempo
		\repeat volta 2 {
		%LINE 1
			\set Score.measurePosition = #(ly:make-moment 2 4)
			c'8.-5 c16-5|
			b8-4(\fz c-5) a-3(\fz bes-4) g-2(\fz a-4)|
			f4-2( c8-1 f-2)	\preTrill f8.\trill^2 e32-1 f-2|
		%LINE 2
			g4-3( c,8-1 g'-2) \preTrill g8.\trill^2 f32-1 g-2|
			a16-3 bes-4 a-3 g-2 f8-.-1 g-.-2 a-.-3 bes-.-4|
			b-4(\fz c-5) a-3(\fz bes-4) g-2(\fz a-4)|
			f4-2( c8-2 f-2) \preTrill f8.^2\trill e32-1 f-2|
			g8-3-. g-.-2 g-.-2 g-.-2 g-2( bes16-4 a-3)|
			\set Score.measurePosition = #(ly:make-moment 1 4)
			f4-1 r
		}
		\repeat volta 2 {
			\set Score.measurePosition = #(ly:make-moment 2 4)
			<f a>8.-1-3 <a c>16-3-5|
			<a c>8-3-5 <g bes>-2-4 <e g>4-1-2 c16-1\fz e-2 g-4 e-2|
			\preTrill f8-3\turn a16-5 f-3 c4-1 <f a>8.-1-4 <a c>16-3-5|
			<a c>8-3-5 <g bes>-2-4 <e g>4-1-2 c16-1 e-2 g-4 e-2|
			\preTrill f8\turn-3 a16 f c4 c'8-2 f-5|
			\grace f16-5 e8-4 d-3 \grace d16-4 c8-3 bes-2 \grace bes16-3 a8-2 g-1|
			f4-2( c8-1) f-2 \preTrill f8.\trill-2 e32-1 f-2|
			g8-.-3 g-.-2 g-.-2 g-.-2 g-2( bes16-4 a-3)|
			\set Score.measurePosition = #(ly:make-moment 1 4)
			f4-1 r
		}
}
LessonXIIILowerB= \relative c {
	\time 3/4
	\key f \major 
	\clef bass
	\repeat volta 2 {
		%LINE 1
			\set Score.measurePosition = #(ly:make-moment 2 4) r4-\hidePiano |
			<<{r4 <c f>-2-1 <c f>|r  <c f> <c f>}\\{f,2.-5|f|}>>
		%LINE 2
			<<{r4 <c' f> <c f>|r <c f> <c f>|r <c f> <c f>|r <c f> <c f>|r <c f> <c f>}
			\\{f,2.|f|f|f|f}>>
			\set Score.measurePosition = #(ly:make-moment 1 4)
			f4 f'
	}
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 2 4)
		r4|
		r r <c g' bes>8. <c g' bes>16|<f a>2-3-1 r4|
		r r <c g' bes>8. <c g' bes>16|<f a>2 r4|r2.|
		<<{r4 <c f> <c f>|r <c f> <c f>}\\{f,2.|f}>>
		\set Score.measurePosition = #(ly:make-moment 1 4)
		f4 f'^\markup{\right-align "Men.D.C."}
	}
}
