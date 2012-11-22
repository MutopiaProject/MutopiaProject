\version "2.16.0"
Instrument = "Viola"
\include "header.ly"
\include "1-vla.ly"
\include "3-vla.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \IVla
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

Clef =  \clef "alto"
\include "2-tacet.ly"

\score {
  \context Staff=A \IIIVla
  \header { piece = "Allegro" }
  \layout {}
}