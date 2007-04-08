\version "1.6.0"
\include "paper16.ly"
Instrument = ""
\include "header.ly"
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"

\score {
  \context StaffGroup <
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=120}
  \header { piece = "Allegretto" opus = "Gimo 12"}
}

\score {
  \context StaffGroup <
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=144}
  \header { piece = "Tempo di Menuetto" }
}

