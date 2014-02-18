\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L12-mozart.ily"

% LESSON XII. Arietta by Mozart.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXIIUpper 
    \new Staff = "lower" \LessonXIILower
   >>
  \layout { }
}
