\version "2.18.0"

\new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	<<
		\markings
		\notes
	>>
}
