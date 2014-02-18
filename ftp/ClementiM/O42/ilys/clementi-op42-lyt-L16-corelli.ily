\version "2.16.1"
\include "clementi-op42-mus-L16-corelli.ily"

% LESSON XVI. Allemanda, by Corelli.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXVIUpper
    \new Staff = "lower" \LessonXVILower
  >>
  \layout { 
    system-count = #10
    indent = 0\mm
  }
}
