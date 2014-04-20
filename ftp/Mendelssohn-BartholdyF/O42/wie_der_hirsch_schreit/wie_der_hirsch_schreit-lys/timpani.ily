\version "2.18.0"

\new Staff = "timpani" {
	\set Staff.instrumentName = "Timpani in F.C."
	\set Staff.midiInstrument = "timpani"
	<<
		\transposition f \timpani
		\Markings
	>>
}
