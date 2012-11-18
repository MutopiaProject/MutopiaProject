\version "2.16.0"

#(set-global-staff-size 16)
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"

\score {
  \context StaffGroup = Neutral <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >>
  \header {opus = "Gimo 147"}
  \layout {}
  
  \midi {
    \tempo 4 = 80
    }


}

\score {
  \context StaffGroup = Neutral <<
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 120
    }


}
