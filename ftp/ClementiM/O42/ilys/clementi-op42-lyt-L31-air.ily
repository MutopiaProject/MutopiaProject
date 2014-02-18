\version "2.16.1"
\include "clementi-op42-mus-L31-air.ily"

% LESSON XXXI. Lindor - an Air.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXXXIUpper
    \new Staff = "lower" \LessonXXXILower
  >>
  \layout{ 
    system-count = #3
  }
}
