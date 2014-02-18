\version "2.16.1"
\include "clementi-op42-mus-L29-prel-emin.ily"

% LESSON XXIX. Prelude in E minor.

\score { 
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIXUpperPrel
		    \new Staff = "lower" \LessonXXIXLowerPrel
	  >>
	  \layout { }
}
