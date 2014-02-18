\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L35-scarlatti.ily"

% LESSON XXXV. Allegro by Scarlatti.

\book {   \bookOutputName "clementi-op42-les35-scarlatti-alleg"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVUpperB
		    \new Staff = "lower" \LessonXXXVLowerB
	  >>
	  \midi { }
  }
}
