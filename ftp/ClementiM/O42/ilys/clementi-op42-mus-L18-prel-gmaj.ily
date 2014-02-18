\version "2.16.1"
\include "definitions.ily"

% LESSON XVIII. Prelude in G Major.

LessonXVIIIUpperA = \relative c'' {
	\key g \major
	\time 3/4
	\clef treble
	<b d g>2.-1-2-5|<a d fis>4-1-2-4 g'16-5 fis-4 e-3 d-2  c-1 b-3 a-2 g-1|
	e'-5 d-4 c-3 b-2 a-1 g-3 fis-2 e-1 d-4 \staffDown c-3 b-2 a-1|
	\staffUp s2.|
	s|
}
LessonXVIIILowerA = \relative c {
	\clef bass
	\key g \major
	\time 3/4
	r16 g16-5 a b c d e-3 fis g a-4 b c |
	d4-1 b-3 e-1|
	c-2 r r|
	<<{
		<g b>4-2-4 \ignoreClashNote <a c>-3-5 <fis a>-2-3|
		g2.-1|
	}\\{
		r16 d^\markup{\finger 1} cis^\markup{\finger 2} d^\markup{\finger 1} \stemUp d,2-5 \stemNeutral|
		r16 \stemDown g^\markup{\finger 1} fis^\markup{\finger 2} g^\markup{\finger 1} 
		\stemUp d^\markup{\finger 2} g^\markup{\finger 1} b,^\markup{\finger 4}
		d^\markup{\finger 2}  g,4^\markup{\finger 5} \stemNeutral
	}>>
	\bar "|."
}
