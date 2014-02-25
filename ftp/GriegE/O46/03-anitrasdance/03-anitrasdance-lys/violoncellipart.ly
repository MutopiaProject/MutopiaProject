\version "2.18.0"
\include "header.ly"
\include "violoncelli.ly"

\header { instrument = "Violoncelli I, II" }

\score {
  <<
    \new Staff \with \violoncelliOneStaffSettings
    { \violoncelliI \bar "|." }
    \new Staff \with \violoncelliTwoStaffSettings
    { \violoncelliII }
  >>
  \layout {
    indent = 2.5 \cm
    short-indent = 1 \cm
  }

  \midi {
    \tempo 4 = 160
  }
}
