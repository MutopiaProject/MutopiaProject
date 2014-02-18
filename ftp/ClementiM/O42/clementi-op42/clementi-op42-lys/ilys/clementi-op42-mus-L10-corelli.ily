\version "2.16.1"
\include "definitions.ily"

% LESSON X. Sarabanda by Corelli.

%--------------definitions -----------------
pushFOne = \override Fingering #'extra-offset = #'(-0.1 . 0.8 )
revFing = \revert Fingering #'extra-offset
lowerTrillOne = \once \override Script #'extra-offset = #'(-0.7 . -1.4 )
lowerTextOne = \once \override TextScript #'extra-offset = #'(-0.7 . -1.4 )

LessonXUpper = \relative c''{
	\time 3/4
	\key f \major
	\tempo "Vivace" 4=140
	\hideTempo
	\repeat volta 2 {
		<<{s2.|g'2.-4| \pushFOne <a^3^5>2 <a^3^5>4 |
                <g^3^4> <c^2^5> s4| \revFing }\\{ f,4-3 f2-3~|f4-3 e2-2|f4 c-1 f~|f e c-1|}>>
		\preTrill f2.\trill^\trillFour|
		%\pushFOne
		<<{ \pushFOne s2 <g^1^4>4| <a^1^5>4 \preTrill \lowerTextOne \lowerTrillOne d,2\trill^\trillFour|}\\{e2-2c4~|c4 b2-1|}>>
		c2.-2|
	}
	\repeat volta 2{
		
		<<{ \pushFOne <f^1^5>2.| <f^4^5>|<g^1^5>|<g^3^5>|<a^2^5>|}\\{a,4 c2-3|d4 bes2-2|b4 d2-2|e4 c2-1|cis4 e2-3|}>>
		<f a>4.^\trillFour^\markup{\finger \concat{\hspace #0.3 5}}
		<e g>8-2-4 <f~ d>4-1-3|f8-3 e-2 \preTrill e2\trill^\trillThree|d2.-1|<f a>-3-5|
		<d f>-1-2|<g bes>-3-5|<e g>-1-3|<a c>-4-5|
		<<{s2 \stemDown \ignoreClashNote a4~-2-4| \stemUp a8.-2-4 bes16-5 \preTrill g2\trill^\trillFour|}\\{
		<f d>4^\markup{\finger 1}^\markup{\finger 2}
		<e g>^\markup{\finger 1}^\markup{\finger 3} f~|f4 e2|}>>
		f2.-2|<f a>-2-4|<d f>|<g bes>|<g e>|<a c>|
		<<{s2 \stemDown \ignoreClashNote a4~| \stemUp a8. bes16 g2\trill|}\\{
		<f d>4
		<e g> f~|f4 e2|}>>
		f2.
	}
}
LessonXLower = \relative c{
	\clef bass
	\time 3/4
	\key f \major
	\repeat volta 2{
	%LINE 1
		r8 f-5 a-3 c-1 a-3 f-5|bes-2 g-4 c-1 bes-2 c-1 c,-5|
		f-3 f-3 a-2 c-1 a-2 f-3|c'-1 c,-5 e-2 g-1 e-2 c-4|d-3 e-2 d-1 c-2 b-3 g-5|
		c-3 b-4 c-3 d-2 e-1 c-3|
	%LINE 2
		f-1 d-3 g-1 f-2 g-1 g,-5|c2.-3|
	}
	\repeat volta 2{
		r8 f-4 a-2 c-1 a-2 f-4|bes-1 bes,-5 d-3 f-1 d-2 bes-4|g-5 g'-1 b-2 d-1 b-2 g-4|
		c-1 c,-5 e-3 g-1 e-2 c-4|a-5 a'-1 cis-2 e-1 cis-2 a-4|d-1 d,-5 f-3 a-1 f-3 d-5|
	%LINE 3
		g-2 e-4 a-1 g-2 a-1 a,-5 d2.-3|r8 f-4 a-2 c-1 a-2 f-4|bes-1 bes,-5 d-3 f-1 d-2 bes-4|
		g-5 g'-1 bes-2 d-1 bes-2 g-4| c-5 c,-1 e-3 g-1 e-2 c-4|a-5 a'-1 c-2 f-1 c-2 a-3|
		bes-2 d-1 g,-3 c-1 f,-2 a,-5|
		bes-4 f'-1 c4^\switchThreeOne c,-5|
		f2.-3|
	%LINE 4
		r8 f'-4 a c a f|bes bes, d f d bes|g g' bes d bes g|c c, e g e c|a a' c f c a|
		bes d g, c f, f,|bes f' c4 c,|f2.|
	}
}
