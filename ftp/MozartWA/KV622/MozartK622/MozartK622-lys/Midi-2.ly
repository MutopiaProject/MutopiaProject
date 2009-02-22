\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"   


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mvt2/Fl1-2.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mvt2/Fl2-2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'midi \include "Mvt2/Bn1-2.lyp"}
            \relative c {\keepWithTag #'midi \include "Mvt2/Bn2-2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c d {\keepWithTag #'midi \include "Mvt2/C1-2.lyp"}
            \relative c'' \transpose c d {\keepWithTag #'midi \include "Mvt2/C2-2.lyp"}
      }
			\new Staff {
         \set Staff.midiInstrument = "violin"
         \partcombine 
           \relative c'' {\keepWithTag #'midi \include "Mvt2/V1-2.lyp"}
           \relative c'' {\keepWithTag #'midi \include "Mvt2/V2-2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "viola"
				 \keepWithTag #'midi 
         \include "Mvt2/A-2.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
         \keepWithTag #'midi 
				 \include "Mvt2/Vc-2.lyp"
			}
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \keepWithTag #'midi 
				 \include "Mvt2/Cb-2.lyp"
      }
   >>

\midi { }
}
