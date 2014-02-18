\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L08-handel.ily"

% LESSON VIII: Air, in Judas Maccabeus, by Handel

\book {   \bookOutputName "clementi-op42-les08-handel-air"
 \score {
   \unfoldRepeats \articulate
   \new PianoStaff <<
     \new Staff = "upper" \LessonVIIIUpper
     \new Staff = "lower" \LessonVIIILower
    >>
    \midi { }
  }
}
