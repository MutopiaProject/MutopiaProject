\version "2.16.0"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IVlnII

  \header {piece = "Allegro" opus = "Gimo 58"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context Staff \IIVlnII

  \header {piece = "Largo"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIIVlnII

  \header {piece = "Allegro"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 120
    }


}
