\version "2.18.0"
\include "header.ly"
\include "viole.ly"
\header { instrument = "Viole I, II" } 

\score {
  <<
    \new Staff \with \violaOneStaffSettings
    { \violeI
      \bar "|." }

    \new Staff \with \violaTwoStaffSettings
    { \violeII }
  >>
  \layout {
    indent = 3 \cm
    short-indent = 1.5 \cm
  }

  \midi {
    \tempo 4 = 160
  }
}
