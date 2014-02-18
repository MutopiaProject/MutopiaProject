\version "2.16.1"
\include "clementi-op42-mus-L46-couperin.ily"

% LESSON XLVI.  March by Couperin.

\book {   \bookOutputName "clementi-op42-les46-couperin-march"
  \score {
	\unfoldRepeats %\articulate        ---------------------- articulate script challenged here  
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIUpper
		    \new Staff = "lower" \LessonXLVILower
	  >>
	  \midi { }
  }
}
