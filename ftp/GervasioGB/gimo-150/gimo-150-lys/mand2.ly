\version "2.16.0"

Instrument = "Mandolin II"
\include "header.ly"
#(set-global-staff-size 16)
\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

\score {
  \context Staff \IMandII
  \header {
    piece = "Allegro e Custoso assai" opus = "Gimo 150"}
}
\score {
  \context Staff \IIMandII
  \header {piece = "Largo" }
}
\score {
  \context Staff \IIIMandII
  \header {piece = "Allegro alla Prussiana" }
}




