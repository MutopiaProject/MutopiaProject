% This file creates the part for violin 1.
\version "2.19.80"

\header {
    \include "../header.ly"
    filename = "violin1.ly"
    instrument = "Violin I"
    head = "Violin I"
}

\paper {
 first-page-number = 2
}

#(set-global-staff-size 16)
\include "../marks.ly"
\include "../violin1_1.ly"
\include "../violin1_2.ly"
\include "../violin1_3.ly"
\include "../violin1_4.ly"


\book {
  % 1st movement
  \score {
     \context Voice = ViolinI {
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \FirstMovementMarks \FirstViolinFirstMovementTiming \FirstViolinFirstMovement  >>
    }
  }
  % 2nd movement
  \score {
     \context Voice = ViolinI {
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \SecondMovementMarks \FirstViolinSecondMovementTiming \FirstViolinSecondMovement  >>
    }
  }
  % 3rd movement
  \score {
     \context Voice = ViolinI {
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Staff.midiInstrument="violin"
      \set Score.skipBars = ##t
      << \ThirdMovementMarks \FirstViolinThirdMovementTiming \FirstViolinThirdMovement  >>
    }
  }
  % 4th movement
  \score {
     \context Voice = ViolinI {
      \override Score.BarNumber.padding = #2
      \override Score.RehearsalMark.padding = #2
      \set Staff.midiInstrument="violin"
      \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      \set Score.skipBars = ##t
      << \FourthMovementMarks \FirstViolinFourthMovementTiming \FirstViolinFourthMovement  >>
    }
  }
}
