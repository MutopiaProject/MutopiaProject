\new Staff  {
	\set Staff.instrumentName=""
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef bass
	\relative c { 	
                \set Score.measureLength = #(ly:make-moment 4 2)                
		e1 dis2 e |
		e cis4 d h a e2 |
		e'2. e4 e1 |
		e,2. e4 e'2 a, |
		e' e4. d8 c4 a c4. d8 |
		e1 a, |
		e'2. e4 dis e c2 |
		h e dis4 e a,2 |
		e'4. d8 c4 h8 a e'1 |
		a,2 a' fis1 |
		g e |
		a,4 d h a h2 e |
		a4 e8 e a,4. a8 e'1 |
		cis2 d h c~ |
		c4 g a2 e'2. e4 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		d1 d2. h8 h a2 e' |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e, e' cis4 d h8 a h c |
		d4 h a h c4. d8 e4 f |
		d e e2 a,4 a' fis2 |
		a4 a, h e cis d h c |
		f,2 g c1 |
		e2 cis d e |
		a,4 a' fis g e a d, g |
		\set Score.measureLength = #(ly:make-moment 3 1)
		e2 cis d f,4. g8 a1 |
		d2. d4 g e cis2 d1 |
		\set Score.measureLength = #(ly:make-moment 4 2)
		e1 a,4 e' a,2 |
		e' a4 g e2 d~ |
		d4 e f2 e a, |
		e'1. a4 g |
		f e d e f d e2 |
		\set Score.measureLength = #(ly:make-moment 3 1)
		a,1 a'4 g f e d c h a |
		\set Score.measureLength = #(ly:make-moment 5 1)
		e'1 e,\longa |
	\bar "|."
	}

}