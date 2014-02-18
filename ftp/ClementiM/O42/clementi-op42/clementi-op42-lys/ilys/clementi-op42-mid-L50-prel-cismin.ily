\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L50-prel-cismin.ily"

% LESSON L. Prelude in C sharp minor.

\book {   \bookOutputName "clementi-op42-les50-prel-cismin"
  \score {
	  \new PianoStaff <<
	  	  \unfoldRepeats \articulate
	  	  \new Staff = "upper" { \global \LessonLPrelUpper }
	  	  \new Staff = "lower" { \global \LessonLPrelLower }
	  >>
	 \midi   { }
  }
}
