\version "2.16.1"
\include "clementi-op42-mus-L18-ah-vous.ily"

% LESSON XVIII. Ah vous dirai - je maman.

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonXVIIIUpperB
    \new Staff = "lower" \LessonXVIIILowerB
  >>
  \layout { 
    indent = 0\mm
  }
}
