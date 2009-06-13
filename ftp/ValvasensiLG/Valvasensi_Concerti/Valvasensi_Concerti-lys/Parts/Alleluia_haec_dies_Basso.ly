\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c' { 	
		\set Score.measureLength = #(ly:make-moment 3 1)
		c2 c f, c1. |
		c'2 a g f1 b2 |
		g c a g c4 h a g |
		\set Score.measureLength = #(ly:make-moment 5 2)
		f2. e4 g2
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 5 2)
		c,1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		r4 c' c2 g4. a8 h2 c4 c, f c |
		g'4. g8 c,2 r4 c' c2 g4. a8 h2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c1. f,2 |
		g1 c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		b2~ b |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a4 g d2 g4 c8 h a4 g |
		f e g2 c,1 |
		c'4 a8 h c4 f, c'2 c,4 d |
		c1 c'2 a4 b |
		g2 c4 a g a g2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g c4 a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b g a2 f4 g c,2 |
                \once \override Staff.TimeSignature #'style = #'single-digit
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		c' c f, c1. |
		c'2 a g f1 b2 |
		g c a g c4 h a g |
		\set Score.measureLength = #(ly:make-moment 5 2)
		f2. e4 g2
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 5 2)
		c,1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c'4 c8 c c4 f, c c8 c c4 f |
		c' c8 c c4 d c c8 c c4 f, |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c2 c4. d8 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e4 f c2 f4 d8 e f4 g |
		a fis a2 d,1 |
		c4. d8 e4 f g e g2 |
		c,2 c'4 a b g c a |
		d e c d g, c, e f |
		\set Score.measureLength = #(ly:make-moment 4 4)
		g1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		c,\longa |
	\bar "|."
	}

}