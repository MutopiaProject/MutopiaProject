\version "2.16.0"

Instrument = "Basso"
\include "header.ly"
#(set-global-staff-size 16)
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \context Staff \IBasso
  \header {piece = "Allegro e Custoso assai" opus = "Gimo 150"}
}
\score {
  \context Staff \IIBasso
  \header {piece = "Largo" }
}
\score {
  \context Staff \IIIBasso
  \header {piece = "Allegro alla Prussiana" }
}



