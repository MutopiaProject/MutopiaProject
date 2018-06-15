\version "2.18.2"

\include "../common.ly"

\book {
  \header {
    instrument = "Oboe"
  }

  \score {
    \new Staff \with {
      instrumentName = "Oboe"
    } <<
      \oboe
    >>
    \layout { }
  }
}

