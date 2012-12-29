\version "2.16.0"

\include "1.ly"

iViolaGlobal =   {
  \clef "alto"
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

iViolaScripts =  {
}

iViolaStaff =  \context Staff <<
   \transpose c' f \iNotes
  \iViolaGlobal
  \iViolaScripts
>>

\score {
  \iViolaStaff
  \layout { }
  
  \midi {
    \tempo 4 = 45
    }


  \header {
    piece = "Allemanda"
    opus = ""
  }
}
