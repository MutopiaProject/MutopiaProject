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
			\Sem r4 r8 e16 e a8 a16 gis a8 a |
			r8 a16 a a8 e16 f d4 r |
			f8 f16 a gis8 gis gis gis16 a h8 a |
			h h r d gis,8. gis16 gis8 a |
			e4 r fis8 fis16 fis h8 h16 h |
			h8 ais h h r h h fis |
			dis e fis fis16 g a8 a16 a c8 h |
			g g r h h g e4 |
			r8 e g g h a g fis16 e |
			ais8 ais r16 cis ais h fis8 fis r4 |
			h8 d g, g16 fis g4 g8 g16 a |
			h8 a h4 r16 h cis d a8 a |
			R1\fermata |
		}

	\bar "|."
	}

}
