\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v3.ily"

% LESSON XXIII. German Hymn - Variation 3, by Pleyel.

\book {   \bookOutputName "clementi-op42-les23-pleyel-v3"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIIIUpperD
		    \new Staff = "lower" \LessonXXIIILowerD
	  >>
	  \midi { }
  }
}
