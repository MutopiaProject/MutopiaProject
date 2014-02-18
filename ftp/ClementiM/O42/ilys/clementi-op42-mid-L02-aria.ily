\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L02-aria.ily"

\book {   \bookOutputName "clementi-op42-les02-aria-cmaj"
  \score { %LESSON II: Aria (MIDI)
  \unfoldRepeats  
  \new PianoStaff <<
      \new Staff = "upper" \LessonIIAriaUpper
      \new Staff = "lower" \LessonIIAriaLower
    >>
    \midi { }	
  }
}
