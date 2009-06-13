\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c, { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
                f1 f2 g |
		d' d f1 |
		f,2 g4 f c'2 c |
		g'2. f8 es f1 |
		b, b4. a8 g4 f |
		c' a2 g4 c2 d |
		g,4 a2 b8 a c1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f,2 f' e f d1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c2 f f,1 |
		b es4 f b,4. b8 |
		b2. b4 f4 g d' es |
		c4 g d'2 g,1 |
		g2 c c1 |
		f, b2 a |
		c2. a4 g f g2 |
		f4. g8 a4 d c1 |
		f,2 f' b,8 c d e f f, a b |
		c d e f c2 f,1 |
		f'2 b, f'4 g f2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f,2 c'4. d8 |
		c4 a g2 |
		d' f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b, f4 g d'1 |
		g,2 f g4 f c'2 |
		f,2 f'4 e d c b8 c d e |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f2 f,8 g a f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g2 d' g, b4 d8 es |
		es4 f b,2 f g4 a |
		b c f,2 c'4 c8 c b4 b |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a2 g4 f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c'2 es es g4 f |
		es4 f b,2 g4. a8 b4 f |
		c'2. a4 a g d'2 |
		g, a b4 a c2 |
		f,1 f'2 f4 f |
		es es d2 d4 f f f |
		g g, d'2 d4 b b b |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a2 g |
		g4 c c f,8 g |
		a4 g8 a b2 |
		b f'4 g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f4 es d b f2 b |
		b f f' b, |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f'4 f, a b c1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f,\longa |
	\bar "|."
	}

}