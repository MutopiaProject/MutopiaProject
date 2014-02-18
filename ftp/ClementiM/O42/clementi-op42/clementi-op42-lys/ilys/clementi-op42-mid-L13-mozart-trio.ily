\version "2.16.1"
\include "clementi-op42-mus-L13-mozart-trio.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  TRIO

\book {   \bookOutputName "clementi-op42-les13-mozart-trio"
  \score {
	\unfoldRepeats %\articulate  ---- fail!
	  \new PianoStaff <<
	    \new Staff = "upper" \LessonXIIIUpperB
	    \new Staff = "lower" \LessonXIIILowerB
	  >>
	  \midi { }
  }
}
