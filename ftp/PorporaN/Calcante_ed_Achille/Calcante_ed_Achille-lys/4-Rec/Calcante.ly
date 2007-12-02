\new Staff  {
	\set Staff.instrumentName="Calcante"
	\set Staff.midiInstrument="oboe"
	\key g \major
	\clef bass
	\relative c' { 	
		\context Voice = "melodyBas" {
			\dynamicUp
			\autoBeamOff
			R1*3 |
			r2 r4 r8 g |
			cis cis cis d d a r4 |
			r a8 a16 g a8 a r4 |
			r8 a c h g4 r |
			r2 h8 h16 h d8 c |
			a a r4 r8 e a gis |
			a a c c16 h h8 h r 4 |
			r8 c a a16 h g8 g r h16 g |
			c8 c r4 r8 a dis8. e16 |
			e8 h r4 r2\fermata |
		}
	\bar "|."
	}
}
