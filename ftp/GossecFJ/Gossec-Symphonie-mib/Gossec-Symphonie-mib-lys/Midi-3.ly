\version "2.16.0"       %N°mesure = N°ligne - 10


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\include "Hautbois1_3.ly"}
            \relative c'' {\include "Hautbois2_3.ly"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c ees {\include "Cor1_3.ly"}
            \relative c'' \transpose c ees {\include "Cor2_3.ly"}
      }
       \new GrandStaff <<
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon1_3.ly"
         }
         \new Staff {
         \set Staff.midiInstrument = "violin"
           \include "Violon2_3.ly"
         }
      >>
      \new Staff {
         \set Staff.midiInstrument = "viola"
         \include "Alto_3.ly"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
        \include "Basse_3.ly"
      }
   >>

\midi {
         % Tempos in individual _3 parts (2 tempos in this movement)
 }
}
