\version "2.16.1"
\include "clementi-op42-mus-L47-couperin.ily"

% LESSON XLVII.  Allegretto by Couperin.

\score {
	  \new PianoStaff <<
	  	    \set PianoStaff.connectArpeggios = ##t
		    \new Staff = "upper" { \clef treble \global \LessonXLVIIUpper }
		    \new Staff = "lower" { \clef bass \global \LessonXLVIILower }
	  >>
	  \layout{ }
}
