\version "2.16.0"

\include "6.ly"

viCelloGlobal =   {
  \clef "bass"
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

viCelloScripts =  {
}

viCelloStaff =  \context Staff <<
   \transpose c' f, \viStaff
  \viCelloGlobal
  \viCelloScripts
>>

\score {
  \viCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 140
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

