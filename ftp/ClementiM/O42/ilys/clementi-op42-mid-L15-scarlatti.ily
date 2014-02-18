\version "2.16.1"
%\include "articulate.ly"  %--articulate script generates MIDI errors and misalignemnt in sound output (v2.16.1)- disabled
\include "clementi-op42-mus-L15-scarlatti.ily"

% LESSON XV. Larghetto by Scarlatti.

\book {   \bookOutputName "clementi-op42-les15-scarlatti-lrghetto"
  \score { % LESSON XV: Largo de Scarlatti MIDI
    \unfoldRepeats %\articulate  
    \new PianoStaff <<
       \new Staff = "upper" \LessonXVUpperB
       \new Staff = "lower" \LessonXVLowerB
     >>
    \midi { }
  }
}
