\version "2.11.62"

\include "bach-air-notes.ly"

\paper {
  ragged-last-bottom = ##f
}

\book {
   \score {
      \context Staff {
         \set Staff.midiInstrument = "violin"
         \set Staff.instrumentName = "Violino II"
         \clef "treble"
         <<
            {\violintwo}
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

