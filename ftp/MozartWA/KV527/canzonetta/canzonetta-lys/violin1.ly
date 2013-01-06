% Violin I part.
\version "2.16.1"

Instrument = "Violin I"
\include "header.ly"
#(set-global-staff-size 20)
\include "notes.ly"

\score {
  \context Staff = ViolinI \ViolinIStaff

  \layout {}
  % no midi here, use score.ly for midi output.
}


