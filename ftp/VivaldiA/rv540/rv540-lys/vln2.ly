\version "1.6.9"
Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln.ly"
\include "3-vln2.ly"

\include "paper16.ly"

\score {
  \context Staff=A \IVlnII
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

\score {
  \context Staff=A \IIVln
  \header { piece = "Largo" }
  \paper {}
}

\score {
  \context Staff=A \IIIVlnII
  \header { piece = "Allegro" }
  \paper {}
}