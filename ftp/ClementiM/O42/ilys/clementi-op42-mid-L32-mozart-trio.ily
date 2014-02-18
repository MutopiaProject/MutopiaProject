\version "2.16.1"
\include "clementi-op42-mus-L32-mozart-trio.ily"

% LESSON XXXII.  Minuet and Trio by Mozart. TRIO

\book {   \bookOutputName "clementi-op42-les32-mozart-trio"
  \score {
	  \new PianoStaff <<
		\unfoldRepeats
		    \new Staff = "upper" \LessonXXXIIUpperB
		\unfoldRepeats
		    \new Staff = "lower" \LessonXXXIILowerB
	  >>
	  \midi { }
  }
}
