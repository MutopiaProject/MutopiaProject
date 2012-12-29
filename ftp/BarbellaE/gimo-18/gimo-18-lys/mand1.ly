\version "2.16.0"

Instrument = "Mandolin I"
\include "header.ly"
#(set-global-staff-size 16)

\include "1-mand1.ly"
\include "2-mand1.ly"
\include "3-mand1.ly"

\score {
  \context Staff = I \IMandI

  \header {piece = "Allegro" opus = "Gimo 18"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context Staff = I \IIMandI

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context Staff = I \IIIMandI

  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}
