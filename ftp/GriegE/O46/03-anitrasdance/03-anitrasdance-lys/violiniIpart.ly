\version "2.18.0"
\include "header.ly"
\include "violiniI.ly"
\header { instrument="Violini I" }

\score {
  \new Staff \with \violiniOneStaffSettings
  {
    \partcombine \violinioneI \violinioneII
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
