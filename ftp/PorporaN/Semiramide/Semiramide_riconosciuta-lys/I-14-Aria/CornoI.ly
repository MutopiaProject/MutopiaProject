\new Staff  {
	\time 4/4
	\tempo 4 = 100
	\override Score.MetronomeMark #'stencil = ##f
	\set Staff.instrumentName="Corni da Caccia"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' { 	
		c2~ c~ |
		c~ c~ |
		c~ c~ |
		d1 |
		e2 d |
		e d~ |
		d g~ |
		g fis |
		g f |
		e f |
		g a4 h\prall |
		c a g f |
		e8 c c4 r2 |
		R1*15 |
		r2 g~ |
		g1~ |
		g~ |
		g2~ g |
		R1*5 |
		r2 d'~ |
		d g~ |
		g fis |
		g d |
		e d |
		d4 e8 g g4 fis |
		g r r2 |
		R1*3 |
		c,1~ |
		c2 d~ |
		d c4 r |
		R1*21 |
		r2 e |
		f g |
		a4 h\prall c a |
		g f e8 e16 e e8 c16 c |
		c4 r r2 |
		R1*21 \override Score.RehearsalMark #'direction = #DOWN \once \override Score.RehearsalMark #'break-visibility =
		#begin-of-line-invisible \mark \markup { "D.C." } |
	\bar "|."
	}

}
