\version "2.16.0"

\include "8.ly"

viiiViolinGlobal =   {
  \clef "treble"
  \key d\major
  \time 2/2
  \repeat "volta" 2 {
    \partial 4. s4. | s1*19 | s8*5
  }
  \repeat "volta" 2 {
    s4. | s1*47 | s8*5
  }
}

viiiViolinScripts =  {
}

viiiViolinStaff =  \context Staff <<
  \viiiStaff
  \viiiViolinGlobal
  \viiiViolinScripts
>>

\score {
  \viiiViolinStaff
  \layout { }
  
  \midi {
    \tempo 4 = 160
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

