\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-theme.ily"

% LESSON XXIII. German Hymn, with Variations by Pleyel.

\book {   \bookOutputName "clementi-op42-les23-pleyel-theme"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIIIUpperA
		    \new Staff = "lower" \LessonXXIIILowerA
	  >>
	  \midi { }
  }
}
