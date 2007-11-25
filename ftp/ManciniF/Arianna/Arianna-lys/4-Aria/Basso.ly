\new Staff  {
	\set Staff.midiInstrument="harpsichord"
	\key c \major
	\clef tenor
	\relative c' {
		#(override-auto-beam-setting '(end * * 3 4) 3 8)
		#(override-auto-beam-setting '(end * * 3 4) 3 8)
		a8. h16 c8 h a4 |
		f' e8 d8. e16 f8 |
		gis,4 a e |
		a, r8 r4. |
		a'8. h16 c8 h a4 |
		f' e8 d c4 |
		d4 g,8 a4 g8~ |
		g f4 e8. fis16 gis8 |
		fis e4 c'8. h16 a8 |
		f'8. e16 d8 e a,4 |
		d,8. h16 c8 h a4 |
		h'8. a16 g8 e'8. d16 c8 |
		d g,4 c e,8 |
		d4 c g' |
		\clef bass c,8. d16 e8 d c4 |
		a' f g |
		c, r8 e c4 |
		g' r8 gis e4 |
		a g8 f4 e8~ |
		e f4 e h'8 |
		c8. d16 c8 c cis4 |
		d d,8 d' c4 |
		h r8 e, d4 |
		c a'8 h8. c16 h8 |
		h a4 gis a8~ |
		a e4 a, e'8 |
		f8. g16 f8 f fis4 |
		g g,8 g' f4 |
		e4 r8 a g4 |
		f d'8 c8. h16 a8 |
		a gis4 a8. h16 c8 |
		d,4 dis e |
		a, d8 d4 c8~ |
		c e4 a8. h16 c8 |
		h a4 \clef tenor f'4 d8~ |
		d e4 a, \clef bass a8 |
		f4 e8 f g4 |
		a8. h16 c8 h a4 |
		g g8 a8. h16 g8 |
		a h4 c h8 |
		c a4 h c8 |
		h4 c d |
		g, d8 e8. fis16 d8 |
		e fis4 g c,8~ |
		c d4 g f8 |
		e4. cis8 a4 |
		d f8 e d4 |
		cis8. d16 e8 d cis4 |
		d8. e16 f8 e d4 |
		a' f8 g8. a16 g8 |
		g f4 b a8 |
		g4 gis a |
		d,8. e16 f8 e d4 |
		a' a,8 d8. e16 d8 |
		d c4 h g'8 |
		fis4 e h |
		e8. fis16 g8 fis e4 |
		c'4 h8 a4 ais8~ |
		ais h4 e, r8 |
	\bar "|."
	}

}
