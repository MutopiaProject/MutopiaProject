% This file creates the part for violin 3.
\version "2.19.80"

\header {
    \include "../header.ly"
    filename = "violin3.ly"
    instrument = "Violin III"
    head = "Violin III"
}

\paper {
  first-page-number = 2
}
#(set-global-staff-size 16)
\include "../marks.ly"
\include "../violin3_1.ly"
\include "../violin3_2.ly"
\include "../violin3_3.ly"
\include "../violin3_4.ly"


\book {
  % 1st movement
  \score {
     \context Voice = ViolinIII {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \ThirdViolinFirstMovementTiming \ThirdViolinFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = ViolinIII {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \ThirdViolinSecondMovementTiming \ThirdViolinSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = ViolinIII {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \ThirdViolinThirdMovementTiming \ThirdViolinThirdMovement  >>
    }
  }
  % 4th movement
  \score {
     \context Voice = ViolinIII {
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \FourthMovementMarks \ThirdViolinFourthMovementTiming \ThirdViolinFourthMovement  >>
    }
  }
}
