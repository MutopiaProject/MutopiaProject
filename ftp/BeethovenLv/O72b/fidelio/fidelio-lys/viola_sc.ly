\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Viola"
}

\include "viola.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
  } {
    \new Voice = "Viola" \theViolas
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
