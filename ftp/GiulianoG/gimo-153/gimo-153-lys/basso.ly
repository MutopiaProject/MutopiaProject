\version "1.6.0"

\include "paper16.ly"

Instrument = "Basso"
\include "header.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \context Staff = Basso <
    \IBasso
  >

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 66}
}

\score {
  \context Staff = Basso <
     \IIBasso
  >

  \header {piece = "Larghetto"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff = Basso <
    \IIIBasso
  >
  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=108}
}
