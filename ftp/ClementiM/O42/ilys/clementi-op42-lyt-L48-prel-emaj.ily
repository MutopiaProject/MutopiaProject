\version "2.16.1"
\include "clementi-op42-mus-L48-prel-emaj.ily"

% LESSON XLVIII. Prelude in F minor.

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonXLVIIIUpperPrel }
	  	  \new Staff = "lower" { \global \LessonXLVIIILowerPrel }
	  >>
	  \layout { }
}
