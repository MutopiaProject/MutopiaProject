\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L06-corelli.ily"

% LESSON VI: Allegro by Corelli

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVIUpper
	    \new Staff = "lower" \LessonVILower
	  >>
	  \layout { }
}
