\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Violin II"
}

\include "violino2.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
  } {
    \new Voice = "Violino II" \theSecondViolins
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
