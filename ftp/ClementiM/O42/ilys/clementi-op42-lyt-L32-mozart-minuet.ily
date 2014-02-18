\version "2.16.1"
\include "clementi-op42-mus-L32-mozart-minuet.ily"

% LESSON XXXII.  Minuet and Trio by Mozart.  MINUET

\score {
	  \new PianoStaff <<
	  	   \set PianoStaff.instrumentName = #"Minuet"
		    \new Staff = "upper" \LessonXXXIIUpperA
		    \new Staff = "lower" \LessonXXXIILowerA
	  >>
	  \layout { }
}
