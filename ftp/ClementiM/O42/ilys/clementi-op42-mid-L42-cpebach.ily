\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L42-cpebach.ily"

%---------LESSON 42 - CPE Bach Rondo

\book {   \bookOutputName "clementi-op42-les42-cpebach-rondo"
  \score { {
	\unfoldRepeats \articulate
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "upper" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIIUpperA
      \context Voice=Two \LessonXLIIUpperB
    >>
    \context Staff = "lower" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIILowerA
      \context Voice=Two \LessonXLIILowerB
      >>
    >>
  }
  \midi {
    \tempo 4 = 77
    }
  }
}

