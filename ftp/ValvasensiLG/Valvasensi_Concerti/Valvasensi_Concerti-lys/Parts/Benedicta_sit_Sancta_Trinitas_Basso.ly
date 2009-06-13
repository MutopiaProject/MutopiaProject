\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
		\set Score.measureLength = #(ly:make-moment 4 1)
		d1. d2 a1 e'2 c |
		\set Score.measureLength = #(ly:make-moment 3 1)
		h a e'2. e4 a,1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		a'1. g2 f2. e4 d1 |
		a e'2 f c d a1 |
		d1 d2 cis d f e1 |
		a,2 a'4 g f e d cis d2 a4 d cis1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d1. cis2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d1 a2 a' gis gis a f |
		e1 cis2 d g f e1~ |
		\set Score.measureLength = #(ly:make-moment 3 1)
		e a,4 d d cis d2 a |
		d1 a4 h2 a4 e'2 e4 a, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d e a,2 a2. e'4 |
		f c d2 cis4 d a2 |
		d1 a'4 g f e |
		d f e2 d e4 a, |
		\set Score.measureLength = #(ly:make-moment 3 1)
		e'2 e4 d a2 d h4 a e'2 |
		a, d h4 a e' f e2 a, |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f'2. c4 d a b2 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a d4 f d e a,2 |
		e'4 d c h8 a g1 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		c2. g4 a e' a,2 e'1 |
		e4 a,2 f'4 e2 e4 a,2 a4 e'2 |
		e4 c2 g4 a e' e d e2 a, |
		d4 c b b a1. d2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2. b4 a2 g |
		a\breve |
		\set Score.measureLength = #(ly:make-moment 4 1)
		d\longa |
	\bar "|."
	}

}