\version "1.4.0"

\include "5.ly"

vViolaGlobal =  \notes {
  \clef "alto"
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

vViolaScripts =  \notes{
}

vViolaStaff =  \context Staff <
  \notes \transpose f \vStaff
  \vViolaGlobal
  \vViolaScripts
>

\score {
  \vViolaStaff
  \paper { }
  \midi { \tempo 4 = 55 }
  \header {
    piece = "Sarabande"
    opus = ""
  }
}

