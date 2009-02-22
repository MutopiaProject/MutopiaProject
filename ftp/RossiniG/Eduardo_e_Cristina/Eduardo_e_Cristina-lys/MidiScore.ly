\version "2.12.1"
\include "Fonctions.lyp"                     
\include "Global.lyp"   

\score {
  \new StaffGroup 
	<<
      \new Staff {
         \set Staff.midiInstrument = "piccolo"
            \relative c'' {\keepWithTag #'midi \include "Mus/Pic.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "flute"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mus/Fl1.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mus/Fl2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "oboe"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mus/Hb1.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mus/Hb2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "clarinet"
         \partcombine 
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mus/Cl1.lyp"}
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mus/Cl2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "bassoon"
         \partcombine 
            \relative c {\keepWithTag #'midi \include "Mus/Bn1.lyp"}
            \relative c {\keepWithTag #'midi \include "Mus/Bn2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "french horn"
         \partcombine 
            \relative c'' \transpose c d {\keepWithTag #'midi \include "Mus/C1.lyp"}
            \relative c'' \transpose c d {\keepWithTag #'midi \include "Mus/C2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "trumpet"
         \partcombine 
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mus/Tp1.lyp"}
            \relative c'' \transpose c a {\keepWithTag #'midi \include "Mus/Tp2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "trombone"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mus/Tb1.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mus/Tb2.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "trombone"
            \relative c'' {\keepWithTag #'midi \include "Mus/Tb3.lyp"}
      }     
      \new Staff {
         \set Staff.midiInstrument = "timpani"
				 \keepWithTag #'midi 
            \include "Mus/Ti.lyp"
      }    
			 \new DrumStaff {
         \partcombine 
						\keepWithTag #'midi \include "Mus/Tamb.lyp"
						\keepWithTag #'midi \include "Mus/GC.lyp"
      }    
         \new Staff {
         \set Staff.midiInstrument = "violin"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mus/V1.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mus/V2.lyp"}
      }
      \new Staff {
         \set Staff.midiInstrument = "viola"
				 \keepWithTag #'midi 
         \include "Mus/A.lyp"
      }
      \new Staff {
         \set Staff.midiInstrument = "cello"
         \partcombine 
            \relative c'' {\keepWithTag #'midi \include "Mus/Vc.lyp"}
            \relative c'' {\keepWithTag #'midi \include "Mus/Cb.lyp"}
      }
  >>
\midi { }
}