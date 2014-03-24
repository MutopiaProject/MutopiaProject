\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Fagotti"
}

\include "fagotti.ly"

\score {
  \new Staff \with {
    midiInstrument = #"bassoon"
  } {
    \new Voice = "Bassoons" \theBassoons
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
