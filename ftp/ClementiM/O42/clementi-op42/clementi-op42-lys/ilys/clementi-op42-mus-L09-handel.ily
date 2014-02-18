\version "2.16.1"
\include "definitions.ily"

% LESSON IX.  March in Judas Maccabeus, by Handel

LessonIXUpper= \relative c' {
	\time 4/4
	\key f \major
	\tempo 4 = 120 \hideTempo
	\clef treble
	\repeat volta 2{
		f8-2 e-1 f-2 g-3 f4-1 g-2|a2.-3 g8-2 bes-4|\preTrill a2.\trill^\trillFour g8-2 bes-4|
		\preTrill a2.\trill^\trillThree g8-1 bes-3|a8-2 c-4 bes-3 d-5 c4-4 bes8-3 a-2|
		g4-1 a8-2 bes-3 c4-4 bes-3|a8-2 c-4 bes d c4 bes8 a|g4 a8 bes c4-4 bes-3|
		a4-1 b8-2 c-3 d4-4 c-3|b8-1 d-3 c-2 e-4 d4-3 e-4|f-5 e8-4 d-3 e4-4 f-5|
		\preTrill d2\trill^\trillFour c-2|
	}
	\repeat volta 2{
		c8-2 b-1 c-2 d-3 c4-1 d-2|e2.-3 d8-2 f-4|
	%LINE 3
		\preTrill e2.\trill^\trillFour d8-2 f-4|e2-3 \preTrill e4.\trill^\trillFour d16-2 e-3|
		f4-4 e-3 d-2 c-1|b2-2 e-5|d4-4 c8-3 b-2 c4-3 d-4|\preTrill b2\trill^\trillThree a-1|
		d8-3 cis-2 d-3 e-4 d4-3 e-4|f2.-5 a,4-1|
		\pageBreak
		bes8-2 a-1 bes-2 c-3 bes4-2 c-1|d2.-3 c8-2 ees-4|
	%LINE4
		\preTrill d2.\trill^\trillThree c16-1 d-2 ees8-3|d2.-2 c4-1|
		d8-2 f-4 e!-3 g-5 f4-4 e8-3 d-2|c4-1 d8-2 e-3 f4-4 e-3|d-2 e8-3 f-4 g4-5 f-4|
		e-3 d-2 c-1 d-4|bes-2 a8-1 g-2 a4-3 bes-4|\preTrill g2\trill^\trillThree f-1|
	}
}
LessonIXLower= \relative c {
	\clef bass
	\time 4/4
	\key f \major
	\repeat volta 2 {
		f2-2 a4-1 e-3|f-1 f,-5 a-4 c-2|f-1 f, a c|f f, a c|f-1 g-4 a-3 bes-2|c-1 g-2 e-4 c-5|
		f-3 g-2 a-1 bes-2|c-1 g-2 e-4 c-5|f-3 e-4 d-5 e8-4 f-3|g4-2 a-1 b-2 c-1|a-3 b-2 c-1 f,-3|
		g2-2 c,-5|
	}
	\repeat volta 2{
		e2.-4 g4-2|c-1 c,-5 e-4 g-2|c c, e g|c-1 b-2 c-1 a-3|
		<d d,> <c c,><b b,> <a a,>|<gis e>2-2-1 <a c,>-1-4|b,4-5 gis'-2 a-1 d,-3|e2-2 a,-5|
		f'2.-1 e4-3|d-4 e-3 f-2 d-4|g2.-1 a4-2|bes-1 bes,-5 d-3 f-2|
		bes-1 bes, d f|bes bes, d f|bes,-5 c-4 d-3 e-1|f-3 c'-1 a-3 f-5|bes-2 a-3 g-4 a8-3 bes-2|
		c4-1 bes-2 a-1 f-3|g-1 e-3 f-1 bes,-3|c2-2 f,-5| 
	}
}
