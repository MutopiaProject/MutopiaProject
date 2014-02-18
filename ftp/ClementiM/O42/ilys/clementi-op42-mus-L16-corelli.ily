\version "2.16.1"
\include "definitions.ily"

% LESSON XVI. Allemanda, by Corelli.

LessonXVIUpper = \relative c''{
	\key f \major
	\time 4/4
	\clef treble
	\tempo "Allegro" 4=120
	\hideTempo
	\repeat volta 2{
		<d f>4.-3-5 <d f>8-3-5 <cis e>4-2-4 r|
		<f a>4.-3-5 <f a>8 <e g>4-2-4 r|
	%LINE 2
		<<{
			\stemDown < g bes>4.-3-5 <g bes>8 <f a>4-2-4 <e a~>-2-5 \stemNeutral|
			\ignoreClashNote a4-5 g-4 \ignoreClashNote a2-5|
		}\\{
			s1|
			d,2-1 cis-2|
		}>>
		<fis a>4.-2-4 <fis a>8 <g bes>4-3-5 r|
		<e g>4.-2-4 <e g>8 <f a>4-3-5 r|
	%LINE 3
		<d f>4.-1-2 <g bes>8-3-5 <e g>4-1-3 <f a>-2-4|
		<<{g4.-2-3 g8-1-3 a4-2-4 a|}\\{f4. e8 f4 f|}>>
		r <e g>-2-4 r <d f>-2-4|
	%LINE 4
		<<{
			b4\rest e-3-5~ e d8-2-4 c-1-3|
			b4-2-3 b8\rest e-3-5 d4-1-5 c8-1-4 b-3|c4-4 b-2-3 a2-1|
		}\\{
			s4 c~ c b8 a|gis4 s8 c fis, gis-2 a4~|a gis a2|
		}>>
	}
	\repeat volta 2{
		<cis e>4.-2-3 <cis e>8-2-3 <d f>4-1-4 r4|
	%LINE 5
		<e g>4.-1-3 <e g>8 <f a>4-2-4 r8 <f a>|
		<g bes>4.-3-5 <g bes>8 <f a>4-2-4 r8 <a c>-3-5|
		<<{bes8-1-5 a-2-4 g4-3 a2-2-4|}\\{d,8 f4 e8^\markup{\finger 1} f2|}>>
		<f a>4.-2-4 <f a>8 <e g>4-1-3 r|
		<g bes>4.-3-5 <g bes>8 <f a>4-2-4 r|
		<d f>4.-1-4 <d f>8 <cis e>4-2-3 r8 <f a>-2-4|
		<e g>4-1-3 r8 <g bes>-3-5 %cont...
	%LINE 6
		<f a>4-2-4 r8 <e g>16-3-5 <d f>-1-4|
		<<{e8-2-3 f-1-4 e4-3 d4-1 s4|}\\{cis8 d4 cis8^\markup{\finger 2} d4 bes8\rest <f' a>8|}>>
		<e g>4 r8 <g bes>8 <f a>4 r8 <e g>16 <d f>|
		<<{e8 f e4 d2|}\\{cis8 d4 cis8 d2|}>>
	}
}
LessonXVILower = \relative c'{
	\key f \major
	\time 4/4
	\clef bass
	\repeat volta 2 {
	%LINE 1
		d16-1-\hidePiano d,-5 f-3 e-4  d-5 e-4 f-3 g-2  a-1 g-3 a-1 bes-2  a-1 bes-2 a-1 g-3|
		f-4 e-5 f-4 g-3 a-2 g-4 a-3 bes-2 c-1 c,-5 e-3 d-4 c-5 d e f|
		g-1 fis-3 g-2 a-1 bes-3 a-4 bes-3 c-2
	%LINE 2
			d-1 c-3 d-2 e-1 c-3 bes-4 c-3 d-1|
		bes-3 a-4 bes-3 c-2  bes-3 d-1 c-2 bes-3  a-1 gis-4 a-3 b-2  a-4 b-3 cis-2 a-4|
		d-1 c-3 d-1 ees-2 d-1 ees-2 d-1 c-2  bes-3 a-4 bes-3 c-2  bes-3 g-5 a-4 bes-3|
		c-2 bes-3 c-2 d-1   c-2 d c bes-3  a-4 g-5 a-3 bes-2  a-3 f-5 g-4 a-3|
	%LINE 3
		bes-2 a-4 bes c   d-1 c-2 d-1 bes-3   c-1 d-2 c-1 bes-2  a-3 g-4 a-3 f-5|
		bes-2 a bes g  c-1 bes c c,  f-3 e f g  a-1 g-4 a-3 b-2|
		c-1 b-4 c-3 d-2 e-1 d-2 e-1 cis-3  d-1 a-4 b c  d-1 c-2 b-3 a-1|
		gis-2 e fis gis a-1 a, b c
	%LINE 4
			d-2 a'-1 b-3 c-2 d-1 d,-5 fis-2 d-4|
		e-3 f-2 e d c-5 d-3 e-2 c-4 d-3 c d e f-1 e-2 f d|
		e8-1 a,-4  e'-1 e,-5 a2^\switchThreeFive|
	}
	\repeat volta 2 {
		a'16-1 g-3 a-1 bes-2 a-1 bes-2 a-1 g-2 f-3 g-2 f e d-5 e-4 f-3 d-5|
	%LINE 5
		c'-1 bes-2 c-1 d-2  c-1 d-2 c-1 bes-2 a-3 bes-2 a-3 g-4  f-5 g-4 a-3 f-5|
		g-4 f-5 g-4 a-3  bes-2 a-4 bes-3 c-2 d-1 c-4 d-3 e-2 f-1 f,-5 g-4 a-3|
		bes-2 c-1 d-2 bes-4 c-1 bes-2 c-1 c,-5  f-3 g a bes-3 c-2 d c bes|
		a-1 g f e  f-3 g-2 a-1 bes-2 c-1 c, e d c-5 d e f|
	%LINE 6
		g-1 fis-3 g-2 a-1  bes-3 a-4 bes-3 c-2  d-1 d,-5 f-2 e-3  d-4 e-1 d-2 c-3|
		bes-4 c-2 bes-3 a-4  g-5 a-4 bes-3 g-5  a-4 b cis a  f'-1 g-4 a bes|
		c c, e-3 c  g'-2 a-1 bes-3 c-2  
	%LINE 7
			d-1 d, f-3 d g-1 g, bes-3 g|
		a8-4[ d-2] a'-1[ a,-5] d16-3 cis-4 d e  f-1 g-4 a bes|
		c c, e-3 c  g'-2 a-1 bes-3 c  d d, f-3 d  g-1 g, bes-3 g|
		a8[ d] a'[ a,] d2|
	}
}
