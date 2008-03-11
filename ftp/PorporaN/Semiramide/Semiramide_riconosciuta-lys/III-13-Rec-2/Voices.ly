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
			\Mir d8. d16 d8 a \Sem a8. a16 fis4 |
			\Scit r8 d' d a16 h gis8 gis r h |
			h e, \Sem h' gis r e16 fis gis8 gis |
			h gis16 gis gis8 a e e \Scit cis'4 |
			a8 a r cis cis gis r16 gis gis gis |
			cis8 his cis cis cis gis16 a h8 a |
			fis4 \Tam cis'8 cis16 fis his,8 his r dis |
			his his his cis gis gis r4 |
			r8 a cis h cis4 cis |
			e8 d cis h16 a dis8. fis16 dis8 e |
			h h r4 \Scit h8 gis16 gis a8 h |
			h e, \Mir e' h16 cis a8 a \Irc r e |
			e8. a,16 a8 h cis4 e8 e16 e |
			r8 fis cis8. cis16 e8. e16 d8 cis |
			d4 fis8 eis16 fis cis8 cis \Sem fis fis |
			a a16 gis a8 a a e e4 |
			r8 e e fis g g a e16 g |
			fis8 fis r4 a8 g fis fis16 g |
			g8 g h g16 fis d8 d r4 |
		}

	\bar "|."
	}

}
