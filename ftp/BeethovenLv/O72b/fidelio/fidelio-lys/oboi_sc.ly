\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Oboi"
}

\include "oboi.ly"

\score {
  \new Staff \with {
    midiInstrument = #"oboe"
  } {
	\new Voice = "Oboes" \theOboes
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
