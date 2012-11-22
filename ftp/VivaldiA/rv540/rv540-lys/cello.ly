\version "2.16.0"
Instrument = "Cello"
\include "header.ly"
\include "1-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \IBasso
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

Clef = \clef "bass"
\include "2-tacet.ly"

\score {
  \context Staff=A \IIIBasso
  \header { piece = "Allegro" }
  \layout {}
}