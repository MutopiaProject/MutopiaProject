% This file creates the part for viola 2.
\version "2.19.80"

\header {
    \include "../header.ly"
    filename = "viola_2.ly"
    instrument = "Viola II"
    head = "Viola II"
}

\paper {
  first-page-number = 2
}

#(set-global-staff-size 16)
\include "../marks.ly"
\include "../viola2_1.ly"
\include "../viola2_2.ly"
\include "../viola2_3.ly"
\include "../viola2_4.ly"


\book {
 % 1st movement
  \score {
     \context Voice = ViolaII {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \SecondViolaFirstMovementTiming \SecondViolaFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = ViolaII {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \SecondViolaSecondMovementTiming \SecondViolaSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = ViolaII {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \SecondViolaThirdMovementTiming \SecondViolaThirdMovement  >>
    }
  }
  % 4th movement
  \score {
     \context Voice = ViolaII {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \FourthMovementMarks \SecondViolaFourthMovementTiming \SecondViolaFourthMovement  >>
    }
  }
}
