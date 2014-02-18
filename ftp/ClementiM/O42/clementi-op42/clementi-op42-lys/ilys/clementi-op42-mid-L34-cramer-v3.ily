\version "2.16.1"
\include "clementi-op42-mus-L34-cramer-v3.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 3)

\book {   \bookOutputName "clementi-op42-les34-cramer-v3"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIVUpperD
		    \new Staff = "lower" \LessonXXXIVLowerD
	  >>
	  \midi { }
  }
}
