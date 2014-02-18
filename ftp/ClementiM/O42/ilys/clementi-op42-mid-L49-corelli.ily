\version "2.16.1"
\include "clementi-op42-mus-L49-corelli.ily"

% LESSON XLIX. Gavotta by Corelli.

\book {   \bookOutputName "clementi-op42-les49-corelli-gavotta"
  \score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLVIIIUpper }
	  	  \new Staff = "lower" { \global \LessonXLVIIILower }
	  >>
	  \midi { }
  }
}
