\new Staff  {
	\time 4/4
	\override Score.MetronomeMark #'stencil = ##f
	\tempo 4 = 80 
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			r8 g16 g g8 d16 d h4 h |
			r8 d16 d d8 d16 e f8 g f e |
			e4 e e8 e16 e fis8 gis |
			a4 a r8 e16 f g8 g16 f |
			f4 f r8 f16 a f8 e16 d |
			g4 as8 g16 f e8 d r4 |
			r2
		}

	\bar "|."
	}

}
