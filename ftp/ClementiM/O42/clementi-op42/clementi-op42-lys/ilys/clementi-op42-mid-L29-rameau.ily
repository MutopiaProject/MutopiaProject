\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L29-rameau.ily"

% LESSON XXIX. Tambourin by Rameau.

\book {   \bookOutputName "clementi-op42-les29-rameau-tambourin"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXIXUpper
		    \new Staff = "lower" \LessonXXIXLower
	  >>
	  \midi { }
  }
}
