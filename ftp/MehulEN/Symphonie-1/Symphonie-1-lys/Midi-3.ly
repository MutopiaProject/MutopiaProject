\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 3
\include "Fonctions.lyp"                     
\include "Global.lyp"   

\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Fl1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Fl2-3.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Hb1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Hb2-3.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "clarinet"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt3/Cl1-3.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt3/Cl2-3.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt3/Bn1-3.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt3/Bn2-3.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c g {\keepWithTag #'score \include "Mvt3/C1-3.lyp"}
            \relative c'' \transpose c g {\keepWithTag #'score \include "Mvt3/C2-3.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "timpani"
			\keepWithTag #'score \include "Mvt3/Ti-3.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt3/V1-3.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt3/V2-3.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "viola"
			\keepWithTag #'score \include "Mvt3/A-3.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
			\keepWithTag #'score \include "Mvt3/Vc-3.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
			\keepWithTag #'score \include "Mvt3/Cb-3.lyp"
      }
   >>

\midi {     \context { 
       \Score
       tempoWholesPerMinute = #(ly:make-moment 180 4)
       }
 }
}
