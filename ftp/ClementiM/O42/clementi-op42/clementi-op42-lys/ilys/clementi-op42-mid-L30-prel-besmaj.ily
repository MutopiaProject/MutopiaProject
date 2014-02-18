\version "2.16.1"
\include "clementi-op42-mus-L30-prel-besmaj.ily"

% LESSON XXX. Prelude in B flat, Major.

\book {   \bookOutputName "clementi-op42-les30-prel-besmaj"
  \score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXUpperPrel
		    \new Staff = "lower" \LessonXXXLowerPrel
	  >>
	  \midi { }
  }
}
