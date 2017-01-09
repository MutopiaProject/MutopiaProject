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
			\Mir r8 c c g a a \Irc d, d16 a |
			h8 h \Mir r8 g' h h16 h h8 a |
			h4 d8 cis16 d a8 a \Irc r fis |
			d d d d d e16 fis e8 e16 e |
			e8 h d cis a4 r16 e' d e |
			cis8 cis fis cis16 e d8 d r h |
			d4 d8 d16 cis d4 r16 d cis h |
			eis8 fis cis cis \Mir cis' cis cis gis16 a |
			h8 h r h cis8. cis16 cis8 gis |
			a4 r16 h h e e8 h16 h h8 cis |
			d4 d d8 d16 d e8 h |
			cis cis r4 r8 a a h |
			cis h cis4 cis8 cis16 d e8 e |
			e g cis, cis16 d d8 d r4 |
			a8 a d d16 f d8 d16 d d8 a |
			h h \Irc r e,16 dis e8 e r e |
			c c r16 a c h c8 c e dis16 e |
			h8 h r4 g8 g16 g c8 h |
			c4 c e8 g e d16 e |
			c4 r d8 d16 cis d8 d |
			d a16 h c8 c e c16 c c8 h |
			g8 g r cis cis d e e16 fis |
			d8 d r a d d d cis |
			d d16 d e8 fis h, h g' e16 d |
			cis8 cis16 d a8 a r2 |
		}

	\bar "|."
	}

}
