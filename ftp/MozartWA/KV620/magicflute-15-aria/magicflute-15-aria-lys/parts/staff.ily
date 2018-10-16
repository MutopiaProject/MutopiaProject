\version "2.14.2"

\new Staff = \inst {
	\set Staff.midiInstrument = \minst
	\set Staff.instrumentName = \linst
	\set Staff.shortInstrumentName = \sinst
	<<
		\markings
		\notes
	>>
}
