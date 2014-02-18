\version "2.16.1"
\include "definitions.ily"

% LESSON XXXI. Lindor - an Air.

LessonXXXIUpper = \relative c''{
	\time 2/4
	\tempo "Allegretto" 4=95 \hideTempo
	\clef treble
	\key bes \major
	\repeat volta 2{
		<f d>4-4-5 <d bes>8-2-4 <d bes>|<d bes>4.-3-5 <bes d,>8-1-3|
		<<{
			c8-1-4 c-3 c-3 d-4|f-1-5( ees-4 d-2-3) b\rest|bes'4-1-4( a8-3 c-5|bes4 a8 c)|
		}\\{
			f,,2|a4 bes8 s|f'2|f|
		}>>
		<bes f>8-1-4 <f d>-2-4 <ees c>-1-3 <d bes>-2-4|<d bes>4-2-4( <c a>8-1-3) r
	}
	\repeat volta 2{
	<<{	c4-1-2 c8-2 ees-4|ees-4[ d-3 d-3 f-5]|f-5[ c-2 c-2 ees-4]|
		\once \override Slur #'control-points = #'( ( 1.8113 . 2.717) ( 2.8076 . 2.988) ( 3.985 . 2.988) ( 5.253 . 2.535) )
		ees4-4( d8-.-3) s|a'8.-4 bes32-5 a-4 g8-3 f-2|a8. bes32 a g8 f|
	}\\{	f,2|f|f|f4. f'8-2|c2|c|	}>>
		<bes' bes,>8. f16-3 \grace a16-5 g8-4 f16-3 ees-2|
		<d bes>4-2-4 \preTrill <c a>\trill^\markup{\finger 1}^\markup{\finger 3}|
		bes2-2|
	}
}
LessonXXXILower=\relative c{
	\clef bass
	\time 2/4
	\key bes \major
	\repeat volta 2{
		bes8-5[ d-3 f-2 bes-1]|bes,[ d f bes]|a-1[ f-4 a-1 bes-2]|
		c-1 f,-4 bes-1 bes,-5|d'-3( f-1 ees4-2|d8-3 f ees4)|
		d8-1 d,-5 g-2 e-4|f-1 f, f' r|
	}
	\repeat volta 2{
		a8-1[ f-4 a f]|bes-2[ f-4 bes f]|a-1[ f-4 a f]|bes([ f bes-.)] r|
		<<{r8 f-4 a-2 c-1|}\\{ees,2^\markup{\finger 5}|}>>
		ees'8-2[ c-1 a-2 ees-4]|d-5[ bes'-2 ees,-4 g-1]|
		f-2[ e-3 f-1 f,-5]|bes-1 f-2 bes,4|
	}
}
