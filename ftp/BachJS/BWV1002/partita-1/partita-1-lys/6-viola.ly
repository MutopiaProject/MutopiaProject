\version "2.16.0"

\include "6.ly"

viViolaGlobal =   {
  \clef "alto"
  \key g\major
  \time 9/8
  \repeat "volta" 2 {
    s1*7 s8*7 |
  }
  \alternative {
    { s8*9 }
    { s8*9 | }
  }
  \repeat "volta" 2 {
    s1*23 s8*23 |
  }
  \alternative {
    { s8*9 }
    { s8*9 \bar "|." }
  }
}

viViolaScripts =  {
}

viViolaStaff =  \context Staff <<
   \transpose c' f \viStaff
  \viViolaGlobal
  \viViolaScripts
>>

\score {
  \viViolaStaff
  \layout { }
  
  \midi {
    \tempo 4 = 140
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

