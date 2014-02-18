\version "2.16.1"
\include "definitions.ily"

% LESSON VI: Allegro by Corelli

LessonVIUpper = \relative c'{
		\key c \major
		\time 4/4
		\tempo "Allegro" 4=105
		\hideTempo
	%LINE 1
		c'16-2 e-4 g-5 e-4 c-2 e g e d-3 g-5 d-3 b-1 d g d b|
		c-3 e-5 c-3 a-1 fis-2 d'-5 a-1 c-3 b-1 d-3 g-5 d^3_2 b^1_1 d^3_2 g^5_5 b,^1_1|
		c^2_2 e^3_4 g^5_5 e^3_3 c^2_1 e^3_3 g-5 e-3 a-5 a,-1 c-4 a-2 f-1 a^3_2 d^5_5 a^3_3|
		b-4 g-2 c-5 e,-2 d-1 c'-5 b-4 d,-1 r e-2 g-4 e-2 c-1 e-2 g-4 e-2|
	%LINE 2
		d-1 g-2 b-4 d-5 b-4 g-1 b-2 d-4 c-1 e-2 a-5 g-4 fis-3 d-1 fis-2 a-4|
		b-5 b,-1 d-4 b-2 g-1 b-3 d-5 b-3 a-2 cis-4 d-5 a-3 fis-2 a-3 d-5 fis,-2|
		g-1 b-4 c-5 g-2 e-1 g-2 c-5 e,-1 fis-2 a-3 d-5 fis,-2 g-1 d'-3  g-5 b,-1|
		c-2 fis-4 g-5 b,-2 a-1 g'-5 fis-4 a,-1 g-2 b-3 d-5 b-3 g-1 b-2 d-4 b-1|
	%LINE 3
		c-2 e-3 g-5 e-3 c-1 e-2 g-4 e-2 a-4 f-2 a-4 c-5 a-4 f a c|
		g-3 c-5 g-3 e-1 g-3 c g e f-3 a-5 f-4 d-2 b-1 g'-5 d-2 f-4|
		\pageBreak
		e-3 g-5 e-4 c-2 a-1 f'-5 c-2 e-4 d-3 f-5 d-4 b-1 gis-2 b-1 e-4 b-1|
		c-2 e-4 c e b-1 e-3 b e a,-1 e'-2 a-5 gis-4 a-5 c,-1 b-2 a-1|
	%LINE 4
		gis-2 b-3 e-5 b-3 e,-1 b'-3 e-5 e,-1 f-2 a-3 d-5 a-3 f-1 a-3 d-5 a-3|
		gis-2 b-3 e-5 b-1 c-2 e-3 a-5 c,-1 d-2 gis-4 a-5 c,-2 b-1 a'-5 gis-4 b,-1|
		a-2 c-3 e-5 c-3 a-1 c-3 e-5 a,-1 gis-2 b-3 e-5 b-3 gis-2 b e b|
		a-1 c-3 e-5 c-3 a-1 c-3 e-5 a,-1 b-2 d-3 g-5 d-2 b-1 d-3 g-5 b,-1|
	%LINE 5
		c-2 e-4 g-5 e-3 c-1 e-3 g-5 e-3 cis-2 e-3 a-5 e-3 cis-2 e a e|
		d-1 f-3 a-5 f-3 d-1 f a f dis-2 fis-3 b-5 fis-3 dis-2 fis b fis|
		g-4 b,-1 e-5 b-2 g-1 b-2 e-5 b-2 cis-3 dis-4 e-5 g,-1 fis-2 e'-5 dis-4 fis,-2|
		r g'-4 b-5 g-4 e-2 g-4 b-5 g-4 cis,-2 g'-4 a-5 g-4 a,-1 g'-4 a-5 g-4|
		\pageBreak
	%LINE 6
		d-2 f-4 a-5 f-4 d-2 f a f b,-1 f'-4 g-5 f-4 g,-1 f'-4 g-5 f-4|
		c-2 e-4 g-5 e-4 c-2 e g e a,-1 d-4 c-3 d-4 a-1 d c d|
		b-2 g-1 a-2 b-3 c-4 g-1 c g a-2 c-4 d-5 a-1 b-2 d-4 e-5 b-1|
		c-2 e-4 f-5 c-1 d-2 f-4 g-5 d-1 e-2 g-4 a-5 c,-2 b-1 d-3 g-5 b,-2|
	%LINE 7
		a-1 c-3 f-5 a,-2 g-1 b-3 e-5 g,-2 f-1 a-3 d-5 f,-2 e-1 g-3 c-5 e,-1|
		f-2 b-4 c-5 e,-2 d-1 c'-5 b-4 d,-1 c-2 e-3 a-5 c,-2 b-1 d-3 g-5 b,-1|
		r g'-3 c-5 e,-1 f-2 a-3 d-5 f,-2 e-1 d'-3 g-5 b,-1 c-2 e-3 g-5 c,-2|
		g-1 b-4 c-5 e,-1 \tempo 4 = 70 \hideTempo f-2 b-4 c-5 \tempo 4 = 52 \hideTempo e,-2
		<d g c>4\arpeggio-1-3-5 <d f b>\arpeggio-1-2-4| <c e c'>1\arpeggio-1-2-5|
		\bar "|."
}

LessonVILower = \relative c{
	\key c \major
	\time 4/4
	\clef bass
	%LINE 1
		c4-5 r8 c'-1 b4-2 r8 b-1|a4-2 d,-5 g-2 r|
		e-4 r8 e-4 f4-3 r8 f-3| g-2 e-4 f-3 g-2 <c c,>4 r8 c,-3|
	%LINE 2
		b4-4 r8 b-4 a4-5 d-2|g,-5 r8 g'-1 fis4-2 r8 b-1|
		e,4-3 r8 a-1 d,4-3 r8 b-2| a-3[ g-4] d'-1[ d,-5] g4-3 r|
	%LINE 3
		e'4-3 r8 e-3 f4-2 r8 f-2|e4-3 r8 e-2 d4-3 g-1|
		c,-3 f-1 b,-3 e-1| a,-2 g-3 f2-4|
	%LINE 4
		e4-5 r8 c'-2 d4-1 r8 d-2|e4-1 r8 c-2 b-3 a-4 e'-1 e,-5|
		a4-1 r <e e'> r|<a a'> r <g g'> r|
	%LINE 5
		<c c'> r <a a'> r|<d d'> r <b, b'> r|
		<e e'> r <a a'> <b b'>|<e e'> r a r|
	%LINE 6
		d, r g r|c, r f r|g-2 e-4 f-3 g-2|a-1 b-2 c-1 r8 g-2|
	%LINE 7
		a4-1 r8 e-2 f4-1 r8 e-2|d-3[ c-4] g'-1[ g,-5] c4-3 r8 g'|
		
		a4-1 r8 b-2 c4-1 r8 f,-2|
		<<{
		   s4 \tempo 4 = 70 \hideTempo s4 \tempo 4 = 52 \hideTempo r4^\markup {"Adagio"}
                   g4-1|} \\
		{g8-1 e-2 \tempo 4 = 70 \hideTempo d-3 c-4 \tempo 4 = 52 \hideTempo g2-5|}>>
		<c g'>1-3-1|
		\bar "|."		
}
