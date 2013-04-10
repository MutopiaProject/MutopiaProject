\version "2.16.0"
#(set-global-staff-size 16)
Instrument = ""
\include "header.ly"
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 120
    }


  \header { piece = "Allegretto" opus = "Gimo 12"}
}

\score {
  \context StaffGroup <<
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 144
    }


  \header { piece = "Tempo di Menuetto" }
}

