\version "2.18.2"

\include "common.ly"

\book {
  \score {
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Oboe"
      } <<
        \oboe
      >>
      \new Staff \with {
        instrumentName = "Bassoon"
      } <<
        \clef bass
        \bassoon
      >>
    >>
    \layout { }
    \midi {
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

