\version "1.6.0"

Instrument = "Mandolin II"
\include "header.ly"

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

\include "paper16.ly"

\score {
  \context Staff = II \IMandII

  \header {piece = "" opus = "Gimo 359"}
  \paper {}
}

\score {
  \context Staff = II \IIMandII

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = II \IIIMandII

  \header {piece = "Allegro"}
  \paper {}
}

