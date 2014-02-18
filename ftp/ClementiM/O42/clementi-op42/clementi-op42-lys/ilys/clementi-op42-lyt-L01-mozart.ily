\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-mozart.ily"

 %LESSON I MODERATO DE MOZART 

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonIModeratoUpper
    \new Staff = "lower" \LessonIModeratoLower
  >>
  \layout {  }	
}
