\version "2.16.0"       %N°mesure = N°ligne - 10


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\include "Hautbois1_2.ly"}
            \relative c'' {\include "Hautbois2_2.ly"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c ees {\include "Cor1_2.ly"}
            \relative c'' \transpose c ees {\include "Cor2_2.ly"}
      }
       \new GrandStaff <<
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon1_2.ly"
         }
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon2_2.ly"
         }
      >>
      \new Staff {
         \set Staff.midiInstrument = "viola"
         \include "Alto_2.ly"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
        \include "Basse_2.ly"
      }
   >>

\midi {
     \tempo 2 = 60
     }
}
