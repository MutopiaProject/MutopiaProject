% This file creates the part for cello 1.
\header {
    \include "header.ly"            
    instrument = "Cello I"
    head = "Cello I"
}

\paper {
 firstpagenumber = 2
}
#(set-global-staff-size 16)
\include "marks.ly"
\include "cello1_1.ly"
\include "cello1_2.ly"
\include "cello1_3.ly"
\include "cello1_4.ly"
\version "2.6.4"


\book {
  % 1st movement
  \score {     
     \context Voice = CelloI {
      \set Staff.midiInstrument="cello"      
      \set Score.skipBars = ##t
      << \FirstMovementMarks \FirstCelloFirstMovementTiming \FirstCelloFirstMovement  >> 
    }
  }
  % 2nd movement
  \score {     
     \context Voice = CelloI {
      \set Staff.midiInstrument="cello"      
      \set Score.skipBars = ##t      
      << \SecondMovementMarks \FirstCelloSecondMovementTiming \FirstCelloSecondMovement  >>       
    }
  }
  % 3rd movement
  \score {     
     \context Voice = CelloI {
      \set Staff.midiInstrument="cello"      
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \FirstCelloThirdMovement \FirstCelloThirdMovementTiming >>       
    }
  }
  % 4th movement
  \score {     
     \context Voice = CelloI {
      \set Staff.midiInstrument="cello"      
      \set Score.skipBars = ##t
      << \FourthMovementMarks \FirstCelloFourthMovementTiming \FirstCelloFourthMovement  >>       
    }
  }
}
