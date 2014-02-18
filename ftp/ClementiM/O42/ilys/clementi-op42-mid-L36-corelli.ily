\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L36-corelli.ily"

% LESSON XXXVI. Gavotta, by Corelli.

\book {   \bookOutputName "clementi-op42-les36-corelli-gavotta"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVIUpperB
		    \new Staff = "lower" \LessonXXXVILowerB
	  >>
	  \midi { }
  }
}
