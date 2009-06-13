\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key d \minor
	\clef bass
	\relative c' { 	
		\set Score.measureLength = #(ly:make-moment 4 2)
                g2 d f a, |
		c1 c |
		c2 f d g, |
		f1 f2. f'4 |
		c1 c2 f |
		f es f1 |
		b,2 f c'1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		c2 g |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g1 d'2 a4 f8 g a1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		\tempo 4=240
		g\longa |
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 4 2)
		es2 c d1 |
		\set Score.measureLength = #(ly:make-moment 5 1)
		g,1 \tempo 4=240 f'\longa \tempo 4=120 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 a c2. c4 |
		\set Score.measureLength = #(ly:make-moment 5 2)
		f,1
		\once \override Staff.TimeSignature #'style = #'single-digit
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 5 2)
		es'1 es2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		d2. d4 d2 d f e |
		g1 g2 c,1 c2 |
		c2 c c g1 g2 |
		c1 c2 g2. a4 b2 |
		es c d g,1. |
		g'2 f es f1. |
		d2 es f b,1. |
		f'2 f g c,1. |
		d2 es f b,1. |
		\set Score.measureLength = #(ly:make-moment 5 2)
		g2 c d
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 5 2)
		g,4 d' g es |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d d e f g2 b, |
		a1 d |
		g2. d8 h d4 e fis2 |
		g g, d'1 |
		d4 d8 e f4 g f1 |
		b,2 d1 f2 |
		f,4 a2 a4 c1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f, |
		g |
		c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g2 d' g,1 |
		\once \override Staff.TimeSignature #'style = #'single-digit
		\time 3/2
		\tempo 4=360
		\set Score.measureLength = #(ly:make-moment 3 1)
		g'1 es2 d2. d4 d2 |
		d f e g1 g2 |
		c,1 c2 c c c |
		g1 g2 c1 c2 |
		g2. a4 b2 es c d |
		\time 4/4
		\tempo 4=120
		g,2 c4 d |
		g, d' a2 |
		d2 f4 g |
		d b c d |
		g,2 g'4 e |
		f d es c |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d b c2 d g, |
		c g d'1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa |
	\bar "|."
	}

}