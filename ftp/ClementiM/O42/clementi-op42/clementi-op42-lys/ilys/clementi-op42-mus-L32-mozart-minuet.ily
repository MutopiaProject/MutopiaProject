\version "2.16.1"
\include "definitions.ily"

% LESSON XXXII.  Minuet and Trio by Mozart.

LessonXXXIIUpperA = \relative c'''{
	\key bes \major
	\time 3/4
	\tempo 4=100 \hideTempo
	\clef treble
	\repeat volta 2{
		<bes f d>2-1-2-4 d8.-5 bes16-4_\markup{\italic \right-align "a tempo di ballo"} 
		f4-2 f-3 f-3
		f4..-3 g16-4 f8.-3 ees16-2|
		ees4-3( d8-2) f-.-4 ees-.-3 c-.-1|
		bes4-2 bes bes|
		<<{s8.. s32\turn s2|}\\{bes4.^\markup{\finger 2} c8^\markup{\finger 3} d4^\markup{\finger 4}|}>>
		<<{d8-1-4[ c-3 ees-5 d-1-5 c-2-5 bes-1-4]|bes2-2-5( a8-1-5) b\rest|
		}\\{g4. f8[ ees d]|d2( c8) s}>>
	}
	\repeat volta 2{
		\preTrill f'8.\trill^\trillThree e32-1 f-2 g4-3 <c g c,>8\fz\arpeggio r|
		\preTrill g8.\trill^\trillFour fis32-2 g-3 a4-4 <c a f c>8\fz\arpeggio r|
		a8.-4 f16-2 bes8.-5 <f d>16-2-4 <ees c>8.-1-3 <d bes>16-2-4|
		<d bes>4-2-4( <c a>8-1-3)[ f-.-5 ees-.-4 c-.-1]|
		bes4-2 bes bes|
		<<{s8.. s32\turn s2|}\\{bes4.^\markup{\finger 2} c8^\markup{\finger 1} d8.^\markup{\finger 2} ees16^\markup{\finger 3}|}>>
		f8.-4 g16-5 bes,4-2 \grace d16-4 c-3 bes-2 c-3 d-4|
		<<{c2-1-3( bes8-2) b\rest}\\{a2( bes8) s}>>
	}
}
LessonXXXIILowerA= \relative c'{
	\time 3/4
	\clef bass
	\key bes \major
	\repeat volta 2{
		bes4-1 bes,-5 r|
		r <f'' d>-2-1 <d bes>-4-2|
		<c a>-3-1 <a f>-5-3 <a c>-3-1|
		bes4.-2 r8 r4|
		<bes g>-4-2 <a f>-3-1 <g ees>-4-2|
		<f d>-3-1 <c ees>-4-2 <d bes>-5-3|
		ees2-2 ees4|f-1 f,2-5|		
	}
	\repeat volta 2{
		<f'' f,>4 <e e,>r|
		<e e,><ees ees,>r|
		<ees ees,><d d,><ees ees,>|
		<f f,>4. r8 r4|
		<bes,g>-4-2 <a f>-3-1<g ees>-4-2|
		<f d>-3-1<ees c>-4-2<d bes>8.-5-3 c16-4|
		d8.-3 ees16-2 f4-1 <ees f,>-2|
		<<{ees2-4-2( d8-1) d\rest}\\{bes2( bes8) s}>>
	}
}
