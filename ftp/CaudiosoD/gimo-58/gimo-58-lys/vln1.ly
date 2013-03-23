\version "2.16.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IVlnI

  \header {piece = "Allegro" opus = "Gimo 58"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context Staff \IIVlnI

  \header {piece = "Largo"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIIVlnI

  \header {piece = "Allegro"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 120
    }


}
