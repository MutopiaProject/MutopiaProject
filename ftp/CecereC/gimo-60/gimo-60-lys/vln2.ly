\version "1.6.0"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\include "paper16.ly"

\score {
  \context Staff \IVlnII

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 80}
}

\score {
  \context Staff \IIVlnII

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff \IIIVlnII

  \header {piece = "Grazioso"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=144}
}
