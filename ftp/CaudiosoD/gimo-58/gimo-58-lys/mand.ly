\version "2.16.0"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IMand

  \header {piece = "Allegro" opus = "Gimo 58"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context Staff \IIMand

  \header {piece = "Largo"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIIMand

  \header {piece = "Allegro"}
  \layout {\context {\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 120
    }


}
