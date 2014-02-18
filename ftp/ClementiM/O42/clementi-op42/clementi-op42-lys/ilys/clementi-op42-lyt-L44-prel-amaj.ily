\version "2.16.1"
\include "clementi-op42-mus-L44-prel-amaj.ily"

% LESSON XLIV. Prelude in A Major.

\score {
  \new PianoStaff <<
	  \new Staff = "upper" { \global \LessonXLIVUpperPrel }
	  \new Staff = "lower" { \global \LessonXLIVLowerPrel }
  >>
  \layout{
    system-count = #2
  }
}
