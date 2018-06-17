\version "2.18.2"

\include "../common.ly"

\book {
  \header {
    instrument = "Bassoon"
  }

  \score {
    \new Staff \with {
      instrumentName = "Bassoon"
    } <<
      \clef bass
      \bassoon
    >>
    \layout { }
  }
}

