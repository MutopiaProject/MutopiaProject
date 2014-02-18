\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L31-air.ily"

% LESSON XXXI. Lindor - an Air.

\book {   \bookOutputName "clementi-op42-les31-air-besmaj"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIUpper
		    \new Staff = "lower" \LessonXXXILower
	  >>
	  \midi { }
  }
}
