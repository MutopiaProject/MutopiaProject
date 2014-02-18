\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L30-scarlatti.ily"

% LESSON XXX. Minuetto by Scarlatti.

\book {   \bookOutputName "clementi-op42-les30-scarlatti-minuett"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXUpper
		    \new Staff = "lower" \LessonXXXLower
	  >>
	  \midi { }
  }
}
