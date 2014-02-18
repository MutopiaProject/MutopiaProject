\version "2.16.1"
\include "definitions.ily"

% LESSON XIX. Fal, lal, la.  Air in The Cherokee.

LessonXXUpper= \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		g8-1|d'-.-5[ d-.-5 b-.-3 b-.-3]|
		g-.-1 g-. g32 a b16 r8|
		c-.-4[ c( b) g-.]|
		<<{fis16.-2 g32-4 a16.-4 b32-5 a8-4 r16 a16-2|}\\{s8 fis-2 fis-2 s8|}>>
		d'-.-5[ d-. b-. b-.]|
	%LINE 2
		g-. g-. g32 a b16 r8|
		\grace d16-5 c8-.-4 c-4( \stemDown b8.-3[ g16-1)] \stemNeutral|
		\set Score.measurePosition = #(ly:make-moment 1 8)
		\grace b16-3 a16.-2[ g32-1 a16.-2 b32-3] g8-1|
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		d'8|
		<<{
			a8-3-2 b-2-4 c-3-5 d-4-5|
			a b c d|
		}\\{
			fis,16 d^\markup{\finger 1} g d^\markup{\finger 1}  a' d, b' d,|
			fis d g d a' d, b' d,|
		}>>
		<fis a>8-3-2 <g b>-1-4 <a c>-3-5 <fis e'>-2-5|
	%LINE 3
		<<{d'8.-1-5[ b16-3 d8-5] b8\rest\fermata|}\\{g4 s4|}>>
		d'8-.-5[ d( b) b(]|g-.)[ g-.]  g32[ a b16] r8|
		\grace d16 c8[ c] b8.[ g16]|
		\grace b16 a16.[ g32 a16. b32] g8|
		\set Score.measurePosition = #(ly:make-moment 1 8)
	}
}
LessonXXLower= \relative c'{
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8|
		g16-4 d'-1 b-2 d  g, d' b d|
		g,-4 d' b d  g,-4 d' b d|
		fis,-4 d'-1 d,-5 d'  g,-3 d' b-2 d|
		d,8-5 d'-1 d-1 r|
		g,16 d' b d  g, d' b d|
	%LINE 2
		g, d' b d  g, d' b d|
		fis, d' d, d' g,[ d' b d]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		d,8-5[ <fis c'>-4-1] <g b>-3-2
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8|
		d4 d,|
		d' d,|
		d'4.^\switchOneFive c'8-1|
		b8.-2[ g16-4 b8-2] r\fermata|
		\tweak #'font-size #-4 g16 d' b d  g, d' b d|
		g, d' b d  g, d' b d|
		fis, d' d, d' g, d' b d|
		\set Score.measurePosition = #(ly:make-moment 1 8)
		d,8[ <fis c'>] <g b>
	}
}
