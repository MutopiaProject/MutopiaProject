\version "2.18.0"

\new Staff = "corni" {
	\set Staff.instrumentName = "4 Corni in F"
	\set Staff.midiInstrument = "english horn"
	<<
		\transposition f \partcombine \cornoI \cornoII
		\Markings
	>>
}
