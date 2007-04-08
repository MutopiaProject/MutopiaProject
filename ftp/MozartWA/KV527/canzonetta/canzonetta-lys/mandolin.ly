% Mandolin part.
\version "1.6.0"

Instrument = "Mandolin"
\include "header.ly"
\include "paper16.ly"
\include "notes.ly"

\score {
  \context Staff = Mandolin \MandolinStaff

  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  % no midi here, use score.ly for midi output.
}


