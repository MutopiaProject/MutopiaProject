\version "2.16.0"       %N°mesure = N°ligne - 10


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\include "Hautbois1_1.ly"}
            \relative c'' {\include "Hautbois2_1.ly"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c ees {\include "Cor1_1.ly"}
            \relative c'' \transpose c ees {\include "Cor2_1.ly"}
      }
       \new GrandStaff <<
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon1_1.ly"
         }
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon2_1.ly"
         }
      >>
      \new Staff {
         \set Staff.midiInstrument = "viola"
         \include "Alto_1.ly"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
        \include "Basse_1.ly"
      }
   >>

\midi {
     \tempo 2 = 60
     }
}
