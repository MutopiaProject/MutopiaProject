\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 100 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r8 d16 d d8 a16 b g8 g r g |
			h h h c d4 d |
			r8 d16 e f8 f16 e e8 e r16 h d c |
			a8 a r16 a c h c8 c r c |
			c c c h h h r h |
			d d e fis ais,4 ais8 h |
			h h r h d h e e |
			e h16 c d8 c  c c r e |
			c c h a d d r16 d e f |
			h,16 h h c d8. e16 c8 c r c |
			es4 es r8 c16 d es8 es16 d |
			h8 h d2 c8 c |
			a a r4 c8 c e f16 g |
			c,8 c r c c g g a |
			b b b a a a r e' |
			cis cis h a d d r d |
			b d d a r2 |
		}

	\bar "|."
	}
}
