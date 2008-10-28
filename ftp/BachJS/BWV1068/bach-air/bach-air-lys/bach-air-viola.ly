\version "2.11.62"

\include "bach-air-notes.ly"

\paper {
  ragged-last-bottom = ##f
}

\book {
   \score {
      \context Staff {
         \set Staff.midiInstrument = "viola"
         \set Staff.instrumentName = "Viola"
         \clef "alto"
         <<
            {\viola}
            {\global}
         >>
      }
      \layout{}
      
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 30 4)
      }
    }
  }
}

