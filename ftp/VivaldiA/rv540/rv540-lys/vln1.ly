\version "2.16.0"
Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln.ly"
\include "3-vln1.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \IVlnI
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

\score {
  \context Staff=A \IIVln
  \header { piece = "Largo" }
  \layout {}
}

\score {
  \context Staff=A \IIIVlnI
  \header { piece = "Allegro" }
  \layout {}
}