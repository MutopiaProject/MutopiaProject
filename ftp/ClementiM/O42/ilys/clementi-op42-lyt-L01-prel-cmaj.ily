\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-prel-cmaj.ily"

%LESSON I PRELUDE 

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonIPreludeupper
    \new Staff = "lower" \LessonIPreludelower
  >>
  \layout {  }
}


