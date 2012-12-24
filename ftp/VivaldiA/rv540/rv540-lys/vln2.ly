\version "2.16.0"
Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln.ly"
\include "3-vln2.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \IVlnII
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

\score {
  \context Staff=A \IIVln
  \header { piece = "Largo" }
  \layout {}
}

\score {
  \context Staff=A \IIIVlnII
  \header { piece = "Allegro" }
  \layout {}
}
