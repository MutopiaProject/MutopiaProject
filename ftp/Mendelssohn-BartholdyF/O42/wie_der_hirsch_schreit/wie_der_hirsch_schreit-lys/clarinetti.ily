\version "2.18.0"

\new Staff = "clarinetti" {
	\set Staff.instrumentName = "Clarinetti in B"
	\set Staff.midiInstrument = "clarinet"
	<<
		\transposition bes \partcombine \clarinettoI \clarinettoII
		\Markings
	>>
}
