\version "2.18.0"

#(set-global-staff-size 16)
\include "header.ly"
\include "violiniI.ly"
\include "violiniII.ly"
\include "viole.ly"
\include "violoncelli.ly"
\include "contrabassi.ly"
\include "triangolo.ly"

\score {

  \new StaffGroup <<
    \new Staff \with \violiniOneStaffSettings
    { \partcombine \violinioneI \violinioneII
      \bar "|." }

    \new Staff \with \violiniTwoStaffSettings
    { \partcombine \violinitwoI \violinitwoII }

    \new Staff \with \violaOneStaffSettings
    { \violeI }

    \new Staff \with \violaTwoStaffSettings
    { \violeII }

    \new Staff \with \violoncelliOneStaffSettings
    { \violoncelliI }

    \new Staff \with \violoncelliTwoStaffSettings
    { \violoncelliII }

    \new Staff \with \contrabassiStaffSettings
    { \transposition c
      \contrabassi }

    \new Staff \with \triangoloStaffSettings
    { \triangolo }
  >>

  \layout {

    indent = 3 \cm
    short-indent = 1.5 \cm
    \context {
      \Score
      soloText = "I."
      soloIIText = "II."
    }
  }

  \midi {
    \tempo 4 = 160
  }
}
