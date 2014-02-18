\version "2.16.1"
\include "clementi-op42-mus-L18-prel-gmaj.ily"

% LESSON XVIII. Prelude in G Major.

\book {   \bookOutputName "clementi-op42-les18-prel-gmaj"
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \LessonXVIIIUpperA
      \new Staff = "lower" \LessonXVIIILowerA
    >>
    \midi { }
  }
}
