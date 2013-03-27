\version "2.16.0"

Instrument = "Mandolin I"
\include "header.ly"

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = I \IMandI

  \header {piece = "" opus = "Gimo 359"}
  \layout {}
}

\score {
  \context Staff = I \IIMandI

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = I \IIIMandI

  \header {piece = "Allegro"}
  \layout {}
}

