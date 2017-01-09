\new Staff  {
	\time 3/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 120
	\set Staff.instrumentName="Corni"
	\set Staff.midiInstrument="french horn"
	\transposition d
	\key c \major
	\clef treble
	\relative c'' {
		e d2 |
		e4 g e |
		f a f |
		f e8 e e e |
		f4 d2 |
		e4 g8 f e g |
		f4 d2 |
		e8 f e f e f |
		d4 d2\prall |
		e4 g8 f g f |
		e4 g8 f g f |
		e4 g8 f g f |
		e2 f4~ |
		f d2 |
		e4 g8 e g e |
		c4 c8 c c c |
		c4 r r |
	\bar "|."
	}

}
