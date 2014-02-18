\version "2.16.1"
\include "clementi-op42-mus-L34-cramer-v3.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 3)

\score {
	  \new PianoStaff <<
	  \set PianoStaff.instrumentName = \markup {
				\column { \center-align "Variat."
					\line {\center-align "III"} } }
		    \new Staff = "upper" \LessonXXXIVUpperD
		    \new Staff = "lower" \LessonXXXIVLowerD
	  >>
	  \layout { }
}
