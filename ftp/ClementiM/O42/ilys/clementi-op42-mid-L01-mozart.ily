\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-mozart.ily"

\book {   \bookOutputName "clementi-op42-les01-mozart-moder"
  \score { %LESSON I MODERATO DE MOZART (MIDI)
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonIModeratoUpper
      \unfoldRepeats
      \new Staff = "lower" \LessonIModeratoLower
    >>
    \midi { }	
  }
}
