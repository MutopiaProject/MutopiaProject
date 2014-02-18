\version "2.16.1"
\include "clementi-op42-mus-L50-haydn.ily"

% LESSON L. Minuet by Haydn in C sharp minor.

\score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonLUpper }
	  	  \new Staff = "lower" { \global \LessonLLower }
	  >>
	  \layout {
	    \context {
                \PianoStaff
                \consists #Span_stem_engraver
            }
  	  }
}
