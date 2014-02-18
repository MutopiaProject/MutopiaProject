\version "2.16.1"
\include "definitions.ily"

% LESSON XLIV. Prelude in A Major.

global = { \key a \major \time 4/4 }
setTupletSix = \set tupletSpannerDuration = #(ly:make-moment 1 4)
moveTupletNumUp = \once \override Voice.TupletNumber #'extra-offset = #'(0.9 . 7.1 )

LessonXLIVUpperPrel= \relative c'''{
	\clef treble
	\setTupletSix \moveTupletNumUp
	\times 4/6 { 
		\override Fingering #'avoid-slur = #'outside
		a16-5([ e-3 cis-2 a-1 cis-3 e-2)]
		\hideTuplet
		g-5([ e-3 d-2 b-1 d-2 g-5)]
		a-5[ e-3 cis a cis e]
		a-5[ fis-4 c a c fis]
	}  | %1
	\times 4/6 {
		a16 e cis! a cis e
		gis-5 e-3 d-2 b d gis
		a-5_[ e-3 cis-2 a-1 e-3 cis-2]
	} a8-1\staccato\noBeam r8 |  %2
	R1 | %3
	\bar "|."
}

LessonXLIVLowerPrel= \relative c, {
	\clef bass
	{
		%\once \override Voice.TupletNumber #'extra-offset = #'(-0.3 . -10.8 )
		\times 2/3 {a16-5^\( cis-3 e-2\) } a8-1\staccato\noBeam
		\hideTuplet \times 2/3 {e16 gis b } e8\staccato\noBeam
		\times 2/3 {a,16 cis e} a8\staccato\noBeam
		\times 2/3 {dis,16-5 fis-4 a-2} c8-1\staccato\noBeam 
	} | %1
	{
		\times 2/3 { e,16-5 a-3 cis!} e8\staccato \noBeam
		\times 2/3 { e,16 gis b } e8\staccato \noBeam
		\times 2/3 { a,,16 cis e } a8\staccato \noBeam
		\hideTupletBracket
		\times 4/6 { r16 e-1[ cis-2 a-1 e-2 cis-3 ]}
	} | %2
	a4-5 r4 r2
	\bar "|."
}
