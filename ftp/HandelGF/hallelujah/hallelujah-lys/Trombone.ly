\include "header.ly"
\include "cello.ly"

BbTrombone = \notes \transpose bes c' \CelloStaff %\CelloNotes 

\score {
  <<
    \context Staff=Trombone \BbTrombone
  >>
  \header {
       instrument = "Trombone"
     }
}
   \midi  {}
