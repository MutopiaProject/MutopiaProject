\version "1.6.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\include "paper16.ly"

\score {
  \context Staff \IVlnI

  \header {piece = "Allegro" opus = "Gimo 58"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 100}
}

\score {
  \context Staff \IIVlnI

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=80}
}

\score {
  \context Staff \IIIVlnI

  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=120}
}
