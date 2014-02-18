\version "2.16.1"
\include "clementi-op42-mus-L17-corelli.ily"

% LESSON XVII.  Sarabanda, by Corelli.

\book {   \bookOutputName "clementi-op42-les17-corelli-sarab"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXVIIUpper
      \new Staff = "lower" \LessonXVIILower
    >>
    \midi { }
  }
}
