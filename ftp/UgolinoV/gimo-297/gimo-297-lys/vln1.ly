\version "1.6.0"

Instrument = "Violin I"
\include "header.ly"
\include "paper16.ly"
\include "global.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\score {
  <
    \context Staff \IGlobal
    \context Staff \IViolinI
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <
    \context Staff \IIGlobal
    \context Staff \IIViolinI
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  % NOTE: It was written "Adagio" in the manuscript, but ONLY in
  % the violin I part.
  \header { piece = "Largo" }
}


\score {
  <
    \context Staff \IIIGlobal
    \context Staff \IIIViolinI
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" }
}






