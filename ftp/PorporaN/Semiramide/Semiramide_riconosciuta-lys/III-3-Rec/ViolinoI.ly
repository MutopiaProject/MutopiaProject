\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c''' {
		\partial 2. s2. |
		R1*12 \bar "||"
		R1*14 |
		h16 g h g d h d h g' d g d h g h g |
		d4 r e'16 c e c g e g e |
		g1~ |
		g2 a |
		h'16 g h g d h d g d,2~ |
		d1~ |
		d |
		f |
		e |
		g~ |
		g2 a'16 f a f c a c a |
		f4 r b'16 f b f d b d b |
		g'4 r r g |
		a r r2 |
	\bar "|."
	}

}
