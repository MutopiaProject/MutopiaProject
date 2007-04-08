\version "1.6.0"

Instrument = ""
\include "header.ly"
\include "paper16.ly"

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \context Staff = Basso \IBasso

  \header {piece = "Allegro" opus = "Gimo 18"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = Basso <\IIBasso>

  \header {piece = "Largo"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

\score {
  \context Staff = Basso <\IIIBasso>

  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

