\version "1.6.0"

\include "paper16.ly"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  \context Staff = Mand <
    \IMand
  >

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 66}
}

\score {
  \context Staff = Mand <
     \IIMand
  >

  \header {piece = "Larghetto"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff = Mand <
    \IIIMand
  >
  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=108}
}
