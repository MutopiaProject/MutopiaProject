\version "2.16.1"
\include "clementi-op42-mus-L48-bach-minuet.ily"

% LESSON XLVIII. Minuet (E Maj) by Bach (BWV 817).

\book {   \bookOutputName "clementi-op42-les48-bach-minuet"
  \score {
	  \new PianoStaff
	  \with { instrumentName = \pieceLegend }
	  <<
	  	  \new Staff = "upper" { \global \LessonXLVIIIUpper }
	  	  \new Staff = "lower" { \global \LessonXLVIIILower }
	  >>
	  \midi { }
  }
}

