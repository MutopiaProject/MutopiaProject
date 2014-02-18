\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v1.ily"

% LESSON XXIII. German Hymn - Variation 1, by Pleyel.

\book {   \bookOutputName "clementi-op42-les23-pleyel-v1"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIIIUpperB
		    \new Staff = "lower" \LessonXXIIILowerB
	  >>
	  \midi { }
  }
}
