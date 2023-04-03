\version "2.24.1"
\language nederlands

\include "../../master.ily"
\include "./cello.ily"

\header {
  instrument = "Basso"
}

\score {
  \new Staff = "cello" {
	\accidentalStyle modern
	\new Voice \cello
  }
}
