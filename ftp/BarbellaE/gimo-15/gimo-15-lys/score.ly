\version "2.16.0"

Instrument = ""
\include "header.ly"
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"

#(set-global-staff-size 16)

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


  \header { piece = "Allegro" opus = "Gimo 15"}
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


  \header { piece = "Andantino" }
}
