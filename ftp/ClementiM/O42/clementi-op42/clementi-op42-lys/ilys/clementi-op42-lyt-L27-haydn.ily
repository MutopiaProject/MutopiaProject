\version "2.16.1"
\include "clementi-op42-mus-L27-haydn.ily"

% LESSON XXVII. God Save the Emperor. Composed by Dr. Haydn.

\score{
	  \new PianoStaff
	  <<
		    \new Staff  = "upper" \with { \consists "Span_arpeggio_engraver" }
			\LessonXXVIIUpper 
		    \new Staff = "lower" \with { \consists "Span_arpeggio_engraver" } 
		        \LessonXXVIILower 
	  >>
	  \layout { 
	    system-count = #3
	  }
}
