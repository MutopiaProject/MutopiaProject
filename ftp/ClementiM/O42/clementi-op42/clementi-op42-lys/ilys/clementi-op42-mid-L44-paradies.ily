\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L44-paradies.ily"

% LESSON XLIV. Andante Allegretto by Paradies.

\book {   \bookOutputName "clementi-op42-les44-paradies-and-alleg"
  \score {
	\unfoldRepeats  \articulate
	\new PianoStaff 
	<<
		\new Staff = "upper" 
	  	  	{ \clef treble \global \LessonXLIVsoprano }
	  	  \new Staff = "lower"
	  	  	{ \clef bass \global \LessonXLIVbass }
	  >>
	  \midi {
	  	  \tempo 4=90
	  }
  }
}
