\version "2.16.0"

Instrument = "Mandolin II"
\include "header.ly"

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = II \IMandII

  \header {piece = "" opus = "Gimo 359"}
  \layout {}
}

\score {
  \context Staff = II \IIMandII

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = II \IIIMandII

  \header {piece = "Allegro"}
  \layout {}
}

