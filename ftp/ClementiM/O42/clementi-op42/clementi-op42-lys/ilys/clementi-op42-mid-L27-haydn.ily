\version "2.16.1"
\include "clementi-op42-mus-L27-haydn.ily"

% LESSON XXVII. God Save the Emperor. Composed by Dr. Haydn.

\book {   \bookOutputName "clementi-op42-les27-haydn-adag"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXVIIUpper
		    \new Staff = "lower" \LessonXXVIILower
	  >>
	  \midi { }
  }
}
