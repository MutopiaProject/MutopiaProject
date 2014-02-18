\version "2.16.1"
\include "clementi-op42-mus-L35-prel-gmin.ily"

% LESSON XXXV. Prelude in G Minor.

\book {   \bookOutputName "clementi-op42-les35-prel-gmin"
  \score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVUpperA
		    \new Staff = "lower" \LessonXXXVLowerA
	  >>
	  \midi { }
  }
}
