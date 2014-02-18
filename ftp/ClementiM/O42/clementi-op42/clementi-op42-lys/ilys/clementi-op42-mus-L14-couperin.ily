\version "2.16.1"
\include "definitions.ily"

% LESSON XIV.  Le Révelmatin by Couperin.

LessonXIVUpper= \relative c'{
	\key f \major
	\tempo "Vivace" 4=140
	\time 12/8
	\hideTempo
	\clef treble
	\repeat volta 2 {
		\mergeDifferentlyHeadedOn
		\mergeDifferentlyDottedOn
		\set Score.measurePosition = #(ly:make-moment 2 8)
		f8-1 f-1 a-2 bes-3 c-4\mordent( d-5 c-4) c-4 g-1 a-2|
		bes\mordent-3 c-4 bes-3 bes-4( a-3\prall g-2) a-3 bes-4 a-3 \preTrill g4\prallprall^\trillFour f8-2|
		<e g c>4-1-3-5 c'8-1 c-1 e-2 f-3 g\mordent^4 a-5 g-4 g-4 d-1 e-2 |f\mordent-3 g-4 f-3 f-4 e\prall^3 d-2
	%LINE 2
		e-3 f-4 e-3 \preTrill d4\prallprall^\trillThree c8-1|
		<<{<d g>4-2-3-5}\\{b4}>> g8-1 g-3 e-1 g-4 f-3 d-1 f-4 e-3 c-1 e-3|
		d-2 b-1 g'-5 g-2 e'-5 g,-2 f-1 d'-5 f,-2 e-1 c'-5 e,-1|
		b'\prall-2 g-1 g'-5 g-5 g,-1 g'  g g, g' g g, g'|
		g16 g, g' g, g' g,  g' g, g' g, g' g,  g' g, g' g, g' g,  g' g, g' g, g' g,|
	%LINE 3
		g' g, g' g, g' g,  g' g, g' g, g' g,  g' g, g' g, g' g,  g' g, g' g, g' g,|
		g' g, g' g, g' g,  g'8-5 f-3 e-1 a-3 b-4 c-5 \preTrill d,4\prallprall^\trillThree c8-1|
		\set Score.measurePosition = #(ly:make-moment 10 8)
		<c g e>4-1-2-4|
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 8)
		c8-1 c-1 d-2 e-3 f\prallprall-4 g-5 f-4 f-3 g-4 a-5|
		d,-1 bes-2 d-3 d\prallprall-3 cis-2 d-3 e-4 f-5 e-4 e-3 f-4 g-5|
		\preTrill cis,4\trill^\markup{\finger 2} a'8-5 a-5 a, a'
	%LINE 4
		a a, a'  a a, a'|
		a16 a, a' a, a' a,   a' a, a' a, a' a,   a' a, a' a, a' a,   a' a, a' a, a' a,|
		a' a, a' a, a' a,   a' a, a' a, a' a,   a' a, a' a, a' a,   a' a, a' a, a' a,|
		a' a, a' a, a' a,   a'8-5 g\prall^3 f-2  bes-5 e,-2 f-3 e4\prall-2 d8-1|
		<d a fis>4-2-3-5 d8-1 d-1 e-2 fis-3 g-4 fis-2 g-3 g\prallprall-3 fis-2 g-3|
	%LINE 5
		a-4 g-2 a-3  a\prallprall-3 g-2 a-3 bes-4 c-5 a-4 g\prall-3 fis-2 g-3|
		fis4-2 d8-1 d-4 bes-2 d-4 c-3 a-1 c-4 bes-3 g-1 bes-4|
		a-3 fis-2 d'-5 d-1 bes'-5 d,-2 c-1 a'-5 c,-1 bes-2 g'-5 bes,-2|
		fis'\prallprall-3 e-2 d-1 g-3 a-4 bes-5 a-4 bes-5 e,-1 fis8.\prallprall-3 e16-2 fis8-3|
		<g d bes>4-1-2-4 <<{bes8-5 bes4-5 d,8-2}\\{g,8-3 g-3 a-1 bes-2}>>
	%LINE 6
		<<{c8-1 c'-5 bes-4 a-3 bes-4 g-2|a-4 c,-1 a'-4 a4-5 c,8-2 bes-1 bes'-5 a-4 g-3 a-5 f-3|
		    g-5 bes,-2 g'-5 g4-5 bes,8-2 a-1 a'-5 g-4 f-3 g-4 e-2|f-4 a,-1 f'-4 f4-5 a,8-2}\\
			{e4-5 g8-1 c,4-3 e8-1|s4 f8-1 f-3 g-2 a-1 d,4-4 f8-1 bes,4-3 d8-1|
			  s4 e8-1 e-3 f-2 g-1 c,4-4 e8-1 s4.|s4 d8-1 d-3 e-2 f-1}>>
			  g8-1 g'-5 f-4 e-3 f-4 d-2|e\prallprall-3 d-2 c-1 f-3 e-2 f-1 g-2 c-5 bes-4 a-3 g-2 f-1|
	%LINE 7
		\preTrill g4\trill^\trillFour c,8-1 c-3 a-1 c-4 bes-3 g-1 bes-4 a-3 f-1 a-3|
		g-2 e-1 c'-5 c-1 a'-5 c,-1 bes-2 g'-5 bes,-2 a-1 f'-4 a,-1 |
		e'\prallprall-3 d-2 c-1 f\prallprall-3 g-4 a-5 d,-1 bes'-5 a-4 g4\prallprall^\trillFour f8-2|
		<<{<f c>4-1-2-4}\\{a,4}>> c8-2 c-3 a-1 bes-2 c-1 d-3 ees-4 ees-4 d\prallprall-3 c-1|
		d-3 bes-2 d-3 d-3 b-1 c-2 d-3 e-4 f-5 f-3 e\prall-2 d-1|
	%LINE 8
		e-2 c-1 c'-5   c-5 c, c'   c c, c'  c c, c'|
		c16 c, c' c, c' c,   c' c, c' c, c' c,   c' c, c' c, c' c,   c' c, c' c, c' c,|
		c' c, c' c, c' c,   c' c, c' c, c' c,   c' c, c' c, c' c,   c' c, c' c, c' c,|
		c' c, c' c, c' c,   c'8-5 bes\prall-3 a-2 g-1 a-4 f-2 g4\prallprall^\trillFour f8-2|
		\set Score.measurePosition = #(ly:make-moment 10 8)
		<<{<f c>4-1-2-4}\\{a,4}>>
	}
}
LessonXIVLower = \relative c'{
	\key f \major
	\time 12/8
	\clef bass
	\repeat volta 2{
	%LINE 1
	\mergeDifferentlyHeadedOn
	\mergeDifferentlyDottedOn
		\set Score.measurePosition = #(ly:make-moment 2 8)
		r8 <<{r4 a8-1 r4 g8-1 r4 g8-1 |r4 f8-2 e4.-3 }\\
		{f4.-2 e-3 ees-4| d-5 e4 c8^\markup{\finger 5} f^\markup{\finger 2} g^\markup{\finger 1}
		f^\markup{\finger 2} e4^\markup{\finger 1} d8^\markup{\finger 2}}>>|
		<c c,>4 r8 <<{r4 e'8-1 r4 d8-1 r4 d8-1 r4 c8-2 b4.-3}\\{c4.-2 b-3 bes-4 a-5 b4 g8-5}>>
	%LINE 2
		c8-2 d-1 c-2 b4-1 a8-2|<g g,>4 r8   g,16 g' g, g' g, g'   g, g' g, g' g, g'   g, g' g, g' g, g'|
		g, g' g, g' g, g'    g, g' g, g' g, g'    g, g' g, g' g, g'   g, g' g, g' g, g'|
		g,8 r g'-1 d4-3 f8-1 e4-2 g8-1 b,4-5 d8-2|
		c-3 e-1 c-3 b-4 d-2 g,-5 c-3 e-1 c b d g,|
	%LINE 3
		c8-3 e-1 c-3 b-4 d g,  c e c  b d g,|
		c-1 e-2 c-1 e,4-3 c8-5 f4-2 d8-4 <<{g4-1 g,8}\\{g'4.}>>
		\set Score.measurePosition = #(ly:make-moment 10 8)
		<c c,>4
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 8)
		r8 c'4-1  bes8-2 <<{s4 c8-1~ c4 c8}\\{a4.-3~ <a f>4.-5}>>|
		<<{s4 bes,8-5 s4 s4 s8 bes'8-2~ bes4 bes8-2|}\\{bes4.^\trillTwo bes4-1 a8-2 g4.-3~ <g e>-5|}>>
		a4-1 a8-1 e4-3 g8-1
	%LINE 4
		f4-2 a8-1 cis,4-4 e8-2|d8-3 f-1 d-3 cis-4 e-2 a,-5 d-3 f-1 d cis e a,|
		d-3 f-1 d-3 cis-4 e-2 a,-5 d-3 f-1 d cis e a,|
		d-1 f-2 d-1 f,4-3 d8-5 g4-2 e8-4 <<{a4-1 a,8|}\\{a'4.}>>
		<d d,>4 r8 d'4-1 c8-2 bes4-3 a8-1 bes4-2 g8-1|
	%LINE 5
		fis4-2 e8-3 fis4-2 d8-4 g4-1 f8-2 ees4-3 c8-5|
		<d d,>4 r8   d16 d' d, d' d, d'   d, d' d, d' d, d'   d, d' d, d' d, d'|
		d, d' d, d' d, d'   d, d' d, d' d, d'   d, d' d, d' d, d'   d, d' d, d' d, d'|
		<d, d'>4 c'8-2 bes4-3 g8-5 c4-2 a8-4 <<{d4.|}\\{d4 d,8}>>|
		<g g,>4
	%LINE 6
		s4 s1|f4-5 s4 s1|e4-5 s8 s2. a4-3 c8-1|d,4-5 s2 bes'4-4 d8-1 g,4-3 bes8-2|
		<<{c4.-1~ c4 c8~ c4}\\{c,4-5 bes'8-2 a4-3 c8 e,4-3}>> c8-5 f-1 e-2 d-3|
	%LINE 7
		<c c,>4 r8 c16 c' c, c' c, c'   c, c' c, c' c, c'   c, c' c, c' c, c'|
		c, c' c, c' c, c'   c, c' c, c' c, c'   c, c' c, c' c, c'   c, c' c, c' c, c'|
		<c c,>4 bes8-2 a4-3 f8-5 bes4-2 g8-4 <<{c4.-1|}\\{c4 c,8}>>
		<f f,>4 r8 <<{f'4.~ f2.}\\{f4.-1 a,4.-3 f-5|}>>
		<bes bes,>4 r8 <<{g'4.~ g2.}\\{g4.-1 b,4.-3 g-5|}>>
		<c c,>4 c8-1 g4-4 bes8-2 a4-3 c8-1 e,4-4 g8-2|
		f8-3 a-1 f-3 e-4 g-2 c,-5 f-3 a-1 f e g c,|
		f8-3 a-1 f-3 e-4 g-2 c,-5 f-3 a-1 f e g c,|
		f-1 a-2 f-1 a,4-3 f8-5 bes4-2 g8-4 <<{c4-1 c,8}\\{c'4.}>>
		\set Score.measurePosition = #(ly:make-moment 10 8)
		<f f,>4
	}
}

