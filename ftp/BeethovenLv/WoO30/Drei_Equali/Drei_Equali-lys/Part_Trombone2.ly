\version "2.14.2"

\include "Definitions.lyi" 

instrument = "Trombone 2"
staffInstrument = "Trom 2"
useClef = {\clef tenor}

\include "Notes_Trombone2_Movement1.lyi"
notesMvtI = \TromTwoMvtOne

\include "Notes_Trombone2_Movement2.lyi"
notesMvtII = \TromTwoMvtTwo

\include "Notes_Trombone2_Movement3.lyi"
notesMvtIII = \TromTwoMvtThree

\include "MakePart.lyi"
