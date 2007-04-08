\version "1.6.0"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\include "paper13.ly"

\score {
  \context Staff = Mand \IMand

  \header {piece = "Allegro" opus = "Gimo 88"}
  \paper {}
}

\score {
  \context Staff = Mand \IIMand

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = Mand \IIIMand

  \header {piece = "Allegro"}
  \paper {}
}
