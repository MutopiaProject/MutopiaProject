% Viola part.
\version "1.6.0"

Instrument = "Viola"
\include "header.ly"
\include "paper20.ly"
\include "notes.ly"

\score {

  \context Staff = Viola \ViolaStaff

  \paper {}
  % no midi here, use score.ly for midi output.
}


