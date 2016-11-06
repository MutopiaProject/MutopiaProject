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
			\Mir \partial 4 r8 h |
			d4 r d8 e16 fis h,8 h16 d |
			cis8 cis r gis16 gis cis8 cis16 his cis4 |
			r cis8 cis16 gis a8 a r4 |
			a8 h cis cis16 d h4 e8 h16 cis |
			d8 d16 d e8 h cis cis r16 cis e a, |
			h4 r r8 e e h16 cis |
			d8. d16 d8 cis a a \Scit r e' |
			cis cis r a cis h h h |
			r h16 h h8 fis16 fis a8 a r h |
			h8. fis16 fis8 gis e4 \Mir e'8 dis16 e |
			e8 h \Tam r8 h gis4 r16 h d cis |
			a8 a r4 a8 h cis cis16 h |
			cis4 e8 e16 fis d8 d \Scit d4 |
			d8. a16 a8 c h4 r |
			e8 cis r d a a r4 |
		}

	\bar "|."
	}

}
