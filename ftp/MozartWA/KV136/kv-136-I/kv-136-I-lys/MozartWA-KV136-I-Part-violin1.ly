\version "2.24.1"
\language nederlands

\include "../../master.ily"
\include "./violin1.ily"

\header {
  instrument = "Violino I"
}

\score {
  \new Staff = "violin1" {
	\accidentalStyle modern
	\new Voice \violinI
  }
  \layout {}
}
