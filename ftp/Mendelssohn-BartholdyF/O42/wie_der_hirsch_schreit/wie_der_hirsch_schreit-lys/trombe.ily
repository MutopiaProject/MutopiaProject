\version "2.18.0"

\new Staff = "trombe" {
	\set Staff.instrumentName = "Trombe in C"
	\set Staff.midiInstrument = "trumpet"
	<<
		\transposition f \partcombine \trombeI \trombeII
		\Markings
	>>
}
