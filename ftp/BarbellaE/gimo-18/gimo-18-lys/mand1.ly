\version "1.6.0"

Instrument = "Mandolin I"
\include "header.ly"
\include "paper16.ly"

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

\score {
  \context Staff = I \IMandI

  \header {piece = "Allegro" opus = "Gimo 18"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = I \IIMandI

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = I \IIIMandI

  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}
