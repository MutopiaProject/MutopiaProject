\version "2.16.0"

#(set-global-staff-size 16)

Instrument = "Basso"
\include "header.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \context Staff = Basso <<
    \IBasso
  >>

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = Basso <<
     \IIBasso
  >>

  \header {piece = "Larghetto"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = Basso <<
    \IIIBasso
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4. = 36
    }


}
