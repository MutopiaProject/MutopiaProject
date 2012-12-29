\version "2.16.0"

\include "1.ly"

iCelloGlobal =   {
  \clef "bass"
  \key g\major
  \time 4/4
  \partial 16
  \repeat "volta" 2 {
    s16 | s1*11 |
  }
  \alternative {
    { s1 }
    { s1 }
  }

  \repeat "volta" 2 {
    s1*11
  }
  \alternative {
    { s1 }
    { s16*15 \bar "|." }
  }
}

iCelloScripts =  {
}

iCelloStaff =  \context Staff <<
   \transpose c' f, \iNotes
  \iCelloGlobal
  \iCelloScripts
>>

\score {
  \iCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 32
    }


  \header {
    piece = "Allemanda"
    opus = ""
  }
}
