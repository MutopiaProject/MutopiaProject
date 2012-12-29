\version "2.16.0"

\include "5.ly"

vCelloGlobal =   {
  \clef "bass"
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

vCelloScripts =  {
}

vCelloStaff =  \context Staff <<
   \transpose c' f, \vStaff
  \vCelloGlobal
  \vCelloScripts
>>

\score {
  \vCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 55
    }


  \header {
    piece = "Sarabande"
    opus = ""
  }
}

