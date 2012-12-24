\version "2.16.0"

Instrument = "Mandolin"
\include "header.ly"
#(set-global-staff-size 16)

\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  \context Staff = Mand \IMand
  \header {piece = "Allegro" opus = "Gimo 145"}
  \layout {}
}

\score {
  \context Staff = Mand \IIMand
  \header {piece = "Larghetto. Andantino grazioso."}
  \layout {}
}

\score {
  \context Staff = Mand \IIIMand
  \header {piece = "Allegro con molto Spirito"}
  \layout {}
}
