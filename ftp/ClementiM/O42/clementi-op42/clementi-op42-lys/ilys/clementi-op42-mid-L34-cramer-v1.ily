\version "2.16.1"
\include "clementi-op42-mus-L34-cramer-v1.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 1)

\book {   \bookOutputName "clementi-op42-les34-cramer-v1"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIVUpperB
		    \new Staff = "lower" \LessonXXXIVLowerB
	  >>
	  \midi { }
  }
}
