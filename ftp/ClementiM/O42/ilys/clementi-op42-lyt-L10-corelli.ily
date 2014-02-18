\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L10-corelli.ily"

% LESSON X. Sarabanda by Corelli.

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonXUpper
	    \new Staff = "lower" \LessonXLower
	  >>
	\layout {
	  system-count = #4
	  indent = 0\mm
	}
}
