\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L03-handel.ily"

%LESSON III. Air del'Opera Atalante de HANDEL

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonIIIUpper
    \new Staff = "lower" \LessonIIILower
  >>
  \layout { }
}
