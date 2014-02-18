\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIII. Gavotta in Otho, by Handel.

LessonXXXIIIUpper=\relative c''{
	\key bes \major
	\time 2/2
	\clef treble
	\tempo 2 = 67 \hideTempo 
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 2 4)
		d4-2 g-5
		\grace g8-5 f4-4 ees8-3 d-2 c4-1 d8-4 bes-2|
		a4^3_\prallmordent-\tweak #'stencil ##f \prallmordent g8-2 f-1 bes-3 f-1 bes-3 d-5|c-4 f,-1 a-2 c-4 bes-3 f bes d|
		c-4 f, a c bes4-2 g'-5| 
		\grace g8-5 f4-4 ees8 d c4 d8 bes|
	%LINE 2
		a4\prallmordent g8
		\once \override Slur #'control-points = #'( ( 2.3757 . -0.4598) ( 3.5252 . -0.4598) ( 4.3682 . -0.0) ( 5.2112 . 0.536) )
		f_( \grace{c'16-3[ d-4]} ees4-5_) d8-4 c-3|
		\grace ees8-5 d4-4 c8-3 bes-2 \preTrill a4.\trill^\trillFour bes8-4|
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<bes f d>2-1-2-4
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		f'4-1 bes-4
		a\prallmordent-3 g8-2 f-1 g4-3 a8-4 f-2|
		<<{s2 <c a>2-1-3-5|}
		\\{\preTrill e4^\prallmordent^\trillFour d8^\markup{\finger 2} c^\markup{\finger 1} f,2|}>>
		<<{<c'g>-1-2-5 <c a>-1-3-5|}\\{e, f|}>>
	%LINE 3
		<<{<c' g>2-1-2-5 s|}\\{e, c'4^\markup{\finger 1}bes'^\markup{\finger 4}|}>>
		a-3\prallmordent g8-2 f-1 g4-3 a8-4 f-2|e4\prallmordent-3 d8-2 c-1 \grace c8-4 bes4-3 a8-2 g-1|
		a4-3 bes8-4 c-5 a4-3 g8\prall-2 f-1|f2-1 a'4-5 d,-1|cis\prallmordent-3 b8-2 a-1 a'4-5 d,-1|
	%LINE 4
		cis4\prallmordent-3 b8-2 a-1 f'-4 a,-1 d-2 f-3|bes-5 d,-1 g-3 bes-5 e,-2 c-1 e-2 g-4|
		a-5 c,-1 f-3 a-5 d,4-1 bes'-5|\grace bes 8-5 a4-4 g8-3 f-2 \preTrill e2\trill^\trillFour|
		<<{d2-1-2-4 s|}\\{<a f> d4^\markup{\finger 2} g^\markup{\finger 5}|}>>
		\grace g8 f4 ees8 d c4 d8 bes|
		<<{a4\prallmordent g8 f <f'd>2-2-4-5|}\\{s bes,|}>>
	%LINE 5
		<<{<f' c>2-1-3-5<f d>-2-4-5|<f c>-1-3-5 s|}\\{a, bes|a bes4^\markup{\finger 2} g'^\markup{\finger 5}|}>>
		\grace g8 f4 ees8 d c4 d8 bes|
		a4_\prallmordent g8
		\once \override Slur #'control-points = #'( ( 2.3757 . -0.4598) ( 3.5252 . -0.4598) ( 4.3682 . -0.0) ( 5.2112 . 0.536) )
		f_( \grace{c'16[ d]} ees4_) d8 c|\grace ees8 d4 c8 bes a4.\trill bes8|
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<bes f d>2
	}
}
LessonXXXIIILower=\relative c{
	\key bes \major
	\clef bass
	\time 2/2
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 2 4)
		bes4-5 ees-2 
		d4-3 bes-5 ees-2 g-1|
		f4-2 ees-3 d-1 bes-3|
		<f' f,>2 d4-2 bes-3|
		<f' f,>2 d4-4 ees-3|
		f-2 bes-1 ees,-3 c-5|
	%LINE 2
		f4-2 d-5 g-2 a-1|
		bes4-2 ees,4-5 f4-1 f,4-5
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<<{<f'd>2-3-2-1}\\{bes,}>>
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		a'4-1 g-2 
		f-3 a-1 bes-2 g-4|
		c2-1 f,8-3 c-5 f-3 a-1|
		g-2 c,-5 g'-1 bes-2 a-1 c,-5 f-3 a-1|
	%LINE 3
		g8-2 c,-5 e-4 g-2 a4-1 g-2|
		f-3 a-1 bes-2 g-4|
		c-1 a-2 d,-5 e-3|
		f-1 bes,-3 c-1 c,-5|
		f8-3 c'-1 d-3 e-2 f4-1 g-2|
		<<{a2 s|}\\{a, f'4^\markup{\finger 3} g^\markup{\finger 2}|}>>
	%LINE 4
		<<{a2 s|
		bes-3-2 s4 c,-5|
		a'2-3-1 s|}
		\\{a,2 d'4^\markup{\finger 1} d,^\markup{\finger 5}|g2 c4^\markup{\finger 1}s|
		   f,2 bes4^\markup{\finger 2} g^\markup{\finger 3}|}>>
		   a4-1 d,-4 a'-1 a,-5|
		<<{<a'f>2-3-2-1 s4 <ees ees,>|}
		\\{d2 <bes' bes,>4 s|}>>
		<d, d,><bes bes,><ees ees,><c c,>|
		<f f,>2 bes8-3 f-5 bes-3 d-1|
	%LINE 5
		c8-2 f,-5 c'-1 ees-2 d-1 f,-5 bes-3 d-1|
		c-2 f,-5 a-3 c-1 d,4-5 ees-4|
		f-3 bes-2 ees,-4 c-5|
		f-3 d-5 g-2 a-1|
		bes-2 ees,-5 f-1 f,-5
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<<{<f'd>2-3-2-1}\\{bes,}>>
		
	}
}
