\version "2.16.1"
\include "clementi-op42-mus-L19-triste-raison.ily"

% LESSON XIX. Triste Raison.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXIXUpper
    \new Staff = "lower" \LessonXIXLower
  >>
  \layout {
    system-count = #3
  }
}
