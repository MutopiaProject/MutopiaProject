\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L13-mozart-minuet.ily"

% LESSON XIII. Minuet and Trio, by Mozart.  MINUET

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Minuet"
	\new Staff = "upper" \LessonXIIIUpperA
	\new Staff = "lower" \LessonXIIILowerA
   >>
  \layout {
    indent = 15\mm
  }
}
