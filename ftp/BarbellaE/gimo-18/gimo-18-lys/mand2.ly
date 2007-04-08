\version "1.6.0"

Instrument = "Mandolin II"
\include "header.ly"
\include "paper16.ly"

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

\score {
  \context Staff = II \IMandII

  \header {piece = "Allegro" opus = "Gimo 18"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = II \IIMandII

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = II \IIIMandII

  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}
