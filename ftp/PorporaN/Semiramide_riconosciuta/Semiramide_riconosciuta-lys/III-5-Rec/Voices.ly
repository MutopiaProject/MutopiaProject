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
			\Sib r8 fis a a a gis a8. a16 |
			a8. e16 e8 fis d4 r16 d fis e |
			fis8 fis16 g a8 a a g a a |
			a c fis, fis16 g g8 g r d16 d |
			g8 a16 h e,8 e r c'16 h a8 a16 g |
			fis8 fis r a fis fis16 g d8 d |
			r4 d8. d16 g8 g16 fis g8 g |
			r g16 a h8 c16 d d8 f, r16 g f g |
			e8 e r4 g8 c g g16 b |
			a8 a r4 f8 f16 g a8 g |
			a8 a r4 a8 c a g16 f |
			h8 h r d h c g g |
			R1 |
		}

	\bar "|."
	}

}
