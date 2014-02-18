\version "2.16.1"
\include "clementi-op42-mus-L28-haydn.ily"

% LESSON XXVIII. Rondo in the Gipsy stile, by Dr. Haydn.

\book {   \bookOutputName "clementi-op42-les28-haydn-rondo"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXVIIIUpper
		    \new Staff = "lower" \LessonXXVIIILower
	  >>
	  \midi { }
  }
}
