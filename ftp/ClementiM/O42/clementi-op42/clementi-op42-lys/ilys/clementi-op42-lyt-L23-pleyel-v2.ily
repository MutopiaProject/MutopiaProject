\version "2.16.1"
\include "clementi-op42-mus-L23-pleyel-v2.ily"

% LESSON XXIII. German Hymn - Variation 2, by Pleyel.

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
			\column { \center-align "Variat."
				\line {\center-align "II"} } }
		    \new Staff = "upper" \LessonXXIIIUpperC
		    \new Staff = "lower" \LessonXXIIILowerC
	  >>
	  \layout { }
}
