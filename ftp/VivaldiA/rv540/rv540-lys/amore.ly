\version "1.6.9"
Instrument = "Viola d'amore"
\include "header.ly"
\include "1-amore.ly"
\include "2-amore.ly"
\include "3-amore.ly"

\include "paper16.ly"

\score {
  \context Staff=A \IAmore
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

\score {
  \context Staff=A \IIAmore

  \header { piece = "Largo" }
  \paper {}
}

\score {
  \context Staff=A \IIIAmore

  \header { piece = "Allegro" }
  \paper {}
}