\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L39-beethoven.ily"

% LESSON XXXIX. Waltz, by Beethoven.

\book {   \bookOutputName "clementi-op42-les39-beethoven-waltz"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIXUpperVoltaA
		    \new Staff = "lower" \LessonXXXIXLowerVoltaA
	  >>
	  \midi { }
  }
}
