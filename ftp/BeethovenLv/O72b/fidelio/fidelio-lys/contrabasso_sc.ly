\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Contrabasso"
}

\include "contrabasso.ly"

\score {
  \new Staff \with {
    midiInstrument = #"contrabass"
  } {
    \new Voice = "Contrabasso" \theBass
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
