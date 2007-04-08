\version "2.7.40"

\include "bach-air-notes.ly"

\book {
   \score {
      \context Staff {
         \set Staff.midiInstrument = "cello"
         \set Staff.instrument = "Continuo"
         \clef "bass"
         <<
            {\continuo}
            {\global}
         >>
      }
      \layout{}
      \midi { \tempo 4=30 }
   }
}

