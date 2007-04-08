\version "1.6.0"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\include "paper16.ly"

\score {
  \context Staff \IMand

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 80}
}

\score {
  \context Staff \IIMand

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff \IIIMand

  \header {piece = "Grazioso"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=144}
}
