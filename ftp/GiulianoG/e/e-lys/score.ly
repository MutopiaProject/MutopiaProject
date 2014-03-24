\version "2.18.0"

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
  \header {piece = "Allegro"}
  \layout {\context{\Score \override BarNumber.extra-offset = #'(0 . 1)} \context {\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 60
    }


}

\score {
  \context StaffGroup <<
    \context Staff = Mand \IIMand
    \context Staff = Basso \IIBasso
  >>
  \header {piece = "Largo"}
  \layout {\context{\Score \override BarNumber.extra-offset = #'(0 . 1)} \context {\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 60
    }


}

\score {
  \context StaffGroup <<
    \context Staff = Mand \IIIMand
    \context Staff = Basso \IIIBasso
  >>
  \header {piece = "Minuetto"}
  \layout {\context{\Score \override BarNumber.extra-offset = #'(0 . 1)} \context {\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-4 . 4) }}
  
  \midi {
    \tempo 4 = 120
    }


}
