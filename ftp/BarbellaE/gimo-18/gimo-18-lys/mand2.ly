\version "2.16.0"

Instrument = "Mandolin II"
\include "header.ly"
#(set-global-staff-size 16)

\include "1-mand2.ly"
\include "2-mand2.ly"
\include "3-mand2.ly"

\score {
  \context Staff = II \IMandII

  \header {piece = "Allegro" opus = "Gimo 18"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context Staff = II \IIMandII

  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context Staff = II \IIIMandII

  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }
}
