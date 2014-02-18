\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L05-handel.ily"

% LESSON V: Dead March in Saul de Handel.

\book {   \bookOutputName "clementi-op42-les05-handel-grave"
  \score{ % LESSON V: MIDI
	\unfoldRepeats \articulate
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVUpper
	    \new Staff = "lower" \LessonVLower
	  >>
    \midi { }
  }
}
