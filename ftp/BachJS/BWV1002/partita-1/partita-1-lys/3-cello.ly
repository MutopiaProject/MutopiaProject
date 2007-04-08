\version "1.4.0"

\include "3.ly"

iiiCelloGlobal =  \notes {
  \clef "bass"
  \key g\major
  \time 3/4
  \repeat "volta" 2 {
    \partial 8
    s8 | s2.*31 | s8*5
  }

  \repeat "volta" 2 {
    s8 | s2.*47 | s8*5
  }
}

iiiCelloScripts =  \notes{
}

iiiCelloStaff =  \context Staff <
  \notes \transpose f, \iiiStaff
  \iiiCelloGlobal
  \iiiCelloScripts
>

\score {
  \iiiCelloStaff
  \paper { }
  \midi { \tempo 4 = 130 }
  \header {
    piece = "Corrente"
    opus = ""
  }
}

