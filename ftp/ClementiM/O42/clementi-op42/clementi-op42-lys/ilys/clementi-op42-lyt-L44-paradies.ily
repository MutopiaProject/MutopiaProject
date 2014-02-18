\version "2.16.1"

\include "clementi-op42-mus-L44-paradies.ily"

% LESSON XLIV. Andante Allegretto by Paradies.

\score {
  \new PianoStaff <<
	  \new Staff = "upper" { \clef treble \global \LessonXLIVsoprano }
	  \new Staff = "lower" \with { \consists "Mark_engraver" } 
		{ \clef bass \global \LessonXLIVbass }
  >>
	  
  \layout{
    \context {
      \PianoStaff 
      \consists #Span_stem_engraver
    }
  }
}
