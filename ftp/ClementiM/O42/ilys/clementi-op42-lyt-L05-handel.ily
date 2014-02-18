\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L05-handel.ily"

% LESSON V: Dead March in Saul de Handel.

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVUpper
	    \new Staff = "lower" \LessonVLower
	  >>
  \layout { }
}
