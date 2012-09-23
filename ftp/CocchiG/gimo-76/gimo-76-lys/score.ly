\version "2.16.0"

Instrument = ""
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "1-basso.ly"
\include "2-mand.ly"
\include "2-basso.ly"
\include "3-mand.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
    \context Staff = Basso \IBasso
  >>
  \header {piece = "Allegro assai" opus = "Gimo 76"}
  \layout {}
  
  \midi {
    \tempo 4 = 120
    }


}

\score {
  \context StaffGroup <<
    \context Staff = M \IIMand
    \context Staff = Basso \IIBasso
  >>
  \header {piece = "Largo"}
  \layout {}
  
  \midi {
    \tempo 4 = 60
    }


}

\score {
  \context StaffGroup <<
    \context Staff = M \IIIMand
    \context Staff = Basso \IIIBasso
  >>
  \header {piece = "Allegro"}
  \layout {}
  
  \midi {
    \tempo 4 = 90
    }


}

