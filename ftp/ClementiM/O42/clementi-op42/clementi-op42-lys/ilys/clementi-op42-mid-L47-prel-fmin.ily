\version "2.16.1"
\include "clementi-op42-mus-L47-prel-fmin.ily"

% LESSON XLVII. Prelude in F minor.

\book {   \bookOutputName "clementi-op42-les47-prel-fmin"
  \score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLVIIUpperPrel }
	  	  \new Staff = "lower" { \global \LessonXLVIILowerPrel }
	  >>
	  \midi { }
  }
}
