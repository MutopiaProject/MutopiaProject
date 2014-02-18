\version "2.16.1"
\include "definitions.ily"

% LESSON XV. Larghetto by Scarlatti.

LessonXVUpperB= \relative c''{
	\key f \major
	\time 3/4
	\clef treble
	\tempo 4=50
	\hideTempo
	%LINE 1
	\repeat volta 2{
		d4-2 a'8-5( f-4 d-2 a-1)|
		bes4-2 g'8-5( e-4 c-2 g-1)|
		a4-2 e'8-5( bes-3 a-2 g-1)|
		g4-4( f8-3\prall e-2 f4-1)|
		d'-4 f8-5( d-4 bes-2 a-1) |
		gis4-2 f'8-5( d-3) e-4( a,-1)|
		bes4-2 f'8-5( d-4 bes-2 a-1)|
		\preTrill gis2\trill^\markup{\finger 3} \grace {fis16-2[ gis-3]} a4-1|
	%LINE 2
		b16-2( c-3 d8-4) c8-3 b-2 a4-1|
		b16 c d8 c b a4|
		f'16-5 e-4 d8-3 c8-1 bes-2 a-1 gis-2|
		\grace gis4-2 a2.\mordent-3|
	}
	\repeat volta 2 {
		c4-3 f8-5( c-3 a-2 f-1)|
		d'4-4 f8-5( d-4 c-3 a-1)|
		bes4-2 g'8-5( e-4 c-1 bes-2)|
		bes4-4 a8-3\prall g-2 a4-1|
		a'4-5 d,8-2 ees-3 b-1 c-2|
		a'4-5 d,8-2 \grace f16-4 ees8-3 b-1 c-2|
	%LINE 3
		\grace{c16-3[ d-4]} ees4-5 d8-4 c-3 bes-2 a-1|
		\grace c8-4 bes4-3 a8-2 bes-3 g4-1|
		g'-4 bes8-5 g-4 ees-2 d-1|
		cis4-2 bes'8-5( g-3) a-4( d,-1)|
		ees4-2 bes'8-5 g-4 ees-2 d-1|
		\preTrill cis2\trill^\trillThree \grace{b16-1[ cis-2]} d4-1|
		e16-2 f-3 g8-4 f-3 e-2 d4-1|
		<<{e16 f g8 f e d4|}\\{g,4-1 a-3 bes-2|}>>
		bes'16-4 a-3 g8-2 f-1 ees-2 d-1 cis-2|
		\grace cis4-2 d2.\mordent-3|
	}
}
LessonXVLowerB= \relative c{
	\time 3/4
	\key f \major
	\clef bass
	%LINE 1
	\repeat volta 2{
		d4-4 f-2 r|
		g-1 c,-4 e-2|
		<<{s4 cis2-2 }\\{f4^\markup{\finger 1} r4 a,^\markup{\finger 4}}>>|
		d4-1 a-2 d,-5|
		d'^\switchOneFive d'-1 f,-4|e4^\switchFiveThree d-4 c-5|
		d^\switchFourFive d'-1 f,^\switchThreeOne|
		e-2 b-5 c-4|
	%LINE 2
		d4-3 e-2 f^\switchOneFive|
		d'-1 e-2 f-1|
		d,-5 e-1 e,-5|
		a'-1 e-2 a,-5|
	}
	\repeat volta 2{
		a'4-1 f-4 a-2|
		bes-1 bes, a'-1|
		g-2 c,-5 e-2|
		f-1 c-2 f,-5|
		fis'2-1 r4|
		fis2-2 r4|
	%LINE 3
		fis4-2 d-4 fis-2|
		g-1 d-2 g,-5|
		r g'-1 bes,-4|
		a-5 g'-1 f-2|
		g-1 g,-5 g'-1|
		a-2 e-5 f-4|
		g-3 a-1 bes-3|
		s2.|
		g4-5 a-1 a,-5|
		d-1 a-2 d,-5
	}
}
