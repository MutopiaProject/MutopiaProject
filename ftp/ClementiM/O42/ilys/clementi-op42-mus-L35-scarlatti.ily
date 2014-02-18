\version "2.16.1"
\include "definitions.ily"

% LESSON XXXV. Allegro by Scarlatti.

LessonXXXVUpperB= \relative c''{
	\time 4/4
	\clef treble
	\key g \minor
	\tempo 4=105 \hideTempo
	\repeat volta 2 {
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 4)
		r16 d-4 c-3 d-4
		bes8-2 c16 d  g,-1 d'-2 e fis  g fis-2 g a  g-3 bes-5 a g|
		fis4-2 r r16 d-4 c d bes-2 c d bes|
		g g'f g d-2 f ees d ees4 r|
	%LINE 2
		r16 c-4 bes c a bes c a  f f' ees f  c f ees f|
		d4 r r16 bes-4 a bes g a bes g|ees-1 ees'-5 d ees  bes d c bes c4 r|
		r16 a g a fis g a fis d d' c d a-2 c-4 bes-3 a-1|
	%LINE 3
		bes8-2 ees16-5 d c bes a g-3 fis4-2 g8 fis|g-1[ a bes c-1] d-2[ \grace f16-4 ees8-3 d-2 c-1]|
		bes a r a bes\trill a r a|bes\trill a r a bes4\trill c8-4 g-1|
	%LINE 4
	<<{r2 ees'-5|d-4 c^\markup{\finger "3-5"}|bes-4 a^\markup{\finger "3-4"}|
		g-3  f16-2 g-3 f-2 d-1  g-3 a-4 g d|}
		\\{fis4^\markup{\finger 2} d'2^\markup{\finger "5-4"} c4^\markup{\finger 3}~|c bes2-2 a4-1~|a g2-2 f4-1~|
		   f-2 e-1 f8 s4.|}>>
		a16-3 bes-4 a d,  bes'-4 c-5 bes d,  \preTrill cis'8\trill^\trillFour b16-2 cis-3  a8-1 b16 cis|
		d-4 e d a  e'-4 f e  a,  f'-4 g f a,  g'-4 a g a,|
		a'8-4 bes16 a g f e-1 d-2  \preTrill cis8\trill^\trillFour b16-2 a-1  d8-5[ g,-2]|
		\set Score.measurePosition = #(ly:make-moment 1 4)
		f16-1 a-3 d-5 f,-2  e-1 d'-5 e,-1 cis'-4  d,4-1
	}
	\repeat volta 2{
	%LINE 5
		\set Score.measurePosition = #(ly:make-moment 3 4)
		r16 a'-4 g a
		f8-2 g16 a d,-1 a' b cis  d-5 cis-2 d-3 e   d f e d|
		cis4 r r16 a-4 g a f g a f|d d'c d a c bes a bes4 r|
		r16 g f g  e f g e  c c'bes c g-2 bes a g|
	%LINE 7
		a16-1 f'-5 ees f c-2 ees d c  \preTrill d8\trill^\trillFour c16-2 d-4 bes4-2|
		f'16-5 bes,-2 a bes  f' bes, a bes g'bes, a bes  f'bes,a bes|
		g'4 r g16-5 c,-2 b c  g'c,b c|a'c,b c  g'c,b c  a'4 r|
	%LINE 8
		a16-5 d,-1 cis-2 d-1 a'd,cis d  bes'-5 d,cis d a'-5 d,cis d|
		bes'4-5 r ees,16-3 g f ees  a,4-1|d16-3 f ees d  g,4-1  c16-3 ees d c f,4-1 |
		bes16-3 d c bes e,4-1 \stemDown a16-2 c-4 bes-3 a-1  d-2 f-4 ees-3 d-1|
	%LINE 9
		g-2 bes a g-2  a-3 c bes a-3  bes8-4 a16 g  f8 ees-2|
		d16-1 bes'-5 d, bes' c,-1 a'-5 c, a' bes,4-2 r8 d-4| \stemNeutral
		c8\trill bes16 a-1 bes8-3 g-1 fis-2 d-1 r d'-3|
		ees16-4 f-5 d-3 ees-4 c-2 d-4 bes-2 c-3 a-1 f'-5 ees f  c-2 f-5 ees f|
	%LINE 10
		d16-3 ees-4 c-2 d-4  bes-2 c-3 a-1 bes-2  g-1 ees'-5 d-4 ees-5 bes-2 ees d ees|
		c-3 d-4 bes-2 c-4  a-2 bes-3 g-1 a-4  \preTrill fis8\trill^\trillThree e16-1 fis-2  d8-1 e16 fis|
		g-4 a-5 g-4 d-1  a'-4 bes a d, bes'-4 c bes d, c'-4 d c d,|
		d'8-4 ees16-5 d-4 c-1 bes-3 a-2 g-1
	%LINE 11
		\preTrill fis'8\trill^\trillFour e16-2 d-1  g8-5[ c,-1]|
		\set Score.measurePosition = #(ly:make-moment 1 4)
		bes16-2 d-3 g-5 bes,-2 a-1 g'-5 fis-4 a,-1  g4-2
	}
}
LessonXXXVLowerB=\relative c'{
	\key g \minor
	\clef bass
	\time 4/4
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 4)
		r4
		<g g,> r g,8-5[ a-4 bes-3 c-1]|
		d16-5 d'-1 c-2 d-1 bes-3 c d bes g4-5 r|
		g4-3 bes-2 c,16 c' bes c a bes c a|
	%LINE 2
		f4 r f-2 a-1|bes,16 bes' a bes  g a bes g  ees4 r|
		ees g a,16 a'g a  fis g a fis|d4 r d fis|
	%LINE 3
		g4 r8 c, d16 d'c d bes-3 d-1 a-3 d|
		g,-4 d' fis, d'-4  g,-4 d' a-3 d  bes-3 d c-2 d  bes-3 d a-3 d|
		g,-4 d' fis,-4 d' g,-3 d' fis,-4 d' g,-3 d' fis,-4 d'  g,-3 d' fis,-4 d'|
		g, d' fis, d'  g, d' fis, d'  g, d' g, d'  ees,-5 c'-1 ees,-5 c'-1|
	%LINE 4
		d, d'c d  bes-2 a g bes-2  c,c'bes c a-2 g-3 f-4 a-1|
		bes, bes'a bes  g f ees g-1  a,a'g a   fis e d fis-2|
		g,g'fis g  e d c e-1   f,f'e f   e c bes d|
		e,e'd e  cis b a cis-2  
	%LINE 5
		d8-1-. r e-. r|f-. r g-. r a-. r r4|f8 r cis r d r e r|
		f4 r8 g a[ g f g]
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<<{a2 d,8[ d,]}\\{r4 a' s}>>
	}
	\repeat volta 2{
	%LINE 6
		\set Score.measurePosition = #(ly:make-moment 3 4)
		r4
		<d d,> r d8-4 e-3 f-2 g-1|a,16-5 a' g a  f-3 g a f  d4 r|
		d-2 f-1 g,16 g'f g  e f g e | c4 r c-5 e-3|
	%LINE 7
		f4-2 a-1 bes,4.-5( c8)-4|d4-3-. r ees-.-4 d-.-5|
		ees16^5_\markup{\tiny \italic "ou"} ees'^1_2 d^1_1 c^2_2  bes-3 a-1 g-2 f-3  e4-4 r|
		f-. e-.-5 f16-5 f'-1 e-2 d-3 c-1 bes-2 a-1 g-2|
	%LINE 8
		fis4-3 r g-3-. fis-4-.|g8-4 bes16-2 a-3 g-1 f-2 ees-3 d-4  c4-5  f16-3 a g f|
		bes,4-5 ees16-3 g f ees a,4-5  d16 f e d|g,4 \stemDown c16 e d c \stemNeutral f,4  bes-3|
		ees-2 f-1 g4.-3 a8-2|bes-1[ bes,-5] f'-1[ f,-5] bes-4[ c-3] d-2[ bes'-1]|
		a-1 fis-2 g-1 g,-5  d'-2 c-3 bes-4 g-5|c4-3 ees-2 f-1 r|
	%LINE 9
		bes,4-4 d-1 ees-2 r|a,-4 c-2 d4.-1 c8-2|bes4-3 fis g-4 a-3|
		bes4-2 r8 c-2 
	%LINE 10
		d-1[ c-2 bes-3 c-2]
		\set Score.measurePosition = #(ly:make-moment 1 4)
		d-1 c d[ d,] g'[ g,]
	}
}
