\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L38-handel.ily"

% LESSON XXXVIII. March in the Occasional Oratorio, by Handel.

\book {   \bookOutputName "clementi-op42-les38-handel-march"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff   <<
		    \new Staff = "upper" \LessonXXXVIIIUpperA
		    \new Staff = "lower" \LessonXXXVIIILowerA
	  >>
	  \midi { }
  }
}
