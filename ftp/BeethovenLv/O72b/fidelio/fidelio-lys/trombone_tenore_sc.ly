\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"

\include "trombone_tenore.ly"
\header {
  instrument = "Trombone Tenore"
}

\score {
  \new Staff \with {
    midiInstrument = #"trombone"
  } {
    \new Voice = "Trombone Tenore" \theTenorTrombones
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
