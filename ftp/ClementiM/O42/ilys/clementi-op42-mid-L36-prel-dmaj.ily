\version "2.16.1"
\include "clementi-op42-mus-L36-prel-dmaj.ily"

% LESSON XXXVI. Prelude in D Major.

\book {   \bookOutputName "clementi-op42-les36-prel-dmaj"
  \score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVIUpperA
		    \new Staff = "lower" \LessonXXXVILowerA
	  >>
	  \midi { }
  }
}
