\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c' { 	
		\set Score.measureLength = #(ly:make-moment 6 1)
		g1 g d g,1. g2 g1 |
		h c d g,1. g2 g1 |
		g' g e2 d c1. c2 c1 |
		e f g c,\breve c1 |
		c\breve g1 a\breve e'1 |
		h1. a2 g1 h d d |
		g,\breve g1 e'1. e2 a,1 |
		e'\breve e1 f d e |
		a,1. a2 a1 a'\breve g1 |
		f1. f2 d1 e1. e2 e1 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		c\breve g1 a\breve e'1 a,\breve. |
		\set Score.measureLength = #(ly:make-moment 6 1)
		c1 g a e'1. e2 e1 |
		c g' a e1. e2 e1 |
		e a g c,1. c2 c1 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		f e g c,\breve. c'1 h a |
		g1. g2 f1 e h d g,\breve. |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g'1 g a g g d |
		g g a g g d |
		g g a g\breve f1 |
		e\breve f1 g1. g2 g1 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		f1 e g c,\breve. c1 g' g2 a |
		e1 h d g,\breve. e'1. e2 a,1 |
		e'\breve e1 f d e a,1. a2 a1 |
		a'\breve g1 f1. f2 d1 e1. e2 e1 |
		c\breve g1 a\breve e'1 a,\breve. |
		\set Score.measureLength = #(ly:make-moment 6 1)
		e'1 a g c,1. c2 c1 |
		\set Score.measureLength = #(ly:make-moment 9 1)
		f e g c,\breve. c'1 h a |
		\set Score.measureLength = #(ly:make-moment 6 1)
		g1. g2 f1 e h d |
		\time 4/4
		\tempo 4=100
		\set Score.measureLength = #(ly:make-moment 4 2)
		g, g'2 g,8. a16 g8. a16 |
		h2. e4 d1 |
		\set Score.measureLength = #(ly:make-moment 4 1)
		g,\longa
	\bar "|."
	}

}