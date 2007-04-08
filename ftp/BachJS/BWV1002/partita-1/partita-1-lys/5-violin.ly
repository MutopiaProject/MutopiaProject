\version "1.4.0"

\include "5.ly"

vViolinGlobal =  \notes {
  \clef "treble"
  \key d\major
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

vViolinScripts =  \notes{
}

vViolinStaff =  \context Staff <
  \vStaff
  \vViolinGlobal
  \vViolinScripts
>

\score {
  \vViolinStaff
  \paper { }
  \midi { \tempo 4 = 55 }
  \header {
    piece = "Sarabande"
    opus = ""
  }
}

