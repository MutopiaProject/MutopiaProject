\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c' {
		fis4 r r2 |
		r16 g h g d g d h gis4 r |
		R1 |
		r2 r16 e' a c e c e c |
		a c a g f a f e dis4 r |
		R1 |
		r16 e g h e h e h g h g fis e g e cis |
		ais4 r r2 |
		R1 |
		r8 r16 h' h8 r16 eis, eis4 r |
		r ais' h r |
		r8 r16 eis, eis8 r16 a a2~ |
		a r8 r16 a a8 r16 es |
		es4 r r8 d16 g g b b8 |
		r2 r8 cis,16 e e g g8 |
		r2 r8 d16 f f a a8 |
		r2 r8 d,16 g g b b g |
		e4 r r r8 e |
		f4 r r2 |
	\bar "|."
	}

}
