\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key d \minor
	\clef bass
	\relative c { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
		g2. g4 g1 |
		c g |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g' fis es d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d h2 c4 a |
		h c d2 g,1 |
		d'8. b16 es8. c16 f8. d16 g8. es16 d4 c f d8 f |
		c2 c g8 a b c d4 es |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f,1 b4 f2 g4 a1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d2 b4 c |
		d es d2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d4 c f d c2 c4. a8 |
		g4 a b c d es b c |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d1 g, g'4 f es d es2 d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g,4 a b4. c8 d4 e fis2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g fis g1 d2. e4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		fis2 g d h |
		c4 a2 a4 d2. c4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		d1 g, es'4 b c2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g4 d' g, d' h1 |
		c c4 d es f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 c,4 b a f |
		c' d e f c1 |
		f,2 f' d4 g c, f |
		\set Score.measureLength = #(ly:make-moment 3 1)
		b, b'8 a g4 f es1 d |
		d4 a b fis g1 d' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		h2 c4 a g1 |
		c f, |
		c'2 es d4 b f2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		b4 b' a g |
		f es d c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b g d'2 g, b |
		c4 d es c d1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
	\bar "|."
	}

}