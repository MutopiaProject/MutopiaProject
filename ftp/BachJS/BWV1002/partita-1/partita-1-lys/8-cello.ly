\version "1.4.0"

\include "8.ly"

viiiCelloGlobal =  \notes {
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

viiiCelloScripts =  \notes{
}

viiiCelloStaff =  \context Staff <
  \notes \transpose f, \viiiStaff
  \viiiCelloGlobal
  \viiiCelloScripts
>

\score {
  \viiiCelloStaff
  \paper { }
  \midi { \tempo 4 = 160 }
  \header {
    piece = "Double"
    opus = ""
  }
}

