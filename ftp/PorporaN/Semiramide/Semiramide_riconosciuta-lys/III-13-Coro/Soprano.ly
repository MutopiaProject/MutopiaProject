\new Staff  {
	\set Staff.instrumentName="Soprano"
	\set Staff.midiInstrument="oboe"
	\key d \major
	\clef treble
	\relative c'' {
		\context Voice = "melodySop" {
			\dynamicUp
			\autoBeamOff
			d4 cis2 |
			d4 a2 |
			h4 d8[ cis] h4 |
			h a2 |
			e'4 cis2\prall |
			d4\melisma a\melismaEnd d |
			e cis2\prall |
			d4\melisma a\melismaEnd d |
			e cis2\prall |
			d4 r r |
			d a r |
			d a r |
			d2 e4~ |
			e cis2 |
			d r4 |
			R2.*2 |
		}
	\bar "|."
	}

}
