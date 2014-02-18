\version "2.16.1"
%\include "articulate.ly"
\include "clementi-op42-mus-L32-mozart-minuet.ily"

% LESSON XXXII.  Minuet and Trio by Mozart.

\book {   \bookOutputName "clementi-op42-les32-mozart-minuet"
  \score {
	\unfoldRepeats %\articulate  - the articulate script causes bar-checks to fail and misaligned timing in MIDI
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXIIUpperA
		    \new Staff = "lower" \LessonXXXIILowerA
	  >>
	  \midi { }
  }
}
