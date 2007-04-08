\version "1.6.0"

% Contains the full score.
Instrument = "Basso"
\include "header.ly"

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context Staff = C \IBasso

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \paper {}
}

\score {
  \context Staff = C \IIBasso

  \header {piece = "Larghetto Andantino" }
  \paper {}
}

\score {
  \context Staff = C \IIIBasso

  \header {piece = "Allegro assai spiritoso" }
  \paper {}
}



