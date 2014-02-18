\version "2.16.1"
\include "clementi-op42-mus-L34-cramer-v1.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 1)

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
				\column { \center-align "Variat."
					\line {\center-align "I"} } }
		    \new Staff = "upper" \LessonXXXIVUpperB
		    \new Staff = "lower" \LessonXXXIVLowerB
	  >>
	  \layout { }
}
