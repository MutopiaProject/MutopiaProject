\version "2.16.1"
\include "clementi-op42-mus-L21-pleyel.ily"

% LESSON XXI. Larghetto, by Pleyel.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXXIUpper
    \new Staff = "lower" \LessonXXILower
  >>
  \layout { }
}
