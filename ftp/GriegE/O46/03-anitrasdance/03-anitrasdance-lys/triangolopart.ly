\version "2.18.0"
\include "header.ly"
\include "triangolo.ly"
\header { instrument = "Triangolo" }

\score {

\new Staff \with \triangoloStaffSettings
  { \triangolo
    \bar "|." }

 \layout {
    indent = 2.5 \cm
    short-indent = 1.5 \cm
  }

  \midi {
    \tempo 4 = 160
  }
}
