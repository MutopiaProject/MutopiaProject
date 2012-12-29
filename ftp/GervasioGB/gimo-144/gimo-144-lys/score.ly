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
  \context StaffGroup <<
    \context Staff = Mand \IMand
    \context Staff = Basso \IBasso
  >>
  \header {piece = "Allegro maestoso" opus = "Gimo 144"}
  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context StaffGroup <<
    \context Staff = Mand \IIMand
    \context Staff = Basso \IIBasso
  >>
  \header {piece = "Largo Pizzicato"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context StaffGroup <<
    \context Staff = Mand \IIIMand
    \context Staff = Basso \IIIBasso
  >>
  \header {piece = "Allegro assai"}
  \layout {}
  
  \midi {
    \tempo 4 = 160
    }


}
