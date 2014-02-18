\version "2.16.1"
\include "clementi-op42-mus-L29-prel-emin.ily"

% LESSON XXIX. Prelude in E minor.

\book {   \bookOutputName "clementi-op42-les29-prel-emin"
  \score { 
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIXUpperPrel
		    \new Staff = "lower" \LessonXXIXLowerPrel
	  >>
	  \midi { }
  }
}
