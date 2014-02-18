\version "2.16.1"
\include "clementi-op42-mus-L37-handel.ily"

% LESSON XXXVII. Minuet in Ariadne, by Handel.

\score {
  \new PianoStaff <<
	\set PianoStaff.connectArpeggios = ##t
	\new Staff = "upper" { \LessonXXXVIIUpperA \LessonXXXVIIUpperB }
	    \new Staff = "lower" \with { \consists "Mark_engraver" } 
	    {\LessonXXXVIILowerA \LessonXXXVIILowerB} 
  >>
  \layout { \context { \Staff \consists "Span_arpeggio_engraver" } }
}
