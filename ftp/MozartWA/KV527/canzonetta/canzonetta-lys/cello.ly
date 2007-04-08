% Violoncello part.
\version "1.6.0"

Instrument = "Violincello and Double Bass"
\include "header.ly"
\include "paper20.ly"
\include "notes.ly"

\score {
  \context Staff = Cello \CelloStaff

  \paper {}
  % no midi here, use score.ly for midi output.
}



