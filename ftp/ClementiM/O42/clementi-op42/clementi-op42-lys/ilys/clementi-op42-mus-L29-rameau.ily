\version "2.16.1"
\include "definitions.ily"

% LESSON XXIX. Tambourin by Rameau.

LessonXXIXUpper= \relative c'{
	\key e \minor
	\time 2/2
	\clef treble
	\tempo "Vivace" 2=125 \hideTempo
	\set Score.measurePosition = #(ly:make-moment 2 4)
	%LINE 1
		e8-1 fis g fis
		e4-1 b'-5 b a|g\prall fis e8-1 fis-2 g-3 a-4|b4-1 e-3 dis-2 e-1|
		fis2\turn e,8-1 fis g fis|e4 b'b a|g\prall fis e8 fis g a|
		b4-1 e-3 dis8-2 e fis dis|
	%LINE 2
		e2-3 e8-3 fis g fis|e4-3 b-1 c-2\prall b-1|c\prall b e8 fis g fis|
		e4 b c\prall b|
		\pageBreak
		c\prall b g'-5 e-4|c-2\prall b-1 g' e|c\prall b g'e|
		c-2\prall b-1 a-3 b-5|g-3\prall fis-2 e8-1 fis g fis|
		e4 b' b a|g\prall fis e8 fis g a|
	%LINE 3
		b4 e dis e|fis2\turn e,8 fis g fis|e4 b'b a|g\prall fis e8 fis g a|
		b4 e dis8 e fis dis|e4 b-1 c-2\prall b-1|ais-2 b-3 b\prall-3 a-1|
		gis-2 a-3 a\prall-3 g-1|fis-2 g-3 g\prall-3 fis-2|e-1 e'-5 e,8-1 fis-3 g-4 fis-3|
	%LINE 4
		e4-2 b-1 b b|b e'-5 e,8-1 fis-3 g-4 fis-3|e4-2 b-1 b b|b e'e,8-1 fis g fis|
		e-1 fis g a b-5 a g fis|e fis g a b-5 a g a|b-5 a g a b4-5 a8 g|fis2-2\prall e8-1 fis g fis|
		e4 b'b a|
	%LINE 5
		g4\prall fis e8 fis g a|b4 e dis e|fis2\turn e,8 fis g fis|
		e4 b'b a|g\prall fis e8 fis g a|b4 e dis8 e fis dis|
		e4-3 b-1 \grace{g'16-4[ a-5]}g4-4 fis-3~|
		fis b,-1 \grace{fis'16-3[ g-4]}fis4-3 e-2~|
		e b \grace{g'16[ a]}g4-4 fis-3~|
	%LINE 6
		fis b, \grace{fis'16[ g]}fis4-3 e-2~|e b \grace{e16-2[ fis-3]}e4-2 b-1|
		\grace{g'16-4[ a-5]}g4-4 b,-1 \grace{e16-2[ fis-3]}e4-2 b-1|
		b'-5 b,-1 \grace{e16-2[ fis-3]} e4-2 b-1|\grace{g'16-4[ a-5]}g4-4 b,-1 \grace{e16-2[ fis-3]}e4-2 b|
		b'-5 a8 g fis-2 g-4 e-1 fis-4|dis-2 e-4 cis-2 dis-4 b-1 c-4 a-2 b-4|g-1 a-4 fis-2 g-3 e-1 fis g fis|
	%LINE 7
		e8 fis g fis e fis g fis|e fis g fis e fis g a|
		b4-1 e dis e|fis2\turn e,8-1 fis g fis|
		e-1 fis-2 g-1 a-2 \stemUp b-3 c-4 a-2 b-4|\stemNeutral g-1 a-4 fis-2 g-3 e-1 fis g a|
		b4-1 e-3 dis8 e fis dis|
		\set Score.measurePosition = #(ly:make-moment 2 4)
		e2 \bar "|."
}
LessonXXIXLower = \relative c{
	\time 2/2
	\key e \minor
	\clef bass
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 2 4)
		r2
		<e b e,>2 dis|<e b e,> r|
		<e b e,> fis4-2 e-1|<dis b e,>2-1 r|
		<e b e,> dis|<e b e,> r|<e b e,> fis|
	%LINE 2
		<g b,e,>\arpeggio r|<e b e,> dis|<e b e,> r|
		<e b e,> dis|<e b e,>r|<e b e,>r|<e b e,>r|
		<e b e,> dis|<<{e4 dis s2|}\\{<b e,> b\rest|}>>
		<e b e,> dis|<e b e,>r|
	%LINE 3
		<e b e,>fis4 e|<dis b e,>2 r|<e b e,>dis|<e b e,>r|<e b e,>fis|
		<g b,e,>\arpeggio r|
		<<{<e cis>-2-1 <dis c>-2-1|<d b>-2-1 <cis a>|<c a>-3-2<dis b>-2-1|
		}\\{e,1|e|e|}>>
		<e' b e,>4 <b'g e><b g e><b g e>|
	%LINE 4
		<b g e>e,,e'8 fis g fis|e4 <b'g e><b g e><b g e>|
		<b g e>e,,e'8 fis g fis|e4 <b'g e><b g e><b g e>|
		<b g e>2 <e, b e,>|<e b e,><e b e,>|<e b e,><e b e,>|
		<dis b e,>r|<e b e,>dis|
	%LINE 5
		<e b e,>2 r|<e b e,>fis4 e|<dis b e,>2 r|<e b e,>dis|
		<e b e,>r|<e b e,>fis|<g b,e,>\arpeggio r|<dis b e,>r|<e b e,>r|
	%LINE 6
		<dis b e,>r|<e b e,>r|<e b e,>r|<e b e,>r|<e b e,>r|
		<e b e,>1~|<e b e,>1~|<e b e,>1~|
	%LINE 7
		<e b e,>1~|<e b e,>1|<e b e,>2 fis4 e|
		<dis b e,>2 r|<e b e,> dis|<e b e,>r|
		<<{e fis}\\{<b, e,>1}>>
		\set Score.measurePosition = #(ly:make-moment 2 4)
		<g' b, e,>2 \bar "|."
}
