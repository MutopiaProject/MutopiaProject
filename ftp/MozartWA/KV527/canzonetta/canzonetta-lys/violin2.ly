% Violin II part.
\version "1.6.0"

Instrument = "Violin II"
\include "header.ly"
\include "paper20.ly"
\include "notes.ly"

\score {
  \context Staff = ViolinII \ViolinIIStaff

  \paper {}
  % no midi here, use score.ly for midi output.
}


