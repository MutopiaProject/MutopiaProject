\version "2.18.0"

\new Staff = "flauti" {
	\set Staff.instrumentName = "Flauti"
	\set Staff.midiInstrument = "flute"
	<<
		\partcombine \flautoI \flautoII
		\Markings
	>>
}
