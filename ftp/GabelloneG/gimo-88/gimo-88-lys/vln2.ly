\version "2.16.0"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = ViolinII \IVlnII

  \header {piece = "Allegro" opus = "Gimo 88"}
  \layout {}
}

\score {
  \context Staff = ViolinII \IIVlnII

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = ViolinII \IIIVlnII

  \header {piece = "Allegro"}
  \layout {}
}
