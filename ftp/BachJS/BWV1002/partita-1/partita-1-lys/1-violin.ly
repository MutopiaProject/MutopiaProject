\version "2.16.0"

\include "1.ly"

iViolinGlobal =   {
  \clef "treble"
  \key d\major
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

iViolinScripts =  {
}

iViolinStaff =  \context Staff <<
  \iNotes
  \iViolinGlobal
  \iViolinScripts
>>

\score {
  \iViolinStaff
  \layout { }
  
  \midi {
    \tempo 4 = 32
    }


  \header {
    piece = "Allemanda"
    opus = ""
  }
}
