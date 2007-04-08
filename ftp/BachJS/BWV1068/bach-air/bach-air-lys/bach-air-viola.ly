\version "2.7.40"

\include "bach-air-notes.ly"

\book {
   \score {
      \context Staff {
         \set Staff.midiInstrument = "viola"
         \set Staff.instrument = "Viola"
         \clef "alto"
         <<
            {\viola}
            {\global}
         >>
      }
      \layout{}
      \midi { \tempo 4=30 }
   }
}

