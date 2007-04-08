\version "1.6.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\include "paper16.ly"

\score {
  \context Staff \IVlnI

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 80}
}

\score {
  \context Staff \IIVlnI

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff \IIIVlnI

  \header {piece = "Grazioso"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=144}
}
