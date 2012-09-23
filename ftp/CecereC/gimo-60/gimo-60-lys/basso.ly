\version "2.16.0"

Instrument = "Basso"
\include "header.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IBasso

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIBasso

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff \IIIBasso

  \header {piece = "Grazioso"}
  \layout {}
  
  \midi {
    \tempo 4. = 48
    }


}
