\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L22-arietta.ily"

% LESSON XXII. Arietta.

\book {   \bookOutputName "clementi-op42-les22-arietta"
  \score {
    \unfoldRepeats \articulate
    \new PianoStaff <<
      \new Staff = "upper" \LessonXXIIUpper
      \new Staff = "lower" \LessonXXIILower
    >>
    \midi { }
  }
}
