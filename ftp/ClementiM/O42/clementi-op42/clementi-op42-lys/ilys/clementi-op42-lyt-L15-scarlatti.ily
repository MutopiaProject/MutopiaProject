\version "2.16.1"
\include "clementi-op42-mus-L15-scarlatti.ily"

% LESSON XV. Larghetto by Scarlatti.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXVUpperB
    \new Staff = "lower" \LessonXVLowerB
  >>
  \layout { 
    system-count = #5
  }
}
