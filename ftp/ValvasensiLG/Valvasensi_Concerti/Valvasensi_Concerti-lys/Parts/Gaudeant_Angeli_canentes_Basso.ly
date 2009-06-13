\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key d \minor
	\clef bass
	\relative c' {
		\once \override Staff.TimeSignature #'style = #'single-digit
		\set Score.measureLength = #(ly:make-moment 3 1)
		g2. g4 f2 b4 a g a b2 |
		\set Score.measureLength = #(ly:make-moment 9 2)
		d, es f b,4 a g a b2 c d f |
		\set Score.measureLength = #(ly:make-moment 6 1)
		b,4 c d e f2 b,1. b2 es f b,1 b2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		c1 f2 b4 a g f es d |
		c2 f4 e d c b2 b'4 a g f |
		\set Score.measureLength = #(ly:make-moment 7 2)
		es d c2 d
		\time 4/4
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 7 2)
		g,1 es'2 c4 f |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d g c, f |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b, c d es d2 es |
		f g c,1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		\tempo 4=240
		es\longa
		\tempo 4=120
		\set Score.measureLength = #(ly:make-moment 3 1)
		d4 b f2 b1 b'4 a 8g f2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		f4 d c2 d4 es2 c4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		d2 d d1 g4 es2 es4 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d c b2 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		c4 d es2 f\breve b,1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b'4 a g f8 e d c d e f4 a, |
		b8 a b c d4 b c2 d |
		g,1 d'2~ d |
		f4. es8 d2 d4 f c g' |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d2~ d |
		es4 b f2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		b8 b g a b2 f2. g4 |
		f8 f' d e f4. e8 d2. c4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g'1 c, f2. g4 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		d2 d2. b4 f2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		b1 g4 a b c d e fis2 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g c, f,1 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f'2 d4 g |
		\set Score.measureLength = #(ly:make-moment 4 2)
		c,4. c8 c2 es g |
		\set Score.measureLength = #(ly:make-moment 4 4)
		f1 |
		b,2 d |
		c f |
		g4. a8 b4 a |
		g f es d |
		c2 g |
		g'1 |
		\set Score.measureLength = #(ly:make-moment 5 1)
		d g,\longa |
	\bar "|."
	}

}