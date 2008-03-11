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
			\Mir r4 r8 a d4 d8 c16 d |
			h8 h r16 g h a h8 h h cis16 d |
			cis8 cis r e e a,16 a a8 h |
			g4 g cis8 cis16 d e8 a, |
			d d d cis16 d a8 a r4 |
			e'8 h h h16 a h4 h |
			gis8 a h h16 c d8. d16 d8 c |
			a a r4 r8 g c g |
			a a r16 c f c d8 d r4 |
			d8 d16 d e8 f c c r4 |
		}

	\bar "|."
	}

}
