\version "2.18.0"

\new Staff = "oboi" {
	\set Staff.instrumentName = "Oboi"
	\set Staff.midiInstrument = "oboe"
	<<
		\partcombine \oboeI \oboeII
		\Markings
	>>
}
