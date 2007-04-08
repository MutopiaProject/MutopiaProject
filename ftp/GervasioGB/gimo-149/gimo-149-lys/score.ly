\version "1.6.0"

% Contains the full score.
Instrument = ""
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "1-basso.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"
\include "2-basso.ly"
\include "3-mand1.ly"
\include "3-mand2.ly"
\include "3-basso.ly"

\include "paper16.ly"

\score {
  \context StaffGroup <
    \context Staff = A \IMandI
    \context Staff = B \IMandII
    \context Staff = C \IBasso
  >
  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=100}
}

\score {
  \context StaffGroup <
    \context Staff = A \IIMandI
    \context Staff = B \IIMandII
    \context Staff = C \IIBasso
  >
  \header {piece = "Larghetto Andantino" }
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}  
  \midi {\tempo 8=240}
}

\score {
  \context StaffGroup <
    \context Staff = A \IIIMandI
    \context Staff = B \IIIMandII
    \context Staff = C \IIIBasso
  >
  \header {piece = "Allegro assai spiritoso" }
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=144}
}

