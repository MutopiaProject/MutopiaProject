\version "2.16.1"
\include "clementi-op42-mus-L47-couperin.ily"

% LESSON XLVII.  Allegretto by Couperin.

\book {   \bookOutputName "clementi-op42-les47-couperin-alleg"
  \score {
	\unfoldRepeats %\articulate  % - issues          
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIIUpper
		    \new Staff = "lower" \LessonXLVIILower
	  >>
	  \midi { }
  }
}
