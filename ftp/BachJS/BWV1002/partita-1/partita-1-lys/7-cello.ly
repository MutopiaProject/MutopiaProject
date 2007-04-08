\version "1.4.0"

\include "7.ly"

viiCelloGlobal =  \notes {
  \clef "bass"
  \key g\major
  \time 2/2
  \repeat "volta" 2 {
    \partial 4 s4 | s1*19 | s4*3
  }
  \repeat "volta" 2 {
    s4 | s1*47 | s4*3
  }
}

viiCelloScripts =  \notes{
}

viiCelloStaff =  \context Staff <
  \notes \transpose f, \viiStaff
  \viiCelloGlobal
  \viiCelloScripts
>

\score {
  \viiCelloStaff
  \paper { }
  \midi { \tempo 4 = 140 }
  \header {
    piece = "Tempo di Borea"
    opus = ""
  }
}

