\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L04-handel.ily"

% LESSON IV: Air in Saul de Handel.

\book {   \bookOutputName "clementi-op42-les04-handel-air"
  \score {
  \unfoldRepeats \articulate
    \new PianoStaff <<
      \new Staff = "upper" \LessonIVUpper
      \new Staff = "lower" \LessonIVLower
    >>
    \midi {  }
  }
}
