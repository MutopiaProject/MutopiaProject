\version "2.16.1"

\include "Header.ly"
\include "Violin.ly"
\include "Organ.ly"


\score { \context StaffGroup = "duet" <<
       \override Score.BarNumber   #'padding = #3
       \ViolinStaff
       \piano
     >>

  \midi {
    \tempo 4 = 80
    }


\layout {}

}
