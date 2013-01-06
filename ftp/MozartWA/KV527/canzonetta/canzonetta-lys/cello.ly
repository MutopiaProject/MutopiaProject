% Violoncello part.
\version "2.16.1"

Instrument = "Violincello and Double Bass"
\include "header.ly"
#(set-global-staff-size 20)
\include "notes.ly"

\score {
  \context Staff = Cello \CelloStaff

  \layout {}
  % no midi here, use score.ly for midi output.
}



