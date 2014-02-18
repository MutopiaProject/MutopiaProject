\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L34-cramer-theme.ily"


% LESSON XXXIV. Andante with Variations by Cramer. (ANDANTE)

\book {   \bookOutputName "clementi-op42-les34-cramer-theme"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIVUpperA
		    \new Staff = "lower" \LessonXXXIVLowerA
	  >>
	  \midi { }
  }
}
