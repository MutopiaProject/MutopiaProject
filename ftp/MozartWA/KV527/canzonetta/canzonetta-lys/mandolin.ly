% Mandolin part.
\version "2.16.1"

Instrument = "Mandolin"
\include "header.ly"
#(set-global-staff-size 16)
\include "notes.ly"

\score {
  \context Staff = Mandolin \MandolinStaff

  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  % no midi here, use score.ly for midi output.
}


