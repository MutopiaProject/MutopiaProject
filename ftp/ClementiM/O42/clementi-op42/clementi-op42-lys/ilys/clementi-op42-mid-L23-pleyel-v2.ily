\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v2.ily"

% LESSON XXIII. German Hymn - Variation 2, by Pleyel.

\book {   \bookOutputName "clementi-op42-les23-pleyel-v2"
  \score { % LESSON XXIII: Variat. II
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIIIUpperC
		    \new Staff = "lower" \LessonXXIIILowerC
	  >>
	  \midi { }
  }
}
