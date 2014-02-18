\version "2.16.1"
\include "definitions.ily"

% LESSON XXI. Larghetto, by Pleyel.

LessonXXIUpper = \relative c''{
		\key g \major
		\clef treble
		\time 2/2
		\tempo 2=65
		\hideTempo
		\repeat volta 2{
		%LINE 1
			<<{
				b2-1-3-\tweak #'stencil ##f \mf b4.-\tweak #'stencil ##f \turn d8-3-5|
				d2-3-5( c4-2-4) b4\rest|
				a2-2-4 a4.-2-4-\tweak #'stencil ##f \turn c8-3-5|
			   	c2-3-5( b4-2-4) b4\rest|
				g'2-1-5( fis4-4 e-3|
				d4.^\switchTwoFour c8-3\> b4-2) b4\rest\!|
			}\\{
				g2_\markup{\italic "dolce"} g4. b8|
				b2( a4) s4|
				fis2 fis4. a8|
				a2( g4) s4|
				\grace s32_\f g1|
				g2. s4|
			}\\{
				s2. s8\turn s8|
				s1|
				s2. s8\turn s8|
				s1|
				s1|
				s1|
			}>>
			<c e>4-3-5_\p <d b>-2-4 <c a>^\markup{\finger "1-2"}^\switchThreeFour <b g>-1-3|
		%LINE 2
			<<{b2-3-5( a4-2-4) b4\rest|}\\{g2( fis4) s4|}>>
		}
		\repeat volta 2{
			<<{a2-2_\p a4.-2-\tweak #'stencil ##f \turn a8-2|}\\{s2. s8^\turn s8|}>>|b4-1 b'8-5 a g fis e d-3|
			<<{s2. s8^\turn s8|}\\
			{cis2^\markup{\finger 2}_\markup{\italic "cresc."} cis4.^\markup{\finger 2}-\tweak #'stencil ##f \turn cis8^\markup{\finger 2}|}>>|
			d4-1 d'8-5 cis b a g fis-2|
			<<{s2. s8^\turn s8|}\\
			{\grace s8_\f e2^\markup{\finger 1} e4.^\markup{\finger 3}-\tweak #'stencil ##f \turn e8^\markup{\finger 1}|}>>
			fis8-2 a-3 d-5 a-3 b-5 fis-2 g-4 e-2|d2-1 \grace fis16-3 e8-2 d-1 e-2 fis-3|
		%LINE 3
			d4-1 <fis a>8-.-3-5_\p( <e g>-.-2-4 <d fis>-.-1-3 <c e>-.-1-3 <b d>-.-1-3 <a c>-.-1-3)|
			<<{	b2-1-3 b4.-1-3-\tweak #'stencil ##f \turn d8|
				d2( c4) b4\rest|a2 a4.-\tweak #'stencil ##f \turn c8|
				c2( b4) b4\rest|
			   	\grace s16_\f g'2( fis4 e|
			   	d4.\> c8 b4)\! b8\rest s8|
			}\\{
				g2_\markup{\italic "dolce"} g4. b8|
				b2( a4) s4|
				fis2 fis4. a8|
				a2( g4) s4|
			   	g1|
				g2. s8 g'8^\markup{\finger 5}_\p|
			}\\{
				s2. s8\turn s8|
				s1|
				s2. s8\turn s8|
				s1|
				s1|
				s1
			}>>
			g,2-1 \grace b16-3 a8-2 g-1 a b|a2( g4) r4|
		}
}
LessonXXILower = \relative c'{
		\key g \major
		\clef bass
		\time 2/2
		\repeat volta 2{
		%LINE 1
			\setFingeringLeft <d-1 g,-3>1|<d d,>2. r4|<d d,>1|<d-1 g,-3>2. r4|
			e2-1( d4-2 c-1|
			b4.-2 a8-3 g4-4) r4|
			r4 g4-5 c-3 cis-2|
		%LINE 2
			d2.-1 r4|
		}
		\repeat volta 2{
			<d-1 fis,-4>2 <d fis,>|
			<d g,>4-3-1 r4 r2 |
			\clef treble <g-1 a,-5> <g a,>|
			<fis b,>4-4-2 r4 r2|
			<a cis,>2-4-1 <a cis,>|
			<a d,>4-3-1 r <g g,> r|
			<<{fis2-5-2 g-1}\\{a,1}>>
		%LINE 3
				<fis' d>4-3-2 r r2|
			\clef bass <d g,>1|
			<d d,>2. r4|
			<d d,>1|
			<d g,>2. r4|
			e2( d4 c)|
			b4.( a8 g4) r4|
			<<{
				b2-5-2 c-1|
				c-3-1( b4-2) d,4\rest|
			}\\{
				b1|
				g'2. s4|
			}>>
		}
}
