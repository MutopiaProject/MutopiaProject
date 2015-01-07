\version "2.19.15"
\include "header.ly"
\include "cello.ly"

BbTrombone =  \transpose bes c' \CelloStaff %\CelloNotes 

\score {
  <<
    \context Staff=Trombone \BbTrombone
  >>
  \header {
       instrument = "Trombone"
     }
   \midi  {}
}
