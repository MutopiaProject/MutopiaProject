\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c {
		\set Score.measureLength = #(ly:make-moment 4 2)
		e\breve |
		e1 dis2 e |
		a,1 e2 e' |
		\set Score.measureLength = #(ly:make-moment 3 1)
		cis d h1 h2 e |
		e4 d c4. h8 a4 h c d e1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a,4 h cis2 d1 |
		a2 g4. h8 c2 h |
		\set Score.measureLength = #(ly:make-moment 3 1)
		d1 g, c2. h4 |
		a4 h c4. d8 e4 fis g a e4. d8 c4 h |
		\set Score.measureLength = #(ly:make-moment 4 4)
		a1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e' h |
		e e |
		a, e'2 d |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d c |
		c c4. d8 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e4 f d e a,1 |
		a'2 gis4 a d,1 |
		a2 a'2. g4 fis2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		g2. f4 e1 e |
		e2 cis d e a,1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a2. h4 c2. d4 |
		\set Score.measureLength = #(ly:make-moment 4 4)
		e2 d4 h |
		\set Score.measureLength = #(ly:make-moment 4 2)
		a2 e'2. d8 c h a h c |
		\set Score.measureLength = #(ly:make-moment 4 4)
		d2 a |
		\set Score.measureLength = #(ly:make-moment 4 2)
		g1 c |
		\set Score.measureLength = #(ly:make-moment 3 1)
		e4 d8 c h a h c d2 e a,2. a'4 |
		fis2 g d a e'4 c2 h4 |
		\set Score.measureLength = #(ly:make-moment 16 2)
		a2 d2. d4 g2 e cis4 d a1 e'\longa |
	\bar "|."
	}

}