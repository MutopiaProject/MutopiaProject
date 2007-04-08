\version "1.6.9"
Instrument = "Basso Continuo"
\include "header.ly"
\include "1-basso.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  < 
    \context Staff=A \IBasso
    \context FiguredBass \IFigures
  >

  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

Clef = \clef "bass"
\include "2-tacet.ly"

\score {
  <
    \context Staff=A \IIIBasso
    \context FiguredBass \IIIFigures
  >
  \header { piece = "Allegro" }
  \paper {}
}