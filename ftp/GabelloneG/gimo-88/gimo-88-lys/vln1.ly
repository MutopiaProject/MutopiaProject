\version "2.16.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = ViolinI \IVlnI

  \header {piece = "Allegro" opus = "Gimo 88"}
  \layout {}
}

\score {
  \context Staff = ViolinI \IIVlnI

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = ViolinI \IIIVlnI

  \header {piece = "Allegro"}
  \layout {}
}
