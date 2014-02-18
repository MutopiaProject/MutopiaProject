\version "2.16.1"
\include "definitions.ily"

% LESSON XXV.  Allegro, by Handel.

LessonXXVUpper = \relative c'''{
	\clef treble
	\time 3/4
	\key g \major
	\tempo 4=108 \hideTempo
	\repeat volta 2{
	%LINE 1
		r16 g-5 fis e d c b-3 a g8 g'|
		fis-4 a-5 d,-2 fis-4 g-5 b,-1|
		c-4[ e-5] fis,-2[ a-3] 
		d,-1 c'-5|
		<b g d>4_2_1^4 r r|
		r16 g-1 a b c-1 d e fis g8-5 b,-1|
	%LINE 2
		cis-4[ e-5] a,-1 fis-2 g-3 e-1| 
		fis-2 d'-5 e,-1 d'-5 a-3 cis-5|
		<d a fis>2._3_2^5\arpeggio|
	}
	\repeat volta 2{
		r8 g,-1 b-2 d-3 g-5[ d-3]|
		e4-5 d16-4 c-3 b-2 a-1 g-4 fis e d|
		r16 a'-1 b cis d-1 e fis g a8-5 e-2|
	%LINE 3
		fis4-3 e16-2 d-1 c-4 b-3 a-2 g-1 fis-2 e-1|
		r16 b'-1 cis dis e-1 fis g a b8-5 fis-3|
		g-4 b-5 e,-2 b-1 c-4 a-2|g-1 e'-5 fis,-1 e'-5 b-2 dis-4|
		<e b g>2._2_1^5|
	%LINE 4
		r16 a,-1 b cis d-1 e fis g a8-5 e-3|
		<fis d a>2._1^2^4|
		r16 g,-1 a b c-1 d e fis g8-5 d-3|
		e16-5 a,-1 b c d-1 e fis g a8-5 e-2|
		fis16-3 d-1 e fis g-1 a b c d8-5 a-3|
	%LINE 5
		b8-4 d-5 g,-2 b-5 d,-1 f-4|
		e-3 g16-5 f-4 e d c b-3 a g fis-3 e-2|
		fis8-3 a-5 d,-2 b-1 c-2 a-1|
		b-2 g'-5 a,-1 g'-5 d-2 fis-4|
	}
	\alternative{{<g d b>2._2_1^5}{<g d b>2._2_1^5}}
}
LessonXXVLower = \relative c'{
	\clef bass
	\time 3/4
	\key g \major
	\repeat volta 2{
	%LINE 1
		<g b>4.-5-3 a8-4 b-3 c-2 |
		<d d,>4 b-2 g-4 |
		a-1 d,-4 fis-2 |
		g,8_5 a16 b c d e-3 fis g8-1 d-2 |
		b4-4 g-5 e'-1 |
	%LINE 2
		a,4.-5 a'8-1 b-3 cis-2 |
		d-1 b-2 g4-4 a-1 |
		\allowFingeringInStaff d,8-5 e16 fis g a b-3 cis d8 d, |
	}
	\repeat volta 2{
		<b'g>2-2-1 b,4-5 |
		<c c'>2._\markup{\finger "4-5"} |
		<c cis'> |
	%LINE 3
		<d d'> |<dis dis'> |
		<e e'>4 g-4 a-3 |b8-2 c-1 a4-3 b-2 |
		r16 e,-5 fis g a b c-3 d e8-1 b-3 |
	%LINE 4
		cis2.-2 |
		r16 d-1 c-2 b-3 a-1 g fis e d8-5 c'-1 |
		<b d>2.-4-2 |c2-3 cis4-2 |
		d-1 d,-5 fis-3 |
	%LINE 5
		g-2 b-1 b,-5 |
		<<{r4 e_\markup{\finger 4} c'~_\markup{\finger 1} |
		   c b8_\markup{\finger 2} g_\markup{\finger 3} a_\markup{\finger 1} fis_\markup{\finger 3} |}\\
		   {\allowFingeringInStaff c2._\markup{\finger "4-5"} |
		   d-5 |}>>
		   g8_1  e_2 c4_4 d_2 |
	}
	\alternative{ { g,8_5 a16 b c d e fis g8 a |}{<g g,>2.|}}
}
