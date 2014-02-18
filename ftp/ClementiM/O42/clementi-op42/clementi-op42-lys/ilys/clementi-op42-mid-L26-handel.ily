\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L26-handel.ily"

% LESSON XXVI. Minuet in Samson, by Handel.

\book {   \bookOutputName "clementi-op42-les26-handel-minuet"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
		    \new Staff = "upper"
		    {\LessonXXVIUpperA \LessonXXVIUpperB \LessonXXVIUpperAi \LessonXXVIUpperFINEbar}
		    \new Staff = "lower"
		    {\LessonXXVILowerA \LessonXXVILowerB \LessonXXVILowerAi \LessonXXVILowerFINEbar}
	  >>
	  \midi { }
  }
}
