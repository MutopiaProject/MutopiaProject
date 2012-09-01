\version "2.16.0"

\include "8.ly"

viiiViolaGlobal =   {
  \clef "alto"
  \key g\major
  \time 2/2
  \repeat "volta" 2 {
    \partial 4. s4. | s1*19 | s8*5
  }
  \repeat "volta" 2 {
    s4. | s1*47 | s8*5
  }
}

viiiViolaScripts =  {
}

viiiViolaStaff =  \context Staff <<
   \transpose c' f \viiiStaff
  \viiiViolaGlobal
  \viiiViolaScripts
>>

\score {
  \viiiViolaStaff
  \layout { }
  
  \midi {
    \tempo 4 = 160
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

