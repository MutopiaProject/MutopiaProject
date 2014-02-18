\version "2.16.1"
\include "definitions.ily"

% LESSON XXXV. Prelude in G Minor.

LessonXXXVUpperA= \relative c'''{
	\key g \minor
	\time 4/4
	\clef treble
		<g d bes g>1|
		\set Staff.connectArpeggios = ##t
		<<{<a d,>4\arpeggio <g d>\arpeggio <fis c>\arpeggio <g bes,>\arpeggio|}
		\\{c,\arpeggio bes\arpeggio a\arpeggio g\arpeggio|}>>
		r16 ees'^5_3 d^4_2 c^3_1  bes^2_2[ a^1_1 c-4 bes-3]  a-2[ g-1 fis-4 ees]  d[ c bes-3 a-2]|
		\change Staff = "lower" \stemUp g8 d'\rest d4\rest \change Staff = "upper" r2|
}

LessonXXXVLowerA=\relative c{
	\key g \minor
	\time 4/4
	\clef bass
		r16 g-5[ a bes] c[ d e-3 fis]  g[ a-4 bes c]  d-1[ bes-3 a-1 g-2]|
		fis4-3 g-1 d ees|<c c,>2 <d d,>|
		c16\rest \stemDown g[ bes d] g[ d bes d] \stemNeutral g,8 r r4|
		\bar "|."
}
