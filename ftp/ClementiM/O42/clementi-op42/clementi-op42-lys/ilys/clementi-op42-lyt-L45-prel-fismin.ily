\version "2.16.1"
\include "clementi-op42-mus-L45-prel-fismin.ily"

% LESSON XLIV. Prelude in F # Minor.

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \clef treble \global \LessonXLVUpperPrel }
	  	  \new Staff = "lower" { \clef bass \global \LessonXLVLowerPrel }
	  >>
	  \layout { }
}
