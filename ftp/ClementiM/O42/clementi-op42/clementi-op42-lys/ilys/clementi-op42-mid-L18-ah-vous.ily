\version "2.16.1"
\include "clementi-op42-mus-L18-ah-vous.ily"

% LESSON XVIII. Ah vous dirai - je maman.

\book {   \bookOutputName "clementi-op42-les18-ah-vous-dirai-je"
  \score {
    \unfoldRepeats
    \new PianoStaff <<
      \new Staff = "upper" \LessonXVIIIUpperB
      \new Staff = "lower" \LessonXVIIILowerB
    >>
    \midi { }
  }
}
