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
			\partial 2 \Sem e8 e a a16 gis |
			a8 a r4 a8 a16 a h8 cis |
			h8 h r h h8. fis16 gis8 a |
			gis4 cis8 a r a16 gis e8 e |
			r4 r8 h' gis gis r e |
			gis fis gis gis gis gis16 a h4 |
			h8 h16 h h8 cis cis gis r4 |
			h8 h16 h h8 a fis fis \Scit cis' his16 cis |
			gis8 gis r4 cis8. e16 e8 a,16 cis |
			h4 r16 h h cis d8. d16 e8 h |
			cis cis \Sem r8 cis a a r4 |
			\Irc cis,8 d e e16 d e8 e16 e e8 a, |
			d4 r d8 d16 cis d8 d |
			r fis fis cis cis d e e16 d |
			h8 h \Mir r8 fis' h h r d |
			d a r a d8. d16 d8 a |
			h h r16 e e h d8 d r d |
			e8. e16 e8 h c c \Irc r16 a, c h |
			c8 c16 c h8 a dis dis16 e h4 |
			\Tam r8 e' c h g g \Mir r d' |
			h h \Scit h c16 d d8 g, r h16 a |
			h8 h r h16 d cis8 cis e cis16 d |
			d4 \Irc d,8 d16 fis d8 cis a a |
			\Sem a' a16 gis a8 a r4 r8 h |
			h fis16 fis a8 g e e r e |
			ais ais cis ais16 h h8 h r16 h ais h |
			g8 g16 h fis8 fis r2 |
		}

	\bar "|."
	}

}
