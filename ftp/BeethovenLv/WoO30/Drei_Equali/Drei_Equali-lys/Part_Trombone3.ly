\version "2.14.2"

\include "Definitions.lyi" 

instrument = "Trombone 3"
staffInstrument = "Trom 3"
useClef = {\clef tenor}

\include "Notes_Trombone3_Movement1.lyi"
notesMvtI = \TromThreeMvtOne

\include "Notes_Trombone3_Movement2.lyi"
notesMvtII = \TromThreeMvtTwo

\include "Notes_Trombone3_Movement3.lyi"
notesMvtIII = \TromThreeMvtThree

\include "MakePart.lyi"
