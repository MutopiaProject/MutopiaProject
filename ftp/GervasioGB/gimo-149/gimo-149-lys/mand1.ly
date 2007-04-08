\version "1.6.0"

% Contains the full score.
Instrument = "Mandolin I"
\include "header.ly"

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

\include "paper16.ly"

\score {
  \context Staff = A \IMandI

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \paper {}
}

\score {
  \context Staff = A \IIMandI

  \header {piece = "Larghetto Andantino" }
  \paper {}
}

\score {
  \context Staff = A \IIIMandI

  \header {piece = "Allegro assai spiritoso" }
  \paper {}
}
