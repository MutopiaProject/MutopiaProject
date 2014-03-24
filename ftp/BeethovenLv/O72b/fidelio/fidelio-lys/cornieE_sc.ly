\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Corni in E [I/II]"
}

\include "corniE.ly"

\score {
  \new Staff \with {
    midiInstrument = #"french horn"
  } {
	\new Voice = "Corni first" \theHornsfirst
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
