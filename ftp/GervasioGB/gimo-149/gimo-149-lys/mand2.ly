\version "2.16.0"

% Contains the full score.
Instrument = "Mandolin II"
\include "header.ly"

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = B \IMandII

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \layout {}
}

\score {
  \context Staff = B \IIMandII

  \header {piece = "Larghetto Andantino" }
  \layout {}
}

\score {
  \context Staff = B \IIIMandII

  \header {piece = "Allegro assai spiritoso" }
  \layout {}
}

