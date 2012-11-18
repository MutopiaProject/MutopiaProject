\version "2.16.0"

% Contains the full score.
Instrument = "Basso"
\include "header.ly"

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = C \IBasso

  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \layout {}
}

\score {
  \context Staff = C \IIBasso

  \header {piece = "Larghetto Andantino" }
  \layout {}
}

\score {
  \context Staff = C \IIIBasso

  \header {piece = "Allegro assai spiritoso" }
  \layout {}
}



