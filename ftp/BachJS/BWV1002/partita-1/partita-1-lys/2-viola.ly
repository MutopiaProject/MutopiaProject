\version "2.16.0"

\include "2.ly"

iiViolaGlobal =   {
  \clef "alto"
  \key g\major

  % Time signature: To get the right C symbol, we need 2/2,
  % then baseMoment needs to be modified to group notes correctly.
  \time 2/2
  \set Timing.baseMoment = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
    \partial 16
    s16 | s1*11 | s16*15 
  }
  \repeat "volta" 2 {
    s16 | s1*11 | s16*15 \bar "|."
  }
}

iiViolaScripts =  {
}

iiViolaStaff =  \context Staff <<
   \transpose c' f \iiStaff
  \iiViolaGlobal
  \iiViolaScripts
>>

\score {
  \iiViolaStaff
  \layout { }
  
  \midi {
    \tempo 4 = 76
    }


  \header {
    piece = "Double"
    opus = ""
  }
}

