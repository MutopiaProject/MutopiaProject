\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L07-corelli.ily"

% LESSON VII: Gavotta by Corelli

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonVIIUpper
    \new Staff = "lower" \LessonVIILower
  >>
  \layout { }
}
