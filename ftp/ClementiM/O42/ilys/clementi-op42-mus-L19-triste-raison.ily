\version "2.16.1"
\include "definitions.ily"

% LESSON XIX. Triste Raison.

LessonXIXUpper = \relative c''{
	\key g \major
	\time 3/4
	\clef treble
		\repeat volta 2 {
	%LINE 1
		<b d>4-3-5 <b g>-1-3 <c a>-2-4|
		<<{
			<d>2-3-5 d8-2-4 e16^" "^5 d-4|
			c8-1-3 d16-5 c-4 b4^1^\switchThreeFour a-2-3|
		}\\{
			b2 b4|
			a g fis|
		}>>
		<g b>8-1-4 <fis a>-2-3 <g b>-1-4 <a c>-2-4 <b d>4-3-5|
		<b d>4-3-5 <b g>-1-3 <c a>\turn^2^4^"*"|
		\break
		<<{<d>2-3-5 d8-2-4 e16-5 d-4|c8-1-3 d16-5 c-4 b4^1^\switchThreeFour a-2-3|}\\
		{b2 b4|a g fis|}>>
		g2-1 r4|
	} 
	\repeat volta 2{
	%LINE 2
		\grace {fis16-2[ a16-3]} c4-5 a-3 a-4|
		\grace {d,16-1[ g-3]} b4-5 g-3 g-3|
		\grace {fis16-2[ a-4]} c4-5 a-4 a-3|
		<g b>8-1-4 <fis a>-2-3 <g b>-1-4 <a c>-2-4 <b d>4^3^5\fermata|
		<b d>-3-5 <b g>-1-3 <a c>\turn^2^4|
		<<{
			<d>2-3-5 d8-2-4 e16-5 d-4|
		   	c8-1-3 d16-5 c-4 b4^\markup{\finger "1-3"}^\switchThreeFive <a fis d>-1-2-4|
		}\\{
			b2 b4|a g s4|
		}>>
		<g d b>2.-1-2-4|
	}
	<<{s4^\markup{\large "*"} \grace{d'16-5[ c-4 b-3 c-4]}}\\{s8. a4-2}>>
}
LessonXIXLower = \relative c{
	\key g \major
	\time 3/4
	\clef bass
	\repeat volta 2 {
	%LINE 1
		g4-5 g'-1 g-1|g, g' g|c,-3 d-2 d-2|g,-5 g'-1 g|g, g' g|
		g, g' g|c,-3 d-1 d,-5|g-1 d-2 g,-5|
	}
	%LINE 2
	\repeat volta 2 {
		\grace s8 %this is needed to avoid formatting error
		r4 <d'' fis a>4-5-3-1 <d fis a>|r <d g b>-5-2-1 <d g b>|
		r <d fis c'>-5-3-1 <d fis c'>|<g b>2.-2-1_\fermata|
		g,4-5 g' g|g, g' g|c,-3 d-1 d,|g d g,|
	}
	s4 s8.
}
LessonXIXUpperMIDI = \relative c''{
	\tempo 4 = 100 \hideTempo
	\key g \major
	\time 3/4
	\clef treble
		\repeat volta 2 {
	%LINE 1
		<b d>4-3-5 <b g>-1-3 <c a>-2-4|
		<<{<d>2-3-5 d8-2-4 e16^" "^5 d-4|c8-1-3 d16-5 c-4 b4^1^\markup{\finger "3-4"} a-2-3|}\\
		{b2 b4|a g fis|}>>
		<g b>8-1-4 <fis a>-2-3 <g b>-1-4 <a c>-2-4 <b d>4-3-5|
		<b d>4-3-5 <b g>-1-3 
		%mod for MIDI...original: <c a>\turn^2^4^"*"
		<<{d16-5[ c-4 b-3 c-4]}\\{a4-2}>>| %mod implemented here
		<<{<d>2-3-5 d8-2-4 e16-5 d-4|c8-1-3 d16-5 c-4 b4^1^\markup{\finger "3-4"} a-2-3|}\\
		{b2 b4|a g fis|}>>
		g2-1 r4|
	} 
	\repeat volta 2{
	%LINE 2
		\grace {fis16-2[ a16-3]} c4-5 a-3 a-4| \grace {d,16-1[ g-3]} b4-5 g-3 g-3|
		\grace {fis16-2[ a-4]} c4-5 a-4 a-3|
		<g b>8-1-4 <fis a>-2-3 <g b>-1-4 <a c>-2-4 <b d>4^3^5\fermata|
		<b d>-3-5 <b g>-1-3
		%mod for MIDI...original: <c a>\turn^2^4
		<<{d16-5[ c-4 b-3 c-4]}\\{a4-2}>>| %mod implemented here
		<<{<d>2-3-5 d8-2-4 e16-5 d-4|
		   c8-1-3 d16-5 c-4 b4^\markup{\finger "1-3"}^\markup{\finger "3-5"} <a fis d>-1-2-4|}\\
		{b2 b4|a g s4|}>>
		<g d b>2.-1-2-4|
	}
}
