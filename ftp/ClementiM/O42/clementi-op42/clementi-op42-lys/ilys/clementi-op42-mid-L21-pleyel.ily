\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L21-pleyel.ily"

% LESSON XXI. Larghetto, by Pleyel.

\book {   \bookOutputName "clementi-op42-les21-pleyel-lrghetto"
  \score {
    \unfoldRepeats \articulate
    \new PianoStaff <<
      \new Staff = "upper" \LessonXXIUpper
      \new Staff = "lower" \LessonXXILower
    >>
    \midi { }
  }
}
