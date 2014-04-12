\version "2.18.0"

\new Staff = "tromboni" {
	\set Staff.instrumentName = "Tromboni Alto. Tenore"
	\set Staff.midiInstrument = "trombone"
	<<
		\partcombine \tromboneI \tromboneII
		\Markings
	>>
}
