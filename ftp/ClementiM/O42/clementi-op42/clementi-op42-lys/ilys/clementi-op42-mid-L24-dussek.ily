\version "2.16.1"
\include "clementi-op42-mus-L24-dussek.ily"

% LESSON XXIV.  Andantino, ma Moderato e con espressione, by Dussek.

\book {   \bookOutputName "clementi-op42-les24-dussek-and"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIVUpper
		    \new Staff = "lower" \LessonXXIVLower
	  >>
	  \midi { }
  }
}
