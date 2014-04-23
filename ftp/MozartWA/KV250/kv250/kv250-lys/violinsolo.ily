\version "2.18.0"

\new Staff = "violinsolo" {
	\set Staff.instrumentName =
	  \markup {\center-column {Violino \line {Principale}}}
	\set Staff.midiInstrument = "violin"
	\violinsolo
}
