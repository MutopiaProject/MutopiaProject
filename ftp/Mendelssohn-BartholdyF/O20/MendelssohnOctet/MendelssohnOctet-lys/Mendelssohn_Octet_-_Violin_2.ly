% This file creates the part for violin 2.
\header {
    \include "header.ly"        
    filename = "violin2.ly"
    instrument = "Violin II"
    head = "Violin II"
}

\paper {
  firstpagenumber = 2
}
#(set-global-staff-size 16)
\include "marks.ly"
\include "violin2_1.ly"
\include "violin2_2.ly"
\include "violin2_3.ly"
\include "violin2_4.ly"
\version "2.6.4"


\book {
  % 1st movement
  \score {     
     \context Voice = ViolinII {
      \set Staff.midiInstrument="violin"      
      \set Score.skipBars = ##t      
      << \FirstMovementMarks \SecondViolinFirstMovementTiming \SecondViolinFirstMovement  >> 
    }
  }
  % 2nd movement
  \score {     
     \context Voice = ViolinII {
      \set Staff.midiInstrument="violin"      
      \set Score.skipBars = ##t      
      << \SecondMovementMarks \SecondViolinSecondMovementTiming \SecondViolinSecondMovement  >>       
    }
  }
  % 3rd movement
  \score {     
     \context Voice = ViolinII {
      \set Staff.midiInstrument="violin"      
      \set Score.skipBars = ##t      
      << \ThirdMovementMarks \SecondViolinThirdMovementTiming \SecondViolinThirdMovement  >>       
    }
  }  
  % 4th movement
  \score {          
     \context Voice = ViolinII {
      \set Staff.midiInstrument="violin"      
      \set Score.skipBars = ##t      
      << \FourthMovementMarks \SecondViolinFourthMovementTiming \SecondViolinFourthMovement  >>       
    }    
  }  
}
