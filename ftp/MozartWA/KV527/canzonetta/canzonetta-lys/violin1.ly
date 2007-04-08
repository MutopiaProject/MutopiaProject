% Violin I part.
\version "1.6.0"

Instrument = "Violin I"
\include "header.ly"
\include "paper20.ly"
\include "notes.ly"

\score {
  \context Staff = ViolinI \ViolinIStaff

  \paper {}
  % no midi here, use score.ly for midi output.
}


