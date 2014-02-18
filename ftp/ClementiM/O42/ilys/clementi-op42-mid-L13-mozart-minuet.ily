\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L13-mozart-minuet.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  MINUET

\book {   \bookOutputName "clementi-op42-les13-mozart-minuet"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXIIIUpperA
      \new Staff = "lower" \LessonXIIILowerA
    >>
  \midi { }
  }
}
