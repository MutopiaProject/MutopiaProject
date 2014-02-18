\version "2.16.1"
\include "clementi-op42-mus-L50-haydn.ily"

% LESSON L. Minuet by Haydn in C sharp minor.

\book {   \bookOutputName "clementi-op42-les50-haydn-minuet"
  \score {
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \global \LessonLUpper }
	  	  \new Staff = "lower" { \global \LessonLLower }
	  >>
  	  \midi { }
  }
}

