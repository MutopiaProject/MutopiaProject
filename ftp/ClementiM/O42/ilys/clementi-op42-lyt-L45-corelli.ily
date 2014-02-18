\version "2.16.1"
\include "clementi-op42-mus-L45-corelli.ily"

% LESSON XLIV. Adagio by Corelli (in F # Minor).

\score {
  \new PianoStaff <<
    \new Staff = "upper" { \clef treble \global \LessonXLVUpper }
    \new Staff = "lower" { \clef bass \global \LessonXLVLower }
  >>
  \layout { }
}
