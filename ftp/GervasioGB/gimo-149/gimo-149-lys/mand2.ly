\version "1.6.0"

% Contains the full score.
Instrument = "Mandolin II"
\include "header.ly"

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

\include "paper16.ly"

\score {
  \context Staff = B \IMandII

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \paper {}
}

\score {
  \context Staff = B \IIMandII

  \header {piece = "Larghetto Andantino" }
  \paper {}
}

\score {
  \context Staff = B \IIIMandII

  \header {piece = "Allegro assai spiritoso" }
  \paper {}
}

