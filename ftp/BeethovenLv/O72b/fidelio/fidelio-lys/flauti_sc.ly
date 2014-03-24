\version "2.18.0"

\include "english.ly"
\include "defs.ly"
\include "header.ly"

\header {
  instrument = "Flauti"
}

\include "flauti.ly"

\score {
  \new Staff \with {
    midiInstrument = #"flute"
  } {
    \new Voice = "flauti" \theFlutes
  }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
