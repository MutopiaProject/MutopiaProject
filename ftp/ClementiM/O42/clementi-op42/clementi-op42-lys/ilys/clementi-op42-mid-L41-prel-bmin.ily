\version "2.16.1"
\include "clementi-op42-mus-L41-prel-bmin.ily"

% LESSON XLI. Prelude in B Minor.

\book {   \bookOutputName "clementi-op42-les41-prel-bmin"
  \score {
	  \new PianoStaff  <<
		    \new Staff = "upper" \LessonXLIUpperA
		    \new Staff = "lower" \LessonXLILowerA
	  >>
	  \midi { }
  }
}
