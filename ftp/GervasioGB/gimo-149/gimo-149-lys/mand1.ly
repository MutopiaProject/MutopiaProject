\version "2.16.0"

% Contains the full score.
Instrument = "Mandolin I"
\include "header.ly"

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = A \IMandI

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \layout {}
}

\score {
  \context Staff = A \IIMandI

  \header {piece = "Larghetto Andantino" }
  \layout {}
}

\score {
  \context Staff = A \IIIMandI

  \header {piece = "Allegro assai spiritoso" }
  \layout {}
}
