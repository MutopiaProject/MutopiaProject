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
			r4 r8 h dis dis e fis |
			a, a r4 c8 c16 c c8 h |
			g g r16 h h c d8 d r4 |
			r8 d16 d d8 a16 h c8 c c h |
			h h r16 h d c d4 r8 g |
			g d r d f f f e |
			cis cis r16 cis h a d8 d d d |
			dis4 dis8 e e a, r4 |
			g8 g16 g c8 h c c r16 c d e |
			a,8 a r e' f f r f |
			f c c d es4 es8 es16 d |
			b8 b r4 d8 r16 g, f'8 es16 d |
			es8 es r16 es f g c,8 c r es |
			c c c b g g r4 |
		}

	\bar "||"
	}
}
