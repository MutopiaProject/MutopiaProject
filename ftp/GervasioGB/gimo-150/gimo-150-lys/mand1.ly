\version "1.6.0"

Instrument = "Mandolin I"
\include "header.ly"
\include "paper16.ly"
\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

\score {
  \context Staff \IMandI
  \header {
    piece = "Allegro e Custoso assai" opus = "Gimo 150"}
}
\score {
  \context Staff \IIMandI
  \header {piece = "Largo" }
}
\score {
  \context Staff \IIIMandI
  \header {piece = "Allegro alla Prussiana" }
}




