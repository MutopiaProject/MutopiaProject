\version "2.16.1"
\include "clementi-op42-mus-L42-prel-eesmaj.ily"

% LESSON XLII. Prelude in E flat Major.

\book {   \bookOutputName "clementi-op42-les42-prel-eesmaj"
  \score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLIIUpperPrel }
	  	  \new Staff = "lower" { \global \LessonXLIILowerPrel }
	  >>
	  \midi { }
  }
}
