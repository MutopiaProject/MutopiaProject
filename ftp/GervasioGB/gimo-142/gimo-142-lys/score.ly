\version "2.16.0"

Instrument = ""
\include "header.ly"
#(set-global-staff-size 16)

\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \new StaffGroup <<
    \new Staff = Mand \IMand
    \new Staff = Basso \IBasso
  >>
  \header {piece = "Allegro" opus = "Gimo 142"}
  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \new StaffGroup <<
    \new Staff = Mand \IIMand
    \new Staff = Basso \IIBasso
  >>
  \header {piece = "Larghetto grazioso"}
  \layout {}
  
  \midi {
    \tempo 4. = 100
    }


}

\score {
  \new StaffGroup <<
    \new Staff = Mand \IIIMand
    \new Staff = Basso \IIIBasso
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4 = 120
    }


}
