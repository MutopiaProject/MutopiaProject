\version "1.6.0"

\include "paper16.ly"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\score {
  \context Staff = VlnI <
    \IVlnI
  >

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 66}
}

\score {
  \context Staff = VlnI <
     \IIVlnI
  >

  \header {piece = "Larghetto"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff = VlnI <
    \IIIVlnI
  >
  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=108}
}

