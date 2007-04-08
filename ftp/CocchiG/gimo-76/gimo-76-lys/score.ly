\version "1.6.0"

Instrument = ""
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "1-basso.ly"
\include "2-mand.ly"
\include "2-basso.ly"
\include "3-mand.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context StaffGroup <
    \context Staff = I \IMandI
    \context Staff = II \IMandII
    \context Staff = Basso \IBasso
  >
  \header {piece = "Allegro assai" opus = "Gimo 76"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=120}
}

\score {
  \context StaffGroup <
    \context Staff = M \IIMand
    \context Staff = Basso \IIBasso
  >
  \header {piece = "Largo"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=60}
}

\score {
  \context StaffGroup <
    \context Staff = M \IIIMand
    \context Staff = Basso \IIIBasso
  >
  \header {piece = "Allegro"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=90}
}

