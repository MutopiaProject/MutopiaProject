\version "2.16.1"
\include "clementi-op42-mus-L49-corelli.ily"

% LESSON XLIX. Gavotta by Corelli.

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLVIIIUpper }
	  	  \new Staff = "lower" { \global \LessonXLVIIILower }
	  >>
	  \layout { }
}
