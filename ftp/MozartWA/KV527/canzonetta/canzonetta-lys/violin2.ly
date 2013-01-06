% Violin II part.
\version "2.16.0"

Instrument = "Violin II"
\include "header.ly"
#(set-global-staff-size 20)
\include "notes.ly"

\score {
  \context Staff = ViolinII \ViolinIIStaff

  \layout {}
  % no midi here, use score.ly for midi output.
}


