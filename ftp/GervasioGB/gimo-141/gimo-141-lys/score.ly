\version "1.6.0"

Instrument = ""
\include "header.ly"
\include "paper16.ly"

\include "1-mand.ly"
\include "2-mand.ly"
\include "1-basso.ly"
\include "2-basso.ly"

\score {
  \context StaffGroup <
    \context Staff = Mand \IMand
    \context Staff = Basso \IBasso
  >
  \header {piece = "Allegro" opus = "Gimo 141"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi { \tempo 4=100 }
}

\score {
  \context StaffGroup <
    \context Staff = Mand \IIMand
    \context Staff = Basso \IIBasso
  >
  \header {piece = "Allegro"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi { \tempo 4=160 }
}
