\version "2.16.1"
\include "articulate.ly"
\include "clementi-op42-mus-L45-corelli.ily"

% LESSON XLIV. Adagio by Corelli (in F # Minor).

\book {   \bookOutputName "clementi-op42-les45-corelli-adag"
  \score {
	  \new PianoStaff \unfoldRepeats \articulate
	  <<
	  	  \new Staff = "upper" { \clef treble \global \LessonXLVUpper }
	  	  \new Staff = "lower" { \clef bass \global \LessonXLVLower }
	  >>
	  \midi { \tempo 2 = 64 }
  }
}
