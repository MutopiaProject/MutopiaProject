\version "2.16.1"
\include "clementi-op42-mus-L46-couperin.ily"

% LESSON XLVI.  March by Couperin.

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "upper" { \clef treble \global \LessonXLVIUpper }
    \new Staff = "lower" { \clef bass \global \LessonXLVILower }
  >>
  \layout{
    \context {
	  \PianoStaff
	  \consists #Span_stem_engraver
    }
  }
}
