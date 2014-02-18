\version "2.16.1"
\include "clementi-op42-mus-L25-handel.ily"

% LESSON XXV.  Allegro, by Handel.

\book {   \bookOutputName "clementi-op42-les25-handel-alleg"
  \score {
	\unfoldRepeats
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXVUpper
		    \new Staff = "lower" \LessonXXVLower
	  >>
	  \midi { }
  }
}
