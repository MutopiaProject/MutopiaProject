% This file creates the part for cello 1.
\version "2.19.80"

\header {
    \include "../header.ly"
    instrument = "Cello I"
    head = "Cello I"
}

\paper {
 first-page-number = 2
}
#(set-global-staff-size 16)
\include "../marks.ly"
\include "../cello1_1.ly"
\include "../cello1_2.ly"
\include "../cello1_3.ly"
\include "../cello1_4.ly"

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
