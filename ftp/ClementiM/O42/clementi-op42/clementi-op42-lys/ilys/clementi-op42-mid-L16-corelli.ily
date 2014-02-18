\version "2.16.1"
\include "clementi-op42-mus-L16-corelli.ily"

% LESSON XVI. Allemanda, by Corelli.

\book {   \bookOutputName "clementi-op42-les16-corelli-alleman"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXVIUpper
      \new Staff = "lower" \LessonXVILower
    >>
    \midi { }
  }
}
