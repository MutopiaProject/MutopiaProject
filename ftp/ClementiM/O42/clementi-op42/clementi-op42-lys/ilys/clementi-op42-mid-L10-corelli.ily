\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L10-corelli.ily"

% LESSON X. Sarabanda by Corelli.

\book {   \bookOutputName "clementi-op42-les10-corelli-sarab"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
	    \new Staff = "upper" \LessonXUpper
	    \new Staff = "lower" \LessonXLower
	  >>
	\midi { }
  }
}
