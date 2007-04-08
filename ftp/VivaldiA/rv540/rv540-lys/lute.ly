\version "1.6.9"
Instrument = "Lute"
\include "header.ly"
\include "1-lute.ly"
\include "2-lute.ly"
\include "3-lute.ly"

\include "paper16.ly"

\score {
  \context Staff=A \ILute
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

\score {
  \context Staff=A \IILute
  \header { piece = "Largo" }
  \paper {}
}

\score {
  \context Staff=A \IIILute
  \header { piece = "Allegro" }
  \paper {}
}