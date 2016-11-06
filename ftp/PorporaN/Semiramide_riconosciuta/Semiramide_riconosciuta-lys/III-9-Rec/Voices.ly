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
			\Tam r8 a16 a d8 d16 cis d8 d r16 a c h |
			g4 \Mir r16 h d g, c8 c r e |
			c8 c \Tam r c c g r16 c d e |
			e8 h16 h d8 c a4 \Mir e'8 a,16 c |
			h8 h \Tam r h gis gis r h16 d |
			c8 c r e h h \Mir r h |
			h c a4 a8 a h h16 fis |
			g8 g \Tam r h g g r16 h h e |
			ais,8 ais fis' cis16 d h8 h \Mir r16 h d cis |
			d8 d r fis fis h, r gis |
			cis his cis cis r cis16 cis cis8 gis16 fis |
			gis4 gis \Tam cis8 gis r cis |
			a4 r fis'8 his,16 his his8 cis |
			gis gis r4 cis8 e a, a16 gis |
			a8 a r a cis cis cis h |
			h h d d16 e cis8 cis r e |
			cis cis cis d d d r4 |
			h8 e h h16 cis d8 d16 d d8 cis |
			a a \Mir cis cis16 h cis4 \Tam r16 cis h a |
			dis8 dis16 e h8 h r2 |
		}

	\bar "|."
	}

}
