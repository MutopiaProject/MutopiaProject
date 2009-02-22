\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"   


\score {
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mvt3/Fl1-3.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mvt3/Fl2-3.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'midi \include "Mvt3/Bn1-3.lyp"}
            \relative c {\keepWithTag #'midi \include "Mvt3/Bn2-3.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mvt3/C1-3.lyp"}
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mvt3/C2-3.lyp"}
      }
			\new Staff {
         \set Staff.midiInstrument = "violin"
         \partcombine 
           \relative c'' {\keepWithTag #'midi \include "Mvt3/V1-3.lyp"}
           \relative c'' {\keepWithTag #'midi \include "Mvt3/V2-3.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "viola"
				 \keepWithTag #'midi 
         \include "Mvt3/A-3.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
         \keepWithTag #'midi 
				 \include "Mvt3/Vc-3.lyp"
			}
      \new Staff {
         \set Staff.midiInstrument = "contrabass"
         \keepWithTag #'midi 
				 \include "Mvt3/Cb-3.lyp"
      }
   >>

\midi { }
}
