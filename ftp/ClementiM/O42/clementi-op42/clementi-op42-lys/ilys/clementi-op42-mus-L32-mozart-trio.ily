\version "2.16.1"
\include "definitions.ily"

% LESSON XXXII.  Minuet and Trio by Mozart. TRIO

LessonXXXIIUpperB=\relative c''{
	\key bes \major
	\clef treble
	\time 3/4
	\tempo 4=110 \hideTempo
	\repeat volta 2{
	%LINE 1
		<d bes>4-2-4 <d bes>8 <d bes><d bes><d bes>|<f d>4-3-5( <ees c>4.-1-4) <d bes>8-2-4|
		<c a>4-1-3 <c a>8<c a><c a><c a>|<ees c>4-3-5( <d bes>-2-4) r|
		<bes' bes,>-5 bes8-5 bes-4 bes-3 bes-2|d4-4( c4.-3 ees16-5 c-3)|
	%LINE 2
		bes16-2 a-1 g-3 f-2 e-1 f-2 e f e-1 f-2 g-3 a-4|bes8-.-5 <bes d,>-.-1-4<c a>-.-2-4<c a>-. <d bes>-.-3-5 r|
	}
	\repeat volta 2{
		<<{f,2.-3-5|f-4-5|f-4-5}
		\\{c8. bes16^\markup{\finger 2}c8^\markup{\finger 3}a^\markup{\finger 1}bes^\markup{\finger 2}c^\markup{\finger 3}|
		   d8. c16^\markup{\finger 3}d8^\markup{\finger 4}bes^\markup{\finger 2}c^\markup{\finger 1}d^\markup{\finger 3}|
		   ees8. d16^\markup{\finger 3}ees8^\markup{\finger 4}c^\markup{\finger 2}d^\markup{\finger 3}bes^\markup{\finger 2}}>>
	%LINE 3
		<f' a,>8-.-1-5 f-5( e-4 f e ees-3)|<d bes>4-1-2 <d' d,>8-5 d-4 d-3 d-2|f4-4( ees4.-3 d16-2 c-1)|
		bes-3 a-2 g-1 f-2 e-1 f-2 e f e f g a|bes8-. <bes d,>-. <c a>-. <c a>-. <bes d>-. r|
	}
}

notaBene = \markup { \larger \column { \concat { "N.B. The last note of the bass in the 1" \super "st " "part must be played" }
	\concat { "with the thumb the 2" \super "d " "time, on account of the 1" \super "st " "note in the 2" \super "d " "part." }
	}
}

LessonXXXIILowerB=\relative c'{
	\key bes \major
	\clef bass
	\time 3/4
	\repeat volta 2{
	%LINE 1
		<bes bes,>4 r r|f-5 r8 <f' d>8-3-1 <ees c>-4-2 <bes d>-3-1|
		<c a f>4-5-4-2 r r|<bes bes,> r8  <f' d>8-3-1 <ees c>-4-2 <bes d>-3-1|
		g-5 d'-1 bes-2 d-1 g,-4 d'-1|ees,-5 c'-1 g-4 c-1 ees,-5 c'-1|
	%LINE 2
		f,8-5 ees'-1 c-2 ees-1 c ees|<d bes>-.-3-1 r f,-.-2 r bes-.-5 r|
	}
	\repeat volta 2{
		a8.-1 g16-2 a8-1 f-4 g-3 a-1|bes8.-2 a16-3 bes8-2 g-4 a-3 bes-2|
		c8.-1 bes16-2 c8-1 a-3 bes-2 g-4|
	%LINE 3
		f4-5_\notaBene r r|g8-4 d'-1 bes-2 d-3 g,-4 d'-1|
		ees,-5 c' g c ees, c'|f, ees' c ees c ees|<d bes>-. r f,-. r bes-. 
		r^\markup{\right-align "Men. D.C."}|
	}
}
