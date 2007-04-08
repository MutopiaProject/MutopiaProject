\version "1.6.0"

Instrument = "Mandolins"
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\include "paper16.ly"

\score {
  \context StaffGroup <
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >
  \header {piece = "Allegro assai" opus = "Gimo 76"}
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
}

\score {
  \context Staff = M \IIMand

  \header {piece = "Largo"}
  \paper {}
}

\score {
  \context Staff = M \IIIMand

  \header {piece = "Allegro"}
  \paper {}
}
