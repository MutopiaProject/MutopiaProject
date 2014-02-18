\version "2.16.1"
\include "clementi-op42-mus-L15-prel-dmin.ily"

% LESSON XV. Prelude in D Minor.

\book {   \bookOutputName "clementi-op42-les15-prel-dmin"
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \LessonXVUpperA
      \new Staff = "lower" \LessonXVLowerA
    >>
    \midi { }
  }
}
