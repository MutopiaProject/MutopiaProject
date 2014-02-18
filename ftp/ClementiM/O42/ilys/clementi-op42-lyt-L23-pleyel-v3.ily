\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v3.ily"

% LESSON XXIII. German Hymn - Variation 3, by Pleyel.

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
			\column { \center-align "Variat."
				\line {\center-align "III"} } }
		    \new Staff = "upper" \LessonXXIIIUpperD
		    \new Staff = "lower" \LessonXXIIILowerD
	  >>
	  \layout { 
	    system-count = #6
	  }
}
