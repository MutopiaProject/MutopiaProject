\version "1.6.0"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\include "paper16.ly"

\score {
  \context Staff = ViolinII \IVlnII

  \header {piece = "Allegro" opus = "Gimo 88"}
  \paper {}
}

\score {
  \context Staff = ViolinII \IIVlnII

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = ViolinII \IIIVlnII

  \header {piece = "Allegro"}
  \paper {}
}
