\version "1.6.9"
Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln.ly"
\include "3-vln1.ly"

\include "paper16.ly"

\score {
  \context Staff=A \IVlnI
  \header { piece = "Allegro" opus = "RV 540" }
  \paper {}
}

\score {
  \context Staff=A \IIVln
  \header { piece = "Largo" }
  \paper {}
}

\score {
  \context Staff=A \IIIVlnI
  \header { piece = "Allegro" }
  \paper {}
}