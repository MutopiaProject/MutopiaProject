\version "2.16.0"

\include "5.ly"

vViolaGlobal =   {
  \clef "alto"
  \key g\major
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

vViolaScripts =  {
}

vViolaStaff =  \context Staff <<
   \transpose c' f \vStaff
  \vViolaGlobal
  \vViolaScripts
>>

\score {
  \vViolaStaff
  \layout { }
  
  \midi {
    \tempo 4 = 55
    }


  \header {
    piece = "Sarabande"
    opus = ""
  }
}

