\version "1.4.0"

\include "4.ly"

ivViolinGlobal =  \notes {
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

ivViolinScripts =  \notes{
}

ivViolinStaff =  \context Staff <
  \ivStaff
  \ivViolinGlobal
  \ivViolinScripts
>

\score {
  \ivViolinStaff
  \paper { }
  \midi { \tempo 4 = 109 }
  \header {
    piece = "Double"
    opus = ""
  }
}

