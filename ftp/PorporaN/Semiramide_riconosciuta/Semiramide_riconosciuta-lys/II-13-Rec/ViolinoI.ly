\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.instrumentName="Violino I"
	\set Staff.midiInstrument="violin"
	\key c \major
	\clef treble
	\relative c'' {
		r2 r4 e16 g e c |
		g c g e g4~ g2~ |
		g r8 f'16 a f c a f |
		d4 r r d' |
		es8 g h, c r as' h, c |
		es,4 r r8 g' h, c |
		r a' cis, d fis,4 r |
		r8 d' fis, g b2~ |
		b1~ |
		b~ |
		b2 c~ |
		c4 r r8 des16 es f8 r |
		r4 g as2~ |
		as r8 r16 g g8 r |
		r8 r16 as as8 r16 as, as4 r |
		r r8 d es4 r\fermata |
		
	\bar "|."
	}

}
