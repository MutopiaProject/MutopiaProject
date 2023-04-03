\version "2.24.1"
\language nederlands

\include "../../master.ily"
\include "./viola.ily"

\header {
  instrument = "Viola"
}

\score {
  \new Staff = "viola" {
	\accidentalStyle modern
	\new Voice \viola
  }
}
