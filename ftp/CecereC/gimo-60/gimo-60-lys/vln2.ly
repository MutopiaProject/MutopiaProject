\version "2.16.0"

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IVlnII

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIVlnII

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff \IIIVlnII

  \header {piece = "Grazioso"}
  \layout {}
  
  \midi {
    \tempo 4. = 48
    }


}
