\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\Mir r4 d'8 a d d16 es c4 |
			c8 d es es16 d b8 b r g |
			b d cis cis e cis16 cis cis8 d |
			a4 \Sem r16 a a b g8 g b b16 a |
			f4 r8 e e f g f |
			g g b b16 c a4 r |
			a8 a16 a h8 c g g r4 |
			\Mir c8 c16 c c8 d b b16 b c8 g |
			a4 \Sem r16 f f g a8 g a a16 c |
			a8. a16 g8 a f f r4 |
			c'8 b a a16 b b8 b r16 b a b |
			b8 f r4 \Mir d'4 b8 b |
			r b c d c4 c |
			c8 d es es16 d b8 b r b |
			d d r f f c r4 |
		}

	\bar "|."
	}

}
