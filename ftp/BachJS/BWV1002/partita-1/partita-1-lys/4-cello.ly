\version "2.16.0"

\include "4.ly"

ivCelloGlobal =   {
  \clef "bass"
  \key g\major
  \time 3/4
  \repeat "volta" 2 {
    \partial 16
    s16 | s2.*31 | s16*11
  }

  \repeat "volta" 2 {
    s16 | s2.*47 | s16*11
  }
}

ivCelloScripts =  {
}

ivCelloStaff =  \context Staff <<
   \transpose c' f, \ivStaff
  \ivCelloGlobal
  \ivCelloScripts
>>

\score {
  \ivCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 109
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

