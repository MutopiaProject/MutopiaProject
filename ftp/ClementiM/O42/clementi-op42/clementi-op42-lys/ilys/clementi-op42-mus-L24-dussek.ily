\version "2.16.1"
\include "definitions.ily"

% LESSON XXIV.  Andantino, ma Moderato e con espressione, by Dussek.

LessonXXIVUpper = \relative c'' {
	\key g \major
	\clef treble
	\time 2/4
	\tempo "Andantino ma Moderato e con espressione" 4=105
	\hideTempo
	\set Staff.connectArpeggios = ##t
	\repeat volta 2{
	%LINE 1
		<b d,>^.-1-4^(_\p <b d,>^.^) |
		<d g, d>4.\arpeggio-5_\< <c fis, d>8-5_\! |
		<b g d-1>8.-2-4[ <a d,>16-3 <g d>8.-2 <a d,>16-3] |
		<a d,>4-3_( <b d,>8-4_) r |<d a>4-1-3 <d b>-2-3 |
		<<{g4.-1-5 fis8-4 |\grace fis16-4 e8.-3[ d16 e8. fis16-4] |}\\
		{a,2 |a |}>>
		d4.^\markup{\finger "2-5"} c8-4 |
		<b d,>4-1-3^.^(_\< <b d,>^.^)_\! |
	%LINE 2
		<d g, d>4._\markup{\italic \bold "rf"}\arpeggio <c fis, d>8 |
		 <b g d-1-3-5>8.\f <a fis>16-2-4 <g e>8.-1-3 <a fis>16-2-4 |
		<a fis d~_1>4-2-4^( <b g d>8-3-5^) r\pp |
		<g d>4-1-3^.^( <g e>-2-3^.^) |
		<<{c4.-5^( b8-4) |
		\grace b16-5 a8.-4[ g16-3 a8.-4 b16-5] |}\\
		{<d,>2 |d |}>>
		g-3^\markup{"ten."} |
	}
	\repeat volta 2{
		<b d,>4-1-5 <b d,>-1-4 |
		<<{c4.-5^( b8-4^) |\grace b16-4 a8.-3[ gis16-2 a8.-3 ais16-4] |}\\
		{\setFingeringLeft <e-2 c-1>4-\tweak #'stencil ##f \mf _\< \setFingeringRight <gis-3 d-1>_\! |
		<e_1>2 |}>>
		<ais e>4-1-4 <b dis,>8-2-5 r |
		<<{\grace s16_\p \ignoreClashNote b4-1-2 b-1-2 |}\\{g fis |}>>
	%LINE 3
		<<{e'4.-5 d8-4 |\grace d16-5 cis8.-4 b16-3 cis8.-4 d16-5 |}\\
		{<fis,_1>2_\markup{\italic "cresc."} |<fis_1> |}>>
		b4-3 \grace {cis16-4[_\pp b-3 ais b]} d8.-5 c16 |
		b4^\markup{\finger "3-4"} <b g c,>\arpeggio-4 |
		<<{<b d>4.-3-5^(\arpeggio <c a>8-2-4^) |}\\{<d,>4\arpeggio e |}>>
		<b' g>8.^\markup{\finger 1}^\markup{\finger "3-5"} <a fis>16-2-4 <g e>8.-1-3 <a fis>16-2-4 |
		<a fis d~_1>4-2-4^( <b g d>8-3-5^) r |
		\stemUp <d g,>4-1-4_\< <d a>-2-4_\! \stemNeutral |
		<<{g4.-1-5 fis8-4 |\grace fis16-5_\p e8.-4 d16-3 e8.-4 fis16-5 |}\\
		{b,8-\tweak #'stencil ##f \mf _\> cis^\markup{\finger 2}_\! d4^\markup{\finger 3} |
		<b_2> <a_1> |}>>
	%LINE 4
		\stemUp d4.^\markup{\finger 3-1} <c'-5>8_\f |
		<b-1-4 d,>4 <b d,> |
		<d g, d>4.-1-2-5 <c fis, d>8-1-2-5 \stemNeutral |
		\stemUp <b g d>8.-1-3-5 <a fis>16-2-4 <g d>8.-1-3 <a fis d>16-1-2-4 |
		<<{<a fis>4-1-2-4^( <b g>8-3-5^) g8\rest |
		g,4-4 g-4 |c4.-5 b8-4 |\grace b16-5 a8.-4 g16-3 a8.-4 b16-5 |}\\
		{\stemUp <d>4.  s8 |
		\change Staff="upper" \stemDown g,8 fis-3 e-2 d-1 |
		e-2 fis-3 g4_\markup{\finger "1-2"} |d4-1 d-1 |}>>
		g2-3^\markup{"ten."} |
		
	}
}
LessonXXIVLower= \relative c'{
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
	%LINE 1
		\setFingeringLeft <g b>4-2-1 <g b>|
		<g b,>4.-5-2 <a d,>8-4-1|
		<g b>8. <a fis>16-3-1 <g e>8.-4-2 <a fis d_5>16-3-1|
		<a fis d>4^( g8-2^) r|
		\setFingeringLeft <fis-4 d'-1>4 <g-3 d'-1>|
		<c a e>4-5-2-1 <d a d,>|
		\clef treble <<{\setFingeringLeft <g>8.-5-4-1 fis16-2 g4-1|}\\{<cis, a>2|}>>
		<fis d>8^\markup{\finger "3-5"}^\markup{\finger "2-3"} <g e>-4-2 <a fis>4-3-1|
		\clef bass <<{ g,8[ d g d] |}\\{g,2|}>>
	%LINE 2
		b'8-1[ d,-3 a'-1 d,-3] |
		<g g,>4 <d d,>|
		<g, g,> r|
		<b g'>-4-1 <c g'>-3-1|
		\setFingeringLeft <a d fis>_1_2_5 <g d' g>|
		<<{ \setFingeringLeft <c'-1>8. \allowFingeringInStaff b16-2 c4-1|b2|}\\
		{<fis d>2-4-5|g-3|}>>
	}
	\repeat volta 2 {
		g4-1 <gis e>-3-2|
		<a a,> <b b,>|
		<<{<c-1>8. b16-2 a8.-1 g16-2|<g-5-1>4_( <fis-2>8_) d8\rest|}\\
		 {c2|b4. s8|}>>
		 <b' e,>4-3-1 <b d,>-4-1|
	%LINE 3
		<ais-1 fis-2 cis-5> <b-1 fis-2 b,-5>|
		<<{<e-1>8. <d>16^\markup{\finger 2} <e>4^\markup{\finger 1}| <d-2> d,\rest|}\\
		{<ais' fis>2_\markup{\finger 4}_\markup{\finger 5}|<b_3>4 s4|}>>
		<g g,>^( <a a,>|<b b,> <c c,>^)|
		<<{\stemDown \ignoreClashNote d4.. c16-2|\stemNeutral}\\{d,2|}>>
		<c' d,>4-5-1 <b g>8-3-2 r8|<e e,_5>4 <fis fis,>_\markup{\finger "4-5"}|
		<<{<e-1>4 <d-2>|}\\{g,8-5 a-4 b4-3|}>>
		<d g,>^2_5 <cis a>^\markup{\finger "3-4"}_\markup{\finger 5}|
	%LINE 4
		<<{s2|\stemDown g2|s2|s|s}\\
		{\change Staff = "upper"
		\stemDown <fis' d>8_\markup{\finger "2-3"}_\markup{\finger "3-5"}^( <g e>_\markup{\finger 2}_\markup{\finger 4}
		<a fis>4_\markup{\finger 1}_\markup{\finger "3-2"}^)| g8_1[ d_3 g_1 d_3]|b'_1[ d,_4 a'_1 d,_4]|
		<b' g>8.-1-2 <a d,>16-1-4 <g b,>8.-2-5 <a d,>16-1-4|\stemDown <a d,>4-2-5( <b g>8-1-3) g8\rest\pp|}>>
		<<{<g,-2>4 <c-1>8 <b-2>8|a4-1 g^\markup{\finger "2-1"}|g-1 fis-2|g2|}\\
		{<b,_5>4 <c_5>(|c8) d_4 e_3 cis_5|d4_4 d_3|g,2|}>>
	}
}
