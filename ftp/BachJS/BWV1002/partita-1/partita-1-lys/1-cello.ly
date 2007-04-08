\version "1.4.0"

\include "1.ly"

iCelloGlobal =  \notes {
  \clef "bass"
  \key g\major
  \time 4/4
  \partial 16
  \repeat "volta" 2 {
    s16 | s1*11 |
  }
  \alternative {
    { \partial 1 s1 }
    { s1 }
  }

  \repeat "volta" 2 {
    s1*11
  }
  \alternative {
    { \partial 1 s1 }
    { s16*15 \bar "|." }
  }
}

iCelloScripts =  \notes{
}

iCelloStaff =  \context Staff <
  \notes \transpose f, \iNotes
  \iCelloGlobal
  \iCelloScripts
>

\score {
  \iCelloStaff
  \paper { }
  \midi { \tempo 4 = 32 }
  \header {
    piece = "Allemanda"
    opus = ""
  }
}

