\version "2.16.0"
Instrument = "Viola d'amore"
\include "header.ly"
\include "1-amore.ly"
\include "2-amore.ly"
\include "3-amore.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \IAmore
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

\score {
  \context Staff=A \IIAmore

  \header { piece = "Largo" }
  \layout {}
}

\score {
  \context Staff=A \IIIAmore

  \header { piece = "Allegro" }
  \layout {}
}