\version "2.16.1"
\include "definitions.ily"

% LESSON XXX. Minuetto by Scarlatti.

LessonXXXUpper= \relative c''{
	\time 3/4
	\clef treble
	\key bes \major
	\tempo 4=120 \hideTempo
	\repeat volta 2 {
	%LINE 1
		f4-5 bes,-2 a-1|
		bes^\switchTwoOne bes'-5 g-4|
		f-3 bes-5 ees,-2|
		d-1 bes'-5 c,-1|
		bes-2 g'-5 f-4|
		bes,-2\turn g'-5 f-4|
		bes,-2 \grace{c16-3[ d-4]}ees4-5 d-4|
		\grace d16-4 c8-3 bes-2 c-3 d-4 ees-5 c-3|
		f4-5 bes,-2 a-1|bes^\switchTwoOne bes'-5 g-4|
	%LINE 2
		f4-3 bes-5 ees,\turn-2|d-1 bes'-5 c,-1|
		bes-2 g'-5 f-4|
		\grace f16-4 e8-3 d-2 c4-1 bes-2|
		a8-1 f'-4 g4-5 \preTrill e\trill^\trillFour|
		<<{<f c>2.-1-2-4|}\\{a,2.}>>
	}
	\repeat volta 2 {
		c4-2 f-5 d-3|
		c-2 f-5 bes,\turn-2|
		a-1 f'-5 g,-2|
		f8-1 g-2 a-1 bes-2 c-3 d-4|
	%LINE 3
	ees4-5 f,-1 d'-3|
	\grace{c16-2[ d-3]} ees4-4 f,-1 d'-3|
	ees8-4 d-3 c-2 g'-5 f-4 ees-3|
	d-2 c-1 bes-2 c-1 d-2 ees-3|
	f4-1 bes-4 g\turn-2|
	f-1 bes-5 ees,-2|
	\grace ees8-3 d4-2 c8-1 bes-2 c-3 a-1|
	bes2.-2\prallmordent
	}
}
LessonXXXLower=\relative c{
	\key bes \major
	\clef bass
	\time 3/4
	\repeat volta 2{
	%LINE 1
		bes4-5 bes'-1 c-2|
		d2-1 ees4-2|
		d2-1 c4-3|
		bes2-4 ees4-2|
		d-1 ees-2 d-1|
		r ees-2 d-1|
		r c-1 bes-2|
		f^\switchFourOne f,-5 ees'-2|
		d2-1 c4-3|
		bes2-4 ees4-2|
	%LINE 2
		d2-1 c4-2|
		bes2-3 a4-4|
		g-5 g'8-1 a-3 bes-2 g-4|
		c4-1 c,8-5 d-3 e-2 c-4|
		f-1 a,-4 bes4-3 c-2|
		<f f,>2.|
	}
	\repeat volta 2{
		<<{a2-4-1 s4|}\\{f2 bes4^\markup{\finger 2}|}>>
		a2-1 g4-2|
		f2-1 e4-2|
		f-1 ees8-2 d-1 c-2 bes-3|
	 %LINE 3
	 a2-4 bes4-3|
	 a2-5 bes4-4|
	 <<{a2-5 a'4-2-1|}\\{s2 f4|}>>
	 bes-1 bes,-5 c-4|
	 d2-3 ees4-2|
	 d2-3 c4-4|
	 bes-5 ees-2 f-1|
	 <<{<f d>2.-5-3-1|}\\{bes,}>>
	}
}
