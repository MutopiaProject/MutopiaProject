\version "1.6.0"

Instrument = "Mandolin"
\include "header.ly"
\include "paper16.ly"
\include "global.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  <
    \context Staff \IGlobal
    \context Staff \IMand
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" opus = "Gimo 297" }
}

\score {
  <
    \context Staff \IIGlobal
    \context Staff \IIMand
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Largo" }
}

\score {
  <
    \context Staff \IIIGlobal
    \context Staff \IIIMand
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" }
}

