% Viola part.
\version "2.16.1"

Instrument = "Viola"
\include "header.ly"
#(set-global-staff-size 20)
\include "notes.ly"

\score {

  \context Staff = Viola \ViolaStaff

  \layout {}
  % no midi here, use score.ly for midi output.
}


