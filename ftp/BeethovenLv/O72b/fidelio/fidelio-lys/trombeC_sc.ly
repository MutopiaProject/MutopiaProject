\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Trombe in C"
}

\include "trombeC.ly"


\score {
  \new Staff \with {
    midiInstrument = #"trumpet"
  } {
	\new Voice = "Trombe in C" \theTrumpets
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
