\version "2.16.0"

#(set-global-staff-size 16)

Instrument = "Violin II"
\include "header.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\score {
  \context Staff = VlnII <<
    \IVlnII
  >>

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = VlnII <<
     \IIVlnII
  >>

  \header {piece = "Larghetto"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = VlnII <<
    \IIIVlnII
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4. = 36
    }


}
