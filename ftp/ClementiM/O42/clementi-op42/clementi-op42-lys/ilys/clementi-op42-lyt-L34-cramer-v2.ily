\version "2.16.1"
\include "clementi-op42-mus-L34-cramer-v2.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 2)

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
				\column { \center-align "Variat."
					\line {\center-align "II"} } }
		    \new Staff = "upper" \LessonXXXIVUpperC
		    \new Staff = "lower" \LessonXXXIVLowerC
	  >>
	  \layout { }
}
