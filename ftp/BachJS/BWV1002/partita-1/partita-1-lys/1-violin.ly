\version "1.4.0"

\include "1.ly"

iViolinGlobal =  \notes {
  \clef "treble"
  \key d\major
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

iViolinScripts =  \notes{
}

iViolinStaff =  \context Staff <
  \iNotes
  \iViolinGlobal
  \iViolinScripts
>

\score {
  \iViolinStaff
  \paper { }
  \midi { \tempo 4 = 32 }
  \header {
    piece = "Allemanda"
    opus = ""
  }
}
