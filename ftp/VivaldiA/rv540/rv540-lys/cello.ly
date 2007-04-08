\version "1.6.9"
Instrument = "Cello"
\include "header.ly"
\include "1-basso.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context Staff=A \IBasso
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

Clef = \clef "bass"
\include "2-tacet.ly"

\score {
  \context Staff=A \IIIBasso
  \header { piece = "Allegro" }
  \paper {}
}