\version "2.12.1"				%%% Méhul - Symphonie 1 - mvt 2
\include "Fonctions.lyp"                     
\include "Global.lyp"   

\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt2/Fl1-2.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt2/Fl2-2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt2/Hb1-2.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt2/Hb2-2.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "clarinet"
         \partcombine 
            \relative c'' {\keepWithTag #'score \include "Mvt2/Cl1-2.lyp"}
            \relative c'' {\keepWithTag #'score \include "Mvt2/Cl2-2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'score \include "Mvt2/Bn1-2.lyp"}
            \relative c {\keepWithTag #'score \include "Mvt2/Bn2-2.lyp"}
       }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c bes {\keepWithTag #'score \include "Mvt2/C1-2.lyp"}
            \relative c'' \transpose c bes {\keepWithTag #'score \include "Mvt2/C2-2.lyp"}
      }
% timbales: tacet
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt2/V1-2.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "violin"
			\keepWithTag #'score \include "Mvt2/V2-2.lyp"
         }
      \new Staff {
         \set Staff.midiInstrument = "viola"
			\keepWithTag #'score \include "Mvt2/A-2.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
			\keepWithTag #'score \include "Mvt2/Vc-2.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
			\keepWithTag #'score \include "Mvt2/Cb-2.lyp"
      }
   >>

\midi {     \context { 
       \Score
       tempoWholesPerMinute = #(ly:make-moment 60 4)
       }
 }
}
