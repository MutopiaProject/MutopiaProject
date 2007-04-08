\version "1.6.0"

Instrument = "Basso"
\include "header.ly"

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context Staff = Basso \IBasso

  \header {piece = "" opus = "Gimo 359"}
  \paper {}
}

\score {
  \context Staff = Basso \IIBasso

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = Basso \IIIBasso

  \header {piece = "Allegro"}
  \paper {}
}

