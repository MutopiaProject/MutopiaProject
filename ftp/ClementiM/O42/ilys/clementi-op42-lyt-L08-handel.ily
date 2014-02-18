\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L08-handel.ily"

% LESSON VIII: Air, in Judas Maccabeus, by Handel

\score { 
  \new PianoStaff <<
    \new Staff = "upper" \LessonVIIIUpper
    \new Staff = "lower" \LessonVIIILower
  >>
  \layout { indent = 0\mm }
}
