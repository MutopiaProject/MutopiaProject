\version "2.16.1"
\include "clementi-op42-mus-L13-mozart-trio.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  TRIO

\score {
  \new PianoStaff <<
	\set PianoStaff.instrumentName = #"Trio"
	\new Staff = "upper" \LessonXIIIUpperB 
	\new Staff = "lower" \LessonXIIILowerB
  >>
  \layout {
    indent = 10\mm
  }
}
