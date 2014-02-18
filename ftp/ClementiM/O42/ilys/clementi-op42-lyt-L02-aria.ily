\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L02-aria.ily"

%LESSON II - ARIA

\score { 
  \new PianoStaff <<
    \new Staff = "upper" \LessonIIAriaUpper
    \new Staff = "lower" \LessonIIAriaLower
  >>
  \layout { }	
}
