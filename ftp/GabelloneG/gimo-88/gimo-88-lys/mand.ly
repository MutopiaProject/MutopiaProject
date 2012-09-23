\version "2.16.0"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

#(set-global-staff-size 13)

\score {
  \context Staff = Mand \IMand

  \header {piece = "Allegro" opus = "Gimo 88"}
  \layout {}
}

\score {
  \context Staff = Mand \IIMand

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = Mand \IIIMand

  \header {piece = "Allegro"}
  \layout {}
}
