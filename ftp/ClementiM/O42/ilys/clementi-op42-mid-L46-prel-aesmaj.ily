\version "2.16.1"
\include "clementi-op42-mus-L46-prel-aesmaj.ily"

% LESSON XLVI. Prelude in A flat, Major.

\book {   \bookOutputName "clementi-op42-les46-prel-aesmaj"
  \score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIUpperPrel
		    \new Staff = "lower" \LessonXLVILowerPrel
	  >>
	  \midi { }
  }
}
