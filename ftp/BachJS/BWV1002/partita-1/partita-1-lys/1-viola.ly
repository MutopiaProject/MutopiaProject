\version "1.4.0"

\include "1.ly"

iViolaGlobal =  \notes {
  \clef "alto"
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

iViolaScripts =  \notes{
}

iViolaStaff =  \context Staff <
  \notes \transpose f \iNotes
  \iViolaGlobal
  \iViolaScripts
>

\score {
  \iViolaStaff
  \paper { }
  \midi { \tempo 4 = 45 }
  \header {
    piece = "Allemanda"
    opus = ""
  }
}
