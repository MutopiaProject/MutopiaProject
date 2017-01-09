\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120 
	\set Staff.instrumentName="Corno I"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c' {
		c2.~ |
		c~ |
		c~ |
		c~ |
		c~ |
		c'~ |
		c |
		d |
		e4 d r |
		e d r |
		e d c |
		d r r |
		c2.~ |
		c2 g'4 |
		e2 f4 |
		g e d |
		c r r |
		R2. |
		r4 r g' |
		e a g |
		e c d |
		c r r |
		c,2.~ |
		c~ |
		c~ |
		c~ |
		c'~ |
		c~ |
		c |
		d |
		c4 c c |
		g2.~ |
		g |
		c4 g r |
		g2.~ |
		g |
		c4 g r |
		R2.*5 |
		d'2.~ |
		d4 g2~ |
		g2.~ |
		g |
		fis |
		g4 fis2 |
		g2.~ |
		g2 fis4 |
		g2 a4 |
		g d2 |
		d4 r r |
		c,2.~ |
		c |
		c |
		c' |
		c4 r r |
		d2.~ |
		d~ |
		d~ |
		d~ |
		d4 g, g |
		g2.~ |
		g~ |
		g~ |
		g~ |
		g |
		g2 r4 |
		R2.*14 |
		c'2.~ |
		c |
		c |
		d |
		c4 r r |
		R2. |
		r4 r g |
		e2 f4 |
		g e d |
		e r r \bar "||" |
		R2.*23 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
