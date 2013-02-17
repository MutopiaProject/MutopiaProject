\version "2.16.0"
Instrument = "Lute"
\include "header.ly"
\include "1-lute.ly"
\include "2-lute.ly"
\include "3-lute.ly"

#(set-global-staff-size 17)

\score {
  \context Staff=A \ILute
  \header { piece = "Allegro" opus = "RV 540" }
  \layout {}
}

\score {
  \context Staff=A \IILute
  \header { piece = "Largo" }
  \layout {}
}

\score {
  \context Staff=A \IIILute
  \header { piece = "Allegro" }
  \layout {}
}