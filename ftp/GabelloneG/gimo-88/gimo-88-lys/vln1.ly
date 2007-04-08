\version "1.6.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\include "paper16.ly"

\score {
  \context Staff = ViolinI \IVlnI

  \header {piece = "Allegro" opus = "Gimo 88"}
  \paper {}
}

\score {
  \context Staff = ViolinI \IIVlnI

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = ViolinI \IIIVlnI

  \header {piece = "Allegro"}
  \paper {}
}
