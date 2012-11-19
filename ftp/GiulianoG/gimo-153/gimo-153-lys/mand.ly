\version "2.16.0"

#(set-global-staff-size 16)

Instrument = "Mandolin"
\include "header.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  \context Staff = Mand <<
    \IMand
  >>

  \header {piece = "Maestoso" opus = "Gimo 153"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = Mand <<
     \IIMand
  >>

  \header {piece = "Larghetto"}
  \layout {}
  
  \midi {
    \tempo 4 = 66
    }


}

\score {
  \context Staff = Mand <<
    \IIIMand
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4. = 36
    }


}
