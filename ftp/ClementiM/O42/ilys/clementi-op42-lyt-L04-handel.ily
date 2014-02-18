\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L04-handel.ily"

% LESSON IV: Air in Saul de Handel.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonIVUpper
    \new Staff = "lower" \LessonIVLower
  >>
  \layout { }
}
