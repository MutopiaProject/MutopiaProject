\version "2.16.1"
\include "clementi-op42-mus-L40-corelli.ily"

% LESSON XL. Allegro by Corelli.

\book {   \bookOutputName "clementi-op42-les40-corelli-alleg"
  \score {
	\unfoldRepeats 
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLUpper
		    \new Staff = "lower" \LessonXLLower
	  >>
	  \midi { }
  }
}
