\version "2.16.1"
\include "definitions.ily"

% LESSON XXXVI. Prelude in D Major.

LessonXXXVIUpperA= \relative c{
	\key d \major
	\time 4/4
	\tempo "Allegro" 4 = 90
	\hideTempo
	\clef treble
		\change Staff = "lower"
		d4\rest \stemUp \times 4/6{d16_1[ e fis g_1 a b]}
		\change Staff = "upper"
		\times 4/6{cis d_1 e fis g_1 a} \stemNeutral
		\override TupletNumber #'stencil = ##f
		\times 4/6 {b[ cis d-1 e fis g-4]}|\noBreak
		\times 4/6{a-5 g fis e d cis-4} \stemDown \times 4/6 {b[ a g fis-3 e d]}
		\change Staff = "lower" \stemUp \times 4/6{cis[ b a g fis-3 e]}
		\times 4/6 {d-1[ e fis g-1 a b]}| 
		\change Staff = "upper" \times 4/6 {cis d-1 e fis g a}
		\stemDown \times 4/6 {b[ cis d-1 e fis g-1]} \times 4/6{ a[ b cis d-5 cis b]}
		\times 4/6 {a[ g fis-3 e d cis-4]}|\noBreak
		\stemUp \times 4/6 {b[ a g fis-3 e d]} \change Staff = "lower" \times 4/6 {cis-4 b a g fis-3 e}
		d4 \change Staff = "upper" <b'' g e b>-1-2-4-5\arpeggio|
		<fis d a>2-1-2-4\arpeggio <g e cis a>-1-2-3-5\arpeggio|
		<fis d a>1-1-2-4\arpeggio|
		
}

LessonXXXVILowerA=\relative c,{
	\key d \major
	\time 4/4
	\clef bass
		d1|
		<cis' cis,>2. \stemDown <b b,>4|
		\stemUp <a a,><g g,><fis fis,>2|
		\ignoreClashNote
		<g g,>4<a a,> \stemDown <b b,> \stemNeutral <g g,>|
		<a a,>2 <e' cis a>_1_2_3\arpeggio|
		<d a d,>1\arpeggio|
		\bar "|."
}
