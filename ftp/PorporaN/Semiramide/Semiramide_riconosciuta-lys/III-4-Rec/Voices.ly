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
			\Mir r4 r8 d h8. h16 h8 c |
			g4 \Sib r16 g c h c8 c r c |
			c8. g16 g8 f g g r g |
			b a a a r a16 a a8 e16 f |
			d8 d r4 a'8 g16 a f8 f |
			d' gis,16 a e8 e \Mir e' c16 c h8 c |
			a a r4 d d8 a |
			a g a a r fis16 g a8 a16 h |
			c4 d8 a16 c h8 h r4 |
			\Sib h8 h16 h a8 h g g r4 |
			\Mir h8 h16 h cis8 d cis cis r16 e cis d |
			a8 a \Sib r16 e e e a8 gis a a |
			r8 a16 a a8 e16 fis d4 \Mir r8 a' |
			fis4 r8 a d d r fis |
			d d d d16 cis a8 a r4 |
			\Sib r4 a8 a16 gis h8 h r4 |
			gis4. cis8 cis gis r h16 a |
			fis8 fis \Mir cis' cis16 his dis8 dis \Sib gis,4 |
			r8 gis gis dis16 e cis4 r8 fis |
			h ais h h r h16 h h8 fis16 e |
			fis4 fis fis8 gis a a16 gis |
			e8 e \Mir r h' gis gis r e' |
			cis cis r4 cis8 e a, a16 cis |
			h8 h \Sib h h16 a h8 h d h16 cis |
			a4 r8 e e e a gis |
			a a a a16 h g4 g |
			g8 g16 g a8 e fis fis r4 |
			fis8 g a a16 g a8 a r16 a h c |
			fis,4 fis fis8 fis16 g a8 h |
			g g \Mir r16 d' c d a4 \Sib r16 g h a |
			h8 h r d a a \Mir a8. a16 |
			d8 d16 cis d8 d r d e fis |
			fis cis r4 cis8 cis16 d e8 d |
			h h \Sib fis fis h h16 ais h8 h |
			h d h h16 fis gis4 \Mir cis8 h16 cis |
			a8 a r a cis cis d e |
			d d fis eis16 fis cis8 cis r4 |
		}

	\bar "|."
	}

}
