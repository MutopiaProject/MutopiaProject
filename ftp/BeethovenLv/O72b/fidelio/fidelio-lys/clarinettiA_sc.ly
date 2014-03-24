\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Clarinetti in A"
}

\include "clarinettiA.ly"

\score {
  \new Staff \with {
    midiInstrument = #"clarinet"
  } {
	\new Voice = "Clarinets" \theClarinets
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
