\version "2.16.0"

\include "3.ly"

iiiCelloGlobal =   {
  \clef "bass"
  \key g\major
  \time 3/4
  \repeat "volta" 2 {
    \partial 8
    s8 | s2.*31 | s8*5
  }

  \repeat "volta" 2 {
    s8 | s2.*47 | s8*5
  }
}

iiiCelloScripts =  {
}

iiiCelloStaff =  \context Staff <<
   \transpose c' f, \iiiStaff
  \iiiCelloGlobal
  \iiiCelloScripts
>>

\score {
  \iiiCelloStaff
  \layout { }
  
  \midi {
    \tempo 4 = 130
    }


  \header {
    piece = "Corrente"
    opus = ""
  }
}

