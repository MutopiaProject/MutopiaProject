\version "2.16.0"

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

#(set-global-staff-size 16)

\score {
  \context Staff \IMand

  \header {piece = "Allegro ma non Presto" opus = "Gimo 60"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context Staff \IIMand

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff \IIIMand

  \header {piece = "Grazioso"}
  \layout {}
  
  \midi {
    \tempo 4. = 48
    }


}
