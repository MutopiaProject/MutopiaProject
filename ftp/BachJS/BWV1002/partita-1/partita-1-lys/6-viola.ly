\version "1.4.0"

\include "6.ly"

viViolaGlobal =  \notes {
  \clef "alto"
  \key g\major
  \time 9/8
  \repeat "volta" 2 {
    s1*7 s8*7 |
  }
  \alternative {
    { \partial 8*9 s8*9 }
    { s8*9 | }
  }
  \repeat "volta" 2 {
    s1*23 s8*23 |
  }
  \alternative {
    { \partial 8*9 s8*9 }
    { s8*9 \bar "|." }
  }
}

viViolaScripts =  \notes{
}

viViolaStaff =  \context Staff <
  \notes \transpose f \viStaff
  \viViolaGlobal
  \viViolaScripts
>

\score {
  \viViolaStaff
  \paper { }
  \midi { \tempo 4 = 140 }
  \header {
    piece = "Double"
    opus = ""
  }
}

