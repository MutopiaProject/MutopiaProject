\version "2.16.1"
\include "clementi-op42-mus-L24-dussek.ily"

% LESSON XXIV.  Andantino, ma Moderato e con espressione, by Dussek.

\score {
	  \new PianoStaff
	  <<
		    \new Staff = "upper" \with {\consists "Span_arpeggio_engraver"}
		    \LessonXXIVUpper  
		    \new Staff = "lower"
		     \LessonXXIVLower 
	  >>
	  \layout { 
	    system-count = #6
	  }
}
