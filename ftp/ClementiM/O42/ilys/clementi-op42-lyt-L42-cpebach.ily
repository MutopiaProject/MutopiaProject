\version "2.16.1"
\include "clementi-op42-mus-L42-cpebach.ily"

%-----LESSON 42 - CPE Bach Rondo

\score {
  \new PianoStaff <<
	  \new Staff = "upper" { \LessonXLIIUpper }
	  \new Staff = "lower" { \LessonXLIILower }
  >>
	  
  \layout{
    \context {
      \PianoStaff 
      \consists #Span_stem_engraver
    }
  }
}
