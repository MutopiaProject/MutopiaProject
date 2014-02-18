\version "2.16.1"
\include "clementi-op42-mus-L32-mozart-trio.ily"

% LESSON XXXII.  Minuet and Trio by Mozart. TRIO

\score {
	  \new PianoStaff <<
		  \set PianoStaff.instrumentName = "Trio"
		    \new Staff = "upper" \LessonXXXIIUpperB
		    \new Staff = "lower" \LessonXXXIILowerB
	  >>
	  \layout { }
}
