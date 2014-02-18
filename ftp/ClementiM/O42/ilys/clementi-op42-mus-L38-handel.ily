\version "2.16.1"
\include "definitions.ily"

% LESSON XXXVIII. March in the Occasional Oratorio, by Handel.

LessonXXXVIIIUpperA= \relative c''{
	\key d \major
	\time 2/2
	\tempo 2=55
	\hideTempo
	\clef treble
	%LINE 1
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 3 4) a4-1
		d8-2 e fis g fis4-4 e|
		d2-2 a-1|
		<d fis>8-1-2 <e g>-1-3 <fis a>-2-4 <g b>-3-5 <fis a>4-2-4 <e g>-1-3|
		<d fis>2-1^\switchTwoFour <cis e>-2-3|
		g'8-4 fis g a g4 fis-3|
	%LINE 2
		e2-2 d-1|
		<<{
			g4-2-4 a8-2-5 g-4 fis4-1-3 g8-2-4 a-1-5|
			e2.-2-4 a4-3-5|
			e8-2-4 d-1-3 e-2-4 fis-3-5 e4-2-4 a-3-5|
		   	a,8-1 gis-2 a-1 b-3 a4-1 fis'-1-5|
			d-1-4 cis8-1-3 b-2 \preTrill b4.\trill^\trillThree a8-1|
		}\\{
			cis4 e d e8 d|
			cis b^\markup{\finger 1} cis^\markup{\finger 2} d^\markup{\finger 3} cis4^\markup{\finger 2} e| 
		   	cis8 b cis d cis4 e|
		   	s2. a,4|
		   	gis a s2|
		}>>
	 %LINE 3
		\set Score.measurePosition = #(ly:make-moment 1 4) <a e cis>2.\arpeggio-2-3-5}
	 	\set Score.measurePosition = #(ly:make-moment 3 4) a4-1
	 	<<{	e'-2-4 e8.-2-4 d16-1-3 e4-2-4 fis-3-5|
	 		g2-4-5 e4.-2-4 d16-1-3 e-2-4|
	 		fis4-3-5 g8-1-5 fis-4 e4-1-3 d-1-2|
	 		a'2-2-5 fis-1-4|
	 		a,4-2-3 a8 a a4 d-3-5|
	 		a4-2-3 a8 a a4 fis'-1-4|
	 	}\\{
	 		cis4 cis8. b16 cis4 d|
	 		e2 cis4. b16 cis|
	 		d4 a a b|
	 		cis2 d|
	 		fis,4 fis8 fis fis4 a|
	 		fis4 fis8 fis fis4 a|
	 	}>>
	 %LINE 4
	 	<<{
	 		d4-1-2 d8 d d4 a'-2-5|
	 		fis-1-4 fis8-2-4 fis fis4-1-2 d'-3-5|
	 		b-1-4 a8-2-5 g-4 a4-2-5 g8-1-4 fis-3|
	 		g2-1-4 b-3-5|
	 		a4-1-4 g8-2-5 fis-4 g4-2-5 fis8-1-4 e-3|
	 		s1|
	 		g4-2-5 fis8-1-4 e-3 fis4-1-5 e8-4 d-3|
	 		e4-2-4 a,-1 d2-1-3|
		}\\{
			a4 a8 a a4 cis|
			a d8 d d4 a'|
			d, cis d a|
			b2 g'|
			e4 cis d a|
			<fis' d a>2^\markup{\finger 1}^\markup{\finger 2}^\markup{\finger 4} <a d,a>^\markup{\finger 5}|
			cis,4 a a a|
			cis2 a4 b^\markup{\finger 1}|
		}>>
	%LINE 5
		<<{g'4-2-5 fis8-1-4 e-2 s2|}\\{cis4 d \preTrill e4.^\trill^\trillThree d8^\markup{\finger 1}|}>>
		<d a fis>4-2-3-5 <d a fis>8 <d a fis> <d a fis>4 a'8-5 fis-4|
		<d b fis>4-2-4-5 <d b fis>8 <d b fis><d b fis>4 <fis d a>-1-2-4|
		<<{e-1-2-3 e8 e e4-1-2-3 e8-3 g-5|fis4-4 s2.|}
		\\{<d b>2 <cis a>4 a|a e'8^\markup{\finger 3} d^\markup{\finger 2} e4.^\trill d8|}>>
		\set Score.measurePosition = #(ly:make-moment 1 4) <d a fis>2. \bar "|."

}

LessonXXXVIIILowerA=\relative c{
	\key d \major
	\time 2/2
	\clef bass
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 4) d4-4
		fis-2 d a'-1 a,|
		b2-4 cis-3|
		d4-2 a-5 d-2 e-1|
		fis-3 g-2 a2-1|
		b-3 cis4-2 d-1|
	%LINE 2
		g,2-3 fis-4|
		e4-5 cis'-2 d-1 g,-4|
		a8-3 gis-4 a-3 b-2 a4-1 a,-5|
		a'2.-1 cis,4-5|
		fis8-3 e-4 fis gis fis4-3 d-1|
		b-4 a-5 e'-1 e,
	%LINE 3
		\set Score.measurePosition = #(ly:make-moment 1 4) a2.}
		\set Score.measurePosition = #(ly:make-moment 3 4) a4
		a'2 g4 fis|
		e2 a-1|
		d,4-5 d'-1 cis-2 b-3|
		a2-4 d|
		d,4-5 d8 d d4 fis-3|
		d-5 d8 d d4 d'|
	%LINE 4
		<<{fis,4-5-3 fis8-4-2 fis fis4 a|}\\{d,4 d8 d d4 a|}>>
		<d' d,> <d d,>8<d d,><d d,>4 fis,-4|
		g-3 e'-1 fis,-4 d'-1|
		e,2-5 d'-1|
		cis4-2 a-4 b cis|
		d2-1 fis,-4|
		e4-5 cis'-2 d-1 fis,-4|
		a2-1 fis-3|
	%LINE 5
		e4-4 d a'a,|
		d2. fis4-2|
		<b b,><b b,>8<b b,><b b,>4 fis-2|
		g-1 e-3 a-1 cis-2|
		<<{s4 fis, s2}\\{d'4^\markup{\finger 1} d, a'<a e cis a>}>>
		\set Score.measurePosition = #(ly:make-moment 1 4) <a fis d>2. \bar "|."
}
