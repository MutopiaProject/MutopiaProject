\version "2.16.0"

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IVlnI

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIVlnI

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff \IIIVlnI

  \header {piece = "Grazioso"}
  \layout {}
  
  \midi {
    \tempo 4. = 48
    }


}
