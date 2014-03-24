\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Violoncello"
}

\include "violoncello.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
  } {
    \new Voice = "Violoncello" \theCellos
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
