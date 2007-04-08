\version "1.4.0"

\include "3.ly"

iiiViolinGlobal =  \notes {
  \clef "treble"
  \key d\major
  \time 3/4
  \repeat "volta" 2 {
    \partial 8
    s8 | s2.*31 | s8*5
  }

  \repeat "volta" 2 {
    s8 | s2.*47 | s8*5
  }
}

iiiViolinScripts =  \notes{
}

iiiViolinStaff =  \context Staff <
  \iiiStaff
  \iiiViolinGlobal
  \iiiViolinScripts
>

\score {
  \iiiViolinStaff
  \paper { }
  \midi { \tempo 4 = 130 }
  \header {
    piece = "Corrente"
    opus = ""
  }
}

