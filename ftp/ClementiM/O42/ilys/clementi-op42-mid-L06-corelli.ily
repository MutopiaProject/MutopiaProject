\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L06-corelli.ily"

% LESSON VI: Allegro by Corelli

\book {   \bookOutputName "clementi-op42-les06-corelli-alleg"
  \score {
	\unfoldRepeats \articulate
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVIUpper
	    \new Staff = "lower" \LessonVILower
	  >>
	  \midi { }
  }
}
