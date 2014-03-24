\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Violin I"
}

\include "violino1.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
  } {
    \new Voice = "Violino I" \theFirstViolins
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
