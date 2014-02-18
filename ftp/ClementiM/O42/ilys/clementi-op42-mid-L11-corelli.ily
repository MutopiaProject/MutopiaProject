\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L11-corelli.ily"

% LESSON XI. Giga by Corelli.

\book {   \bookOutputName "clementi-op42-les11-corelli-giga"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXIUpper
      \new Staff = "lower" \LessonXILower
    >>
    \midi { }
  }
}
