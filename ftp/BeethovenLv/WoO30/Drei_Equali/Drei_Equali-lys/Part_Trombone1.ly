\version "2.14.2"

\include "Definitions.lyi" 

instrument = "Trombone 1"
staffInstrument = "Trom 1"
useClef = {\clef tenor}


\include "Notes_Trombone1_Movement1.lyi"
notesMvtI = \TromOneMvtOne

\include "Notes_Trombone1_Movement2.lyi"
notesMvtII = \TromOneMvtTwo

\include "Notes_Trombone1_Movement3.lyi"
notesMvtIII = \TromOneMvtThree

\include "MakePart.lyi"
