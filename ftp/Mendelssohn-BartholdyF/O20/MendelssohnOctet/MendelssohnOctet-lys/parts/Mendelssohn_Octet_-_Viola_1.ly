% This file creates the part for viola 1.
\version "2.19.80"

\header {
    \include "../header.ly"
    filename = "viola_1.ly"
    instrument = "Viola I"
    head = "Viola I"
}

\paper {
  first-page-number = 2
}

#(set-global-staff-size 16)
\include "../marks.ly"
\include "../viola1_1.ly"
\include "../viola1_2.ly"
\include "../viola1_3.ly"
\include "../viola1_4.ly"

\book {
  % 1st movement
  \score {
     \context Voice = ViolaI {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \FirstViolaFirstMovementTiming \FirstViolaFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = ViolaI {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \FirstViolaSecondMovementTiming \FirstViolaSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = ViolaI {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \FirstViolaThirdMovementTiming \FirstViolaThirdMovement  >>
    }
  }

  % 4th movement
  \score {
     \context Voice = ViolaI {
      \set Staff.midiInstrument="viola"
      \set Score.skipBars = ##t
      << \FourthMovementMarks \FirstViolaFourthMovementTiming \FirstViolaFourthMovement  >>
    }
  }
}
