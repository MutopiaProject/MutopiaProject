\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 1
\include "Fonctions.lyp"                     
\include "Global.lyp"   

\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Fl2-1.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/Hb1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Hb2-1.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "clarinet"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt1/Cl1-1.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt1/Cl2-1.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt1/Bn1-1.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt1/Bn2-1.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c bes {\keepWithTag #'score \include "Mvt1/C1-1.lyp"}
            \relative c'' \transpose c bes {\keepWithTag #'score \include "Mvt1/C2-1.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "timpani"
			\keepWithTag #'score \include "Mvt1/Ti-1.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt1/V1-1.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt1/V2-1.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "viola"
			\keepWithTag #'score \include "Mvt1/A-1.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
			\keepWithTag #'score \include "Mvt1/Vc-1.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
			\keepWithTag #'score \include "Mvt1/Cb-1.lyp"
      }
   >>

\midi {     \context { 
       \Score
       tempoWholesPerMinute = #(ly:make-moment 72 2)
       }
 }
}
