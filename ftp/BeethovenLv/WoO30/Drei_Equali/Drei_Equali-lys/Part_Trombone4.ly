\version "2.14.2"

\include "Definitions.lyi" 

instrument = "Trombone 4"
staffInstrument = "Trom 4"
useClef = {\clef bass}

\include "Notes_Trombone4_Movement1.lyi"
notesMvtI = \TromFourMvtOne

\include "Notes_Trombone4_Movement2.lyi"
notesMvtII = \TromFourMvtTwo

\include "Notes_Trombone4_Movement3.lyi"
notesMvtIII = \TromFourMvtThree

\include "MakePart.lyi"
