\version "2.16.1"
\include "clementi-op42-mus-L41-corelli.ily"

% LESSON XLI. Giga, by Corelli.

\score { 
	  \new PianoStaff 
	  \unfoldRepeats
	  <<
	    \new Staff  = "upper"  \with {
		    \consists "Bar_number_engraver"
	    }{
		    \set Staff.timeSignatureFraction = #'(12 . 8)
		    \scaleDurations #'(2 . 3) {
		    \LessonXLIUpperB
		    }
	    }
	    \new Staff = "lower" \with {\consists "Bar_number_engraver"}  \LessonXLILowerB
	  >>
	  \layout{
	  	  \context {
		    \Score
		    \remove "Bar_number_engraver"
		  }
		  \context {
		    \Voice
		    \remove "Forbid_line_break_engraver"
		    tupletFullLength = ##t
		  }
	  } 
}
