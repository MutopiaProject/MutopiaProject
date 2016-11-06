\new Staff  {
	\set Staff.instrumentName="Alto"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c' { 	
		\context Voice = "melodyAlt" {
			\dynamicUp
			\autoBeamOff
			fis4 e2 |
			fis8[ e fis g] fis4 |
			g4 h8[ a] g4 |
			g fis2 |
			h4\melisma a\melismaEnd g |
			fis\melisma a8[ g]\melismaEnd fis4 |
			g e2\prall |
			fis4\melisma a8[ g]\melismaEnd fis4 |
			g e2\prall |
			fis4 r r |
			a fis r |
			a fis r |
			fis2 g4~ |
			g e2 |
			fis2 r4 |
			R2.*2 |
		}

	\bar "|."
	}

}
