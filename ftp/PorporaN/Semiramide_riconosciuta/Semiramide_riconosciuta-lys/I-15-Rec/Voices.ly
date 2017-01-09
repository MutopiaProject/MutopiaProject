\new Staff  {
	\set Staff.instrumentName=\markup {\smallCaps Mirteo}
	\set Staff.midiInstrument="oboe"
	\key c \major
	\clef treble
	\relative c'' { 	
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			r8 a16 a d8 d16 cis d8 d d a16 h |
			g8 g r4 r h8 h16 c |
			d8 c d d r d16 d d8 e16 f |
			f8 h, r16 h d c a8 a r4 |
			r2 r4 h8 h16 cis |
			dis8 fis fis a, cis cis16 cis cis8 h |
			g4 r r2 |
			r8 fis ais gis ais ais16 ais ais8 ais |
			ais h cis cis cis cis16 cis d8 e |
			d4 r r r8 d |
			h h r4 r r8 fis |
			h4 r r8 a d4 |
			d8 d16 d d8 es c c r4 |
			r8 c es d b4 r8 d |
			d b g d' cis cis r4 |
			e8 g,16 a b8 a f f r4 |
			d'8 f d c16 d b8 b r4 |
			r8 g' cis, cis r d d a |
			R1 |
		}

	\bar "|."
	}

}
