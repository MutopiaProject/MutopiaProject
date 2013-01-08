\version "2.16.0"

\include "4.ly"

ivViolinGlobal =   {
  \clef "treble"
  \key d\major
  \time 3/4
  \repeat "volta" 2 {
    \partial 16
    s16 | s2.*31 | s16*11
  }

  \repeat "volta" 2 {
    s16 | s2.*47 | s16*11
  }
}

ivViolinScripts =  {
}

ivViolinStaff =  \context Staff <<
  \ivStaff
  \ivViolinGlobal
  \ivViolinScripts
>>

\score {
  \ivViolinStaff
  \layout { }
  
  \midi {
    \tempo 4 = 109
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

