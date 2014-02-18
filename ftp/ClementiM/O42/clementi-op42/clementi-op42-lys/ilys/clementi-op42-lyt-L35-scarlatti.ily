\version "2.16.1"
\include "clementi-op42-mus-L35-scarlatti.ily"

% LESSON XXXV. Allegro by Scarlatti.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVUpperB
		    \new Staff = "lower" \LessonXXXVLowerB
	  >>
	  \layout { 
	    system-count = #18
	  }
}
