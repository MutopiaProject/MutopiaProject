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
			es8. es16 c8 d16 es a,8 a r16 a c b |
			b8 b r16 b b a a8 a r a |
			f4 r8 a d d r c |
			a a r4 r8 cis16 cis e8 e16 d |
			e8 e r16 cis d e ais,8 ais r cis |
			cis d e d h h r4 |
			h8 h16 h h8 h dis dis r dis |
			dis fis dis cis16 h e8 e r e16 e |
			h4 h8 c d d r d16 e |
			f4 f8 e c c r16 c c d |
			b b b b b8 c16 d g,8 g r16 g g a |
			b8 b r b c g b as |
			as as r16 as g f h4 r16 h a g |
			es'8 r16 es c8 c r2 |
		}

	\bar "||"
	}
}
