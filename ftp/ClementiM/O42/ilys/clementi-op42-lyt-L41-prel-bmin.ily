\version "2.16.1"
\include "clementi-op42-mus-L41-prel-bmin.ily"

% LESSON XLI. Prelude in B Minor.

\score {
	  \new PianoStaff  <<
		    \new Staff = "upper" \LessonXLIUpperA
		    \new Staff = "lower" \LessonXLILowerA
	  >>
	  \layout { }
}
