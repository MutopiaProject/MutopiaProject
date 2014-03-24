\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Trombone Basso"
}

\include "trombone_basso.ly"

\score {
  \new Staff \with {
    midiInstrument = #"trombone"
  } {
    \new Voice = "Trombone Basso" \theBassTrombones
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
