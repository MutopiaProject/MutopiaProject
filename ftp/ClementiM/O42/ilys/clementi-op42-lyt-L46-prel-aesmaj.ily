\version "2.16.1"
\include "clementi-op42-mus-L46-prel-aesmaj.ily"

% LESSON XLVI. Prelude in A flat, Major.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIUpperPrel
		    \new Staff = "lower" \LessonXLVILowerPrel
	  >>
	  \layout { }
}
