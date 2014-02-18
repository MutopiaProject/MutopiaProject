\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L33-handel.ily"

% LESSON XXXIII. Gavotta in Otho, by Handel.

\book {   \bookOutputName "clementi-op42-les33-handel-gavotta"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIIIUpper
		    \new Staff = "lower" \LessonXXXIIILower
	  >>
	  \midi { }
  }
}
