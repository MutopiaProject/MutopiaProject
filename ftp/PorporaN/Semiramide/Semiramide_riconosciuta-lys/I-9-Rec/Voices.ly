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
			\Scit r8 a fis4 a8 a16 g a8 a |
			a h c c16 h g8 g r16 d' c d |
			h8 h r h d d d e |
			c4 \Tam e8 c16 h c8 c \Scit r8 g16 g |
			c8 c16 h c8 c r16 c d e e8 h16 h |
			d8 d d c a4 \Tam r8 e |
			a gis a a a a16 h c8 h |
			c4 e8 dis16 e h8 h \Scit h e, |
			\Tam h' h h e e4 ais, |
			ais8 h cis cis16 d h4 \Scit h |
			h8 a h h16 d cis8. e16 cis8 d |
			a a \Tam r a d cis d d |
			d8. a16 a4 \Scit r8 a fis fis |
			r gis h e, a a r cis |
			a a 
		}

	\bar "|."
	}

}
