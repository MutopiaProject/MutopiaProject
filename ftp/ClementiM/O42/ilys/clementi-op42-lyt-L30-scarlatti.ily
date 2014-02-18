\version "2.16.1"
\include "clementi-op42-mus-L30-scarlatti.ily"

% LESSON XXX. Minuetto by Scarlatti.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXUpper
		    \new Staff = "lower" \LessonXXXLower
	  >>
	  \layout {
	    system-count = #4
	  }
}
