\version "2.16.0"

\include "5.ly"

vViolinGlobal =   {
  \clef "treble"
  \key d\major
  \time 3/4
  \repeat "volta" 2 {
    s2.*7 |
  }
  \alternative {
    { s2. }
    { s2. }
  }
  \repeat "volta" 2 {
    s2.*24
  }
}

vViolinScripts =  {
}

vViolinStaff =  \context Staff <<
  \vStaff
  \vViolinGlobal
  \vViolinScripts
>>

\score {
  \vViolinStaff
  \layout { }
  
  \midi {
    \tempo 4 = 55
    }


  \header {
    piece = "Sarabande"
    opus = ""
  }
}

