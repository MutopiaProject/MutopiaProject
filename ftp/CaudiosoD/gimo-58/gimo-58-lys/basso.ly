\version "2.16.0"

Instrument = "Basso"
\include "header.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IBasso

  \header {piece = "Allegro" opus = "Gimo 58"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context Staff \IIBasso

  \header {piece = "Largo"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIIBasso

  \header {piece = "Allegro"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 120
    }


}
