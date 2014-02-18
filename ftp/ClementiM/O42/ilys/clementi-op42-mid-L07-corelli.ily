\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L07-corelli.ily"

% LESSON VII: Gavotta by Corelli

\book {   \bookOutputName "clementi-op42-les07-corelli-alleg"
  \score{ % LESSON VII: Gavotte MIDI
	\unfoldRepeats \articulate
	  \new PianoStaff <<
	    \new Staff = "upper" \LessonVIIUpper
	    \new Staff = "lower" \LessonVIILower
	  >>
	  \midi { }
  }
}
