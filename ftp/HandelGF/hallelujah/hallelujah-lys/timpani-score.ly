\version "2.19.15"
\include "timpani.ly"

\score {
  <<
    \new Staff=TimpaniInAandD {
      \timpaniNotes
    }
  >>
  
  \header {
       instrument = "Tampani in A und D"
  }

}
