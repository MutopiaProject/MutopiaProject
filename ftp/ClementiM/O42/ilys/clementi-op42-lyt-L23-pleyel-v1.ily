\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v1.ily"

% LESSON XXIII. German Hymn - Variation 1, by Pleyel.

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
			\column { \center-align "Variat."
				\line {\center-align "I"}
			}
	  }
		    \new Staff = "upper" \LessonXXIIIUpperB
		    \new Staff = "lower" \LessonXXIIILowerB
	  >>
	  \layout { }
}
