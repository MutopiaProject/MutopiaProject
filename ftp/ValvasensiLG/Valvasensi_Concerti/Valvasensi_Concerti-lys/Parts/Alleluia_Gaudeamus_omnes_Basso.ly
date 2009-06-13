\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c { 	
		\once \override Staff.TimeSignature #'style = #'single-digit
		\set Score.measureLength = #(ly:make-moment 3 1)
		f1. es |
		f g |
		g2 f d c2. a4 c2 |
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 4 2)
		f,1 f'2. f4 |
		f1 f, |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f4 g a b c d e2 f1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f,1 f'2. f4 e2 f d1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c |
		f,2 a4 c |
		g2 f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f' c c1 |
		c4 a g f f' es2 d4 |
		c2 g c4 f, a f |
		c'2. c4 f,1 |
		f'2 a,4. b8 c2 g |
		f4 b f'2 b, es |
		d1 g |
		c, c2 f4 d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c f, a b |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c1 f,2 f'4. e8 |
		d2 es4. d8 c2 f4 d8 es |
		d4 b f2 b4 es8 d c c f es |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d d b a g g a g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f f f' e d d es d c4 d b c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f, f'8 e d2 |
		es4 c f d |
		g c, g2 |
		c2. e4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f d8 a c2 f,1 |
		f' c4. d8 e2 |
		f4 f, g f c' f, b f |
		c' f, g f c' f, f'2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		b,4 g g'8 f e d |
		c4 c f8 e d c |
		b4 g d' e8 f |
		d4 g f2 |
		b,4 f'2 es4 |
		d a8 b c4 d |
		c1 |
		f,4 f'8 e d2 |
		es4 c f d |
		g c, g2 |
		c2. e4 |
		f4 d c2 |
		f4. es8 d c b4 |
		c c c2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f,\longa |
	\bar "|."
	}

}