\version "2.16.1"
\include "clementi-op42-mus-L35-prel-gmin.ily"

% LESSON XXXV. Prelude in G Minor.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVUpperA
		    \new Staff = "lower" \LessonXXXVLowerA
	  >>
	  \layout{\context { \Staff \consists "Span_arpeggio_engraver"}}
}
