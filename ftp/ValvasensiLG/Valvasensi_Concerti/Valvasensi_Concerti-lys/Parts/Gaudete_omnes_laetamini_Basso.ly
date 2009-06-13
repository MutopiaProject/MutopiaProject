\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key f \major
	\clef bass
	\relative c {
		\set Score.measureLength = #(ly:make-moment 6 1)
		f1 f g f f b, |
		f'1. f2 f1 a, b c |
		f, f r f' e f |
		b,1. b2 b1 d d a |
		d1. d2 d1 g, g d' |
		g,1. g2 g1 c c g |
		c1. c2 c1 f f d2 e |
		f\breve f1 f f d2 e |
		f\breve f1 f, f b |
		f\breve f1 b1. f2 c'1 |
		\time 4/4
		\set Score.measureLength = #(ly:make-moment 3 1)
		f,1 f'1. a2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g1. g2 f1 c |
		\set Score.measureLength = #(ly:make-moment 3 1)
		\tempo 4=120
		f2 e d1 c |
		g d' g, |
		f'2. f4 f1 f4 es8 d g,2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d'1 d2 es |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b,1 b2 d |
		d4 a2 a4 c1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f, f'2. e4 d2. c4 b2 a |
		b c f,1 f' e2 f |
		b,4 c d e f2 e d1 c2. d4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e2 f d c |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 c f,2 g |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f f' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g f c4 f, c'2 |
		f,1 f'4 d es c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f d es c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d a f a c1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f, f'2. f4 f\breve |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f,2. f4 f1 f'2. f4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f8 f, a b c2 g f |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f' d4 es |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 d g,4 c g2 |
		c2 f4 f8 e d2 g4 g8 f |
		\set Score.measureLength = #(ly:make-moment 4 4)
		e2 f4 e8 d |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c1 f, |
		\set Score.measureLength = #(ly:make-moment 3 1)
		c'2. c4 c2 a g1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f2 c' d1 |
		g, c4 d c2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c4 a g2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		f1
		\time 3/2
		\tempo 4=540
		\set Score.measureLength = #(ly:make-moment 4 1)
		f'1. f2 g1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		f1. f2 f1 |
		\set Score.measureLength = #(ly:make-moment 6 1)
		f,1. f2 g1 c1. c2 c1 |
		f\breve. es |
		d a1 c\breve |
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 4 2)
		f,2 f' d a |
		\set Score.measureLength = #(ly:make-moment 5 1)
		c1 f,\longa |
	\bar "|."
	}

}