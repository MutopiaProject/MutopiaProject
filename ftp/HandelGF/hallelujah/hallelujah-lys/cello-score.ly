\version "2.19.15"
\include "cello.ly"


\score {
  <<
    \context Staff=CelloStaff \celloNotes
  >>
  
    \header {
       instrument = "Cello"
    }
}


