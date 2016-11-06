\new Staff  {
	\set Staff.instrumentName="Tenore"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef "G_8"
	\relative c' {
		\context Voice = "melodyTen" {
			\dynamicUp
			\autoBeamOff
			d4 a2 |
			d4 cis2 |
			g8[ fis] g[ a] h[ cis] |
			d4 d2 |
			g,4 a2 |
			d4\melisma fis,\melismaEnd h |
			g a2 |
			d4\melisma fis,\melismaEnd h |
			g a2 |
			d,4 r r |
			d' d, r |
			d' d, r |
			h'2 g4~ |
			g a2 |
			d, r4 |
			R2.*2 |
		}

	\bar "|."
	}

}
