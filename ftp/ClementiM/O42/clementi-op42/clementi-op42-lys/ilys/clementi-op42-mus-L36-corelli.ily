\version "2.16.1"
\include "definitions.ily"

% LESSON XXXVI. Gavotta, by Corelli.

LessonXXXVIUpperB= \relative c''{
	\time 2/2
	\clef treble
	\key d \major
	\tempo 4=105 \hideTempo
	\repeat volta 2{
		<d fis>4-1-2^\markup{\right-align\larger "Allegro"} <e a>-1-3 <fis d'>-2-5 d-1|
		g8.-4 a16-5 fis8.-3 g16-4 \preTrill e4\trill^\trillThree d-1|
		<d fis>-2-4 <fis a>-4-5 <e a,>-1-3 a,-1|
		d8.-4 e16-5 cis8.-3 d16-4 \preTrill b4\trill^\trillThree a-1|
	}
	\repeat volta 2{
		<cis e>4-2-3 <e a>-3-5 <fis a,>-1-4 b-5|
		<<{s2 cis,4-2-3 b-1|}
		\\{g'8.^\markup{\finger 4} fis16^\markup{\finger 3} e8.^\markup{\finger 2} d16^\markup{\finger 1} ais4 b|}>>
		<<{a'!-2-5 a,-1 s2}\\{d4 s4 b^\markup{\finger 2} d^\markup{\finger 1}|}>>
		g8.-4 a16-5 fis8.-3 g16-4 \preTrill e4\trill^\trillThree d-1|
	}
}
LessonXXXVILowerB=\relative c'{
	\key d \major
	\clef bass
	\time 2/2
	\repeat volta 2{
		d4-1 cis-2 b-1 fis-3|e-4 d-5 a'-2 d,-5|
		d'2-1 cis-2|
		<<{s2 gis4-5-3 s4}\\{b^\markup{\finger 1} a^\markup{\finger 2} e a^\markup{\finger 2}|}>> 
	}
	\repeat volta 2{
		a,2-5 d-2|e4-1 b-5 fis'-2 b,-5|
		fis'2-2 g4-1 fis-2|e-3 d-4 a'-1 d,-4|
	}
}
