\version "1.6.0"

Instrument = "Mandolin I"
\include "header.ly"

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

\include "paper16.ly"

\score {
  \context Staff = I \IMandI

  \header {piece = "" opus = "Gimo 359"}
  \paper {}
}

\score {
  \context Staff = I \IIMandI

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = I \IIIMandI

  \header {piece = "Allegro"}
  \paper {}
}

