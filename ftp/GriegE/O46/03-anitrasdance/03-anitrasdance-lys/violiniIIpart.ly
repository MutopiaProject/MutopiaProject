\version "2.18.0"
\include "header.ly"
\include "violiniII.ly"
\header { instrument="Violini II" }

\score {
  \new Staff \with \violiniTwoStaffSettings
  {
    \partcombine \violinitwoI \violinitwoII
    \bar "|."
  }
  \layout {
    indent = 3 \cm
    short-indent = 1.5 \cm
  }

  \midi {
    \tempo 4 = 160
  }
}
