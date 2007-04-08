\version "1.6.0"

\include "paper16.ly"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\score {
  \context Staff = VlnII <
    \IVlnII
  >

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4 = 66}
}

\score {
  \context Staff = VlnII <
     \IIVlnII
  >

  \header {piece = "Larghetto"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=66}
}

\score {
  \context Staff = VlnII <
    \IIIVlnII
  >
  \header {piece = "Allegro"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 8=108}
}
