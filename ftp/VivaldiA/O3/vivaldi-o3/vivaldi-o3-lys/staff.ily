\version "2.18.0"

\new Staff = \instrument {
	\set Staff.instrumentName = \lInst
	\set Staff.midiInstrument = \mInst
	<<
		\notes
		\pMarkings
	>>
}
