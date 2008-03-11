\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			\partial 4 \Sib c8 g16 g |
			g8 g r16 g b a f4 r |
			\Sem a8 a16 a g8 a f f r4 |
			a8 h16 c g8 g r e g8. c16 |
			a8 a r e a8. a16 a8 e |
			f f \Tam a4 \Sem d8 gis,16 a e8 e16 \Tam e' |
			c4 \Sem e,8 e16 e a8 a16 a a8 g |
			g4 r g8 d16 e f8 e |
			c c r4 \Tam g' c8. g16 |
			\Sem g4 \Tam r8 c a a r c |
			d d r4 d8 e16 f c8 c |
			r4
		}

	\bar "|."
	}

}
