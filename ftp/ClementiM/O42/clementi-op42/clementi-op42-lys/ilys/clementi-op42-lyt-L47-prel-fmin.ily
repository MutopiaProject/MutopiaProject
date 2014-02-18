\version "2.16.1"
\include "clementi-op42-mus-L47-prel-fmin.ily"

% LESSON XLVII. Prelude in F minor.

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLVIIUpperPrel }
	  	  \new Staff = "lower" { \global \LessonXLVIILowerPrel }
	  >>
	  \layout { }
}
