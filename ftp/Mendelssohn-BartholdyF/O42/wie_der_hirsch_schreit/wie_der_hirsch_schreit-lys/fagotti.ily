\version "2.18.0"

\new Staff = "fagottii" {
	\set Staff.instrumentName = "Fagotti"
	\set Staff.midiInstrument = "bassoon"
	<<
		\partcombine \fagottoI \fagottoII
		\Markings
	>>
}
