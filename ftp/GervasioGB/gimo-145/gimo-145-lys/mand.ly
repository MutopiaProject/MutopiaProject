\version "1.6.0"

Instrument = "Mandolin"
\include "header.ly"
\include "paper16.ly"

\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  \context Staff = Mand \IMand
  \header {piece = "Allegro" opus = "Gimo 145"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
}

\score {
  \context Staff = Mand \IIMand
  \header {piece = "Larghetto. Andantino grazioso."}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
}

\score {
  \context Staff = Mand \IIIMand
  \header {piece = "Allegro con molto Spirito"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
}
