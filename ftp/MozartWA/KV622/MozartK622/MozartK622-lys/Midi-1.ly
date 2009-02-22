\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"   


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mvt1/Fl1-1.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mvt1/Fl2-1.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'midi \include "Mvt1/Bn1-1.lyp"}
            \relative c {\keepWithTag #'midi \include "Mvt1/Bn2-1.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mvt1/C1-1.lyp"}
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mvt1/C2-1.lyp"}
      }
			\new Staff {
         \set Staff.midiInstrument = "violin"
         \partcombine 
           \relative c'' {\keepWithTag #'midi \include "Mvt1/V1-1.lyp"}
           \relative c'' {\keepWithTag #'midi \include "Mvt1/V2-1.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "viola"
				 \keepWithTag #'midi 
         \include "Mvt1/A-1.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
         \keepWithTag #'midi 
				 \include "Mvt1/Vc-1.lyp"
			}
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \keepWithTag #'midi 
				 \include "Mvt1/Cb-1.lyp"
      }
   >>

\midi { }
}
