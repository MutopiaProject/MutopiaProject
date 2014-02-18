\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L12-mozart.ily"

% LESSON XII. Arietta by Mozart.

\book {   \bookOutputName "clementi-op42-les12-mozart-arietta"
  \score{ % LESSON XII: Andante. MIDI
	 \new PianoStaff <<
	    \new Staff = "upper" \LessonXIIUpperMIDI
	    \new Staff = "lower" \LessonXIILowerMIDI
	 >>
	\midi { }
  }
}
