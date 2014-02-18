\version "2.16.1"
\include "clementi-op42-mus-L36-prel-dmaj.ily"

% LESSON XXXVI. Prelude in D Major.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVIUpperA
		    \new Staff = "lower" \LessonXXXVILowerA
	  >>
	  \layout { \context { \Staff \consists "Span_arpeggio_engraver" } }
}
