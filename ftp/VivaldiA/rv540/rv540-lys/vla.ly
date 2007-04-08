\version "1.6.9"
Instrument = "Viola"
\include "header.ly"
\include "1-vla.ly"
\include "3-vla.ly"

\include "paper16.ly"

\score {
  \context Staff=A \IVla
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

Clef = \notes \clef "alto"
\include "2-tacet.ly"

\score {
  \context Staff=A \IIIVla
  \header { piece = "Allegro" }
  \paper {}
}