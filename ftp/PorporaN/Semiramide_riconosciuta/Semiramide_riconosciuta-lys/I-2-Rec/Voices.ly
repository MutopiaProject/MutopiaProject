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
			\partial 2 \Tam c8 c r4 |
			c8 d16 e e8 a, a h c c16 h |
			h8 h r4 h h8 e |
			e h16 h d8 c a4 \Sem e8 e16 e |
			a8 gis a a a a16 h c8 h |
			h h r h h h h fis16 fis |
			a8. a16 a8 g e e r4 |
			h'8. e,16 e4 r8 fis a g |
			a4 a a8 h c c16 h |
			g8 g r d g g g fis |
			g4 h8 h r cis16 d a8 a |
			r2
		}

	\bar "||"
	}

}
