\version "2.16.0"

\include "8.ly"

viiiCelloGlobal =   {
  \clef "bass"
  \key g\major
  \time 2/2
  \repeat "volta" 2 {
    \partial 4. s4. | s1*19 | s8*5
  }
  \repeat "volta" 2 {
    s4. | s1*47 | s8*5
  }
}

viiiCelloScripts =  {
}

viiiCelloStaff =  \context Staff <<
   \transpose c' f, \viiiStaff
  \viiiCelloGlobal
  \viiiCelloScripts
>>

\score {
  \viiiCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 160
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

