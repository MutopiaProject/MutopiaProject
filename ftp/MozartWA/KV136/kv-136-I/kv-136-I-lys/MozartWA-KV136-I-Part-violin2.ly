\version "2.24.1"
\language nederlands

\include "../../master.ily"
\include "./violin2.ily"

\header {
  instrument = "Violino II"
}

\score {
  \new Staff = "violin2" {
	\accidentalStyle modern
	\new Voice \violinII
  }
}
