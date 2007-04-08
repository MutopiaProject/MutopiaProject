\version "1.4.0"

\include "5.ly"

vCelloGlobal =  \notes {
  \clef "bass"
  \key g\major
  \time 3/4
  \repeat "volta" 2 {
    s2.*7 |
  }
  \alternative {
    { \partial 2. s2. }
    { s2. }
  }
  \repeat "volta" 2 {
    s2.*24
  }
}

vCelloScripts =  \notes{
}

vCelloStaff =  \context Staff <
  \notes \transpose f, \vStaff
  \vCelloGlobal
  \vCelloScripts
>

\score {
  \vCelloStaff
  \paper { }
  \midi { \tempo 4 = 55 }
  \header {
    piece = "Sarabande"
    opus = ""
  }
}

