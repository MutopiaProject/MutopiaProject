\version "2.16.1"
\include "definitions.ily"

% LESSON V: Dead March in Saul de Handel.

LessonVUpper = \relative c'{
		\key c \major
		\clef treble
		\hideTempo
		\time 4/4
		\tempo "Grave" 4 = 40
	%LINE 1
		<e-4 c-2 g-1>4 <e c g> <e c g> r8 <e c>8-2-4| 
		\grace f8-5 <e c>8-2-4 <d b>16-1-3 <e c>-2-4 <f d>8-3-5 <e c>-2-4 <d b>4-1-3 r4|
		<f d>4-1-3 <f d>8-1-3 <g e>16-2-4 <a f>-3-5 <f d>4-1-3 r8 <a f>8-3-5|
		<g e>8-2-4 <f d>-1-3 <e c>-2-4 <d b>32-1-3 <e c>-2-4 <f d>16-3-5 <e c>4-2-4 r4|
	%LINE 2
		<g e>4-1-3 <g e> <g e>4. <g e>16-1-3 <a f>-2-4|
		<bes g>8-3-5 <bes g> <bes g> <a f>-2-4 <g e>4-1-3 r8 <g e>-2-4|
		\grace a16-5 <g e>8-2-4 <f d>-1-3 r <e c>-2-4 \grace f16-5 <e c>8-2-4 <d b>-1-3 r <g e>-2-4|
		\grace a16-5 <g e>8-2-4 <f d>16-1-3 <e c>-2-4  <f d>8-3-5 <e c>-2-4 <d b>2-1-3|
		<< {<e'-4>4 <e> <e> } \\ {<c g>-1-2 <c g> <c g> }>> 
		r8 <c e>8-2-4|
	%LINE 3
		\grace f16-5 <c e>8-2-4 <b d>16-1-3 <c e>-2-4 <d f>8 <c e> <b d>4 r4|
		<d f> <d f>8. <e g>32 <f a> <d f>4 r8 <f a>|
		<e g> <d f> <c e> <b d>32 <c e> <d f>16 <c e>4 r4|
		<e g> <e g> <e g>4. <e g>16 <f a>| <g bes>8 <g bes> <g bes> <f a> <e g>4 r8 <e g>|
	%LINE 4
		\grace a16 <e g>8 <d f> r <c e> \grace f16 <c e>8 <b d> r <e g>|
		\grace a16 <e g>8 <d f>16 <c e> <d f>8 <c e> <b d>4 r|
		<b, g'>4-1-3 <c a'>-1-4 <d b'>-2-5 r8 <e c'>-2-5|
		<<
		{<d b'> <c a'>16-2-5 <b g'>-1-4 <c a'>8-2-5 <a fis'>-1-4 <g'>8-2-5 d-3 g4-5~|} \\
		{s2 b,4 r|}
		>>
		<<{g'2.-3-5 a4-5~|} \\ {e4 cis8^2 d^1 e4^3 r8 e^2|}>>
	%LINE 5
		<< {a8-3-5 g16-2-4 f-1-3 \grace f-5 e8.-2-4 d16-3 d4-3 s|} \\
		{f8 e16 d cis8. d16 d4 r|} >>
		<c e>4-1-3 <c e>8.-1-3 <d f>32-2-4 <e g>-3-5 <c e>4-1-3 r8 <e g,>-1-5|
		<d a>8-2-4 <c g>-1-3 <a' b,>-1-5 <e c>-2-4 <d b>4-1-3 r|
		<g c,>4-1-3 <c e,>-2-5 <g c,>-1-3 r8 <g g,>-1-5|
		<<{f8-1-5 e16-2-4 d-3 \grace e-4 d8.-2-3 c16-2 c4-2 r|} \\
		{b8[ c] c[ b] c4 s|}>>
	%LINE 6
		<d' g>4-1-3 <fis a>-\turn-2-4 <g b>-3-5 r8 <a c>-3-5|
		<<{s2 g8-1-5 d-2 g4-5~|} \\
		{<d b'>8-1-4 <c a'>16-2-5 <b g'>-1-4 <a a'>8-1-5 <c fis>-2-4 b4 r|}>>
		<<{g'4-2-5 g-2-4 g16-3 a-4 bes4.-5|}\\
		{cis,8[ d^1] e[ d^1] cis d e^2 f16^3 g^4|}>>
		<<{a8-3-5 g16-2-4 f-1-3 \grace f16-5 e8.-2-4 d16-3 d4-3 r|} \\
		{f8 e16 d cis8. d16 d4 s|}>>
	%LINE 7
		<<{e4-1-3 e8.-1-3 f32-2-4 g-3-5 e4\turn-1-3 s8 e8-1-5|}\\
		{c4 c8. d32 e c4 r8 g|}>>
		<<{d'8-2-4 c-1-3 f-1-5 e-2-4 d4-1-3 r|}\\
		{a8 g b c b4 s|}>>
		<c g'>4-1-3 <e c'>-2-5 <c g'>-1-3 r8 <g g'>-1-5|
		<<{f'8-1-5 e16-2-4 d-3 \grace e16-4 d8.-2-3 c16-2 <c g>4-1-2-4 r|}\\
		{b8[ c] c[ b-1] d,4 s|}>>
		\bar "|."
	}
		
LessonVLower = \relative c{
		\key c \major
		\clef bass
		\time 4/4
	%LINE 1
		<c c,>4 r <c c,> <c c,>| <c c,> r <g g,> <g g,>| <g g,> r <g g,> <g g,>| <g g,> r <c c,> <c c,>|
	%LINE 2
		<c c,> r <c c,> <c c,>|<c c,> r <c c,> <c c,>| <g' g,> <g g,> <g g,> <g g,>|<g g,> <g g,> <g g,>2|
		<c, c,>4 r <c c,> <c c,>|
	%LINE 3
		<c c,> r <g g'> <g g'>| <g g'> r <g g'> <g g'>|<g g'>r <c c'> <c c'>|<c c'> r <c c'> <c c'>|
		<c c'> r <c c'> <c c'>|
	%LINE 4
		<g g'> <g g'> <g g'> <g g'>| <g g'> <g g'> <g g'> <g g'>|<g g'> r <g g'> <g g'>|<g g'> r <g g'> <g g'>|
		r a r cis-2|
	%LINE 5
		d8-1 g,-3 a4-2 d,-5 r| c' r c-4 c-4| f8-1 e-2 d-1 c-2 g4-5 
		\preTrill g8.\trill^\switchTwoThree
		f16-4|
		
		e4-5 r e e'-1| d8-2 c-1 g4-2 <c c,> r|
	%LINE 6
		b'-5 d-3 g-1 r8 fis8-2| g8-1 b,-4 c-3 d-2 g,4-5 r|
		\clef treble
		a'-1 cis,8-5 d-4 e-3 d-4 cis4-5| d8-4[ g-2] a-1[ a,-5] d4-3 r|
	%LINE 7
		\clef bass
		<c, c,>4 r <c' c,> <c c,>| f,8-2 e-3 d-1 c-2 g4-5 \preTrill g8.\trill^\trillThree f16-4|
		e4-5 r e-5 e'-1|d8-2[ c-3] g8-5[ g'-1] <c, c,>4 r|
	\bar "|."	
	}
