\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L19-triste-raison.ily"

% LESSON XIX. Triste Raison.

\book {   \bookOutputName "clementi-op42-les19-triste-raison"
  \score {
    \unfoldRepeats \articulate
    \new PianoStaff <<
      \new Staff = "upper" \LessonXIXUpperMIDI
      \new Staff = "lower" \LessonXIXLower
    >>
    \midi { }
  }
}
