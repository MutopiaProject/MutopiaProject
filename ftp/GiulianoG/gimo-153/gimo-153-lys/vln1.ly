\version "2.16.0"

#(set-global-staff-size 16)

Instrument = "Violin I"
\include "header.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\score {
  \context Staff = VlnI <<
    \IVlnI
  >>

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = VlnI <<
     \IIVlnI
  >>

  \header {piece = "Larghetto"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = VlnI <<
    \IIIVlnI
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4. = 36
    }


}
