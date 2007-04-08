\version "1.6.0"

Instrument = ""
\include "header.ly"
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"
\include "3-mand1.ly"
\include "3-mand2.ly"

\include "paper16.ly"

\score {
  \context StaffGroup <
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >

  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=80}
  \header { piece = "Andante, e con espressione" opus = "Gimo 14"}
}

\score {
  \context StaffGroup <
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
  >

  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=120}
  \header { piece = "Allegro" }
}

\score {
  \context StaffGroup <
    \context Staff = I \IIIMandI
    \context Staff = II \IIIMandII
  >
  \paper {\translator{\ScoreContext BarNumber \set #'extra-offset = #'(0 . 1)} \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=144}
  \header { piece = "Gavotta Allegro" }
}

