% This file creates the part for violin 4.
\version "2.19.80"

\header {
    \include "../header.ly"
    filename = "violin4.ly"
    instrument = "Violin IV"
    head = "Violin IV"
}

\paper {
  first-page-number = 2
}
#(set-global-staff-size 16)
\include "../marks.ly"
\include "../violin4_1.ly"
\include "../violin4_2.ly"
\include "../violin4_3.ly"
\include "../violin4_4.ly"


\book {
  % 1st movement
  \score {
     \context Voice = ViolinIV {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \FourthViolinFirstMovementTiming \FourthViolinFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = ViolinIV {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \FourthViolinSecondMovementTiming \FourthViolinSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = ViolinIV {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \FourthViolinThirdMovementTiming \FourthViolinThirdMovement  >>
    }
  }
  % 4th movement
  \score {
     \context Voice = ViolinIV {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \FourthMovementMarks \FourthViolinFourthMovementTiming \FourthViolinFourthMovement  >>
    }
  }
}
