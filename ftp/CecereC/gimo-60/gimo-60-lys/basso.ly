\version "1.6.0"

Instrument = "Basso"
\include "header.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context Staff \IBasso

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 80}
}

\score {
  \context Staff \IIBasso

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff \IIIBasso

  \header {piece = "Grazioso"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=144}
}
