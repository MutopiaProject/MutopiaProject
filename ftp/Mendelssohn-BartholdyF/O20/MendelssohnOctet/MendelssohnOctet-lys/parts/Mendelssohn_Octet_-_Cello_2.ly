% This file creates the part for cello 2.
\version "2.19.80"

\header {
    \include "../header.ly"
    instrument = "Cello II"
    head = "Cello II"
}

\paper {
 first-page-number = 2
}
#(set-global-staff-size 16)
\include "../marks.ly"
\include "../cello2_1.ly"
\include "../cello2_2.ly"
\include "../cello2_3.ly"
\include "../cello2_4.ly"


\book {
  % 1st movement
  \score {
     \context Voice = CelloII {
      \set Staff.midiInstrument="cello"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \SecondCelloFirstMovementTiming \SecondCelloFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = CelloII {
      \set Staff.midiInstrument="cello"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \SecondCelloSecondMovementTiming \SecondCelloSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = CelloII {
      \set Staff.midiInstrument="cello"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \SecondCelloThirdMovementTiming \SecondCelloThirdMovement  >>
    }
  }
  % 4th movement
  \score {
     \context Voice = CelloII {
      \set Staff.midiInstrument="cello"
      \set Score.skipBars = ##t
      << \FourthMovementMarks \SecondCelloFourthMovementTiming \SecondCelloFourthMovement  >>
    }
  }
}
