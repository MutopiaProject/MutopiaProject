\version "2.18.0"

\context Staff = \instrument {
	\set Staff.instrumentName = \lInst
	\set Staff.midiInstrument = \mInst
	<<
		\notes
		\pMarkings
	>>
}
